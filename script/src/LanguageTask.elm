module LanguageTask exposing (task)

import BackendTask exposing (BackendTask)
import BackendTask.File
import Constants exposing (..)
import DayPeriodsInfo exposing (DayPeriodsInfo)
import Dict exposing (Dict)
import Elm
import Elm.Annotation
import Elm.Arg
import Elm.Op
import FatalError exposing (FatalError)
import Gen.Dict
import Gen.Internal.DayPeriodRule
import Gen.Internal.Locale
import Gen.Internal.Parse
import Gen.Internal.Structures
import Gen.Maybe
import Internal.DayPeriodRule exposing (DayPeriodRule)
import Internal.LanguageInfo exposing (LanguageInfo)
import Internal.LanguageInfo.Encode
import Internal.Structures exposing (EraNames, MonthNames, Pattern3, Patterns, PeriodNames, WeekdayNames)
import Json.Decode as JD exposing (Decoder)
import Json.Encode as JE
import LanguageInfo.Extra exposing (snakeIdentifier)
import List.Extra
import Pages.Script as Script
import Script.Extra exposing (withMessage)
import String.Extra


task : BackendTask FatalError ()
task =
    getAllInfo |> BackendTask.andThen writeAllFiles


type alias AllInfo =
    { dayPeriodsInfo : DayPeriodsInfo
    , languageBundles : List LanguageBundle
    }


type alias LanguageBundle =
    ( String, List LanguageInfo )


getAllInfo : BackendTask FatalError AllInfo
getAllInfo =
    BackendTask.map2 AllInfo
        getDayPeriodsInfo
        getLanguageBundles


getDayPeriodsInfo : BackendTask FatalError DayPeriodsInfo
getDayPeriodsInfo =
    BackendTask.File.jsonFile DayPeriodsInfo.decoder dayPeriodsFilePath
        |> BackendTask.allowFatal
        |> withMessage "Loading day periods info"


getLanguageBundles : BackendTask FatalError (List LanguageBundle)
getLanguageBundles =
    getModernLanguageList
        |> BackendTask.andThen (List.map getLanguageInfo >> BackendTask.combine)
        |> BackendTask.map (List.Extra.gatherEqualsBy .language >> List.map (\( first, rest ) -> ( first.language, first :: rest )))
        |> withMessage "Loading language bundles"


getModernLanguageList : BackendTask FatalError (List String)
getModernLanguageList =
    BackendTask.File.jsonFile modernFilesDecoder coverageLevelsFilePath
        |> BackendTask.allowFatal
        |> withMessage "Loading modern language list"


modernFilesDecoder : Decoder (List String)
modernFilesDecoder =
    JD.field "effectiveCoverageLevels" (JD.keyValuePairs JD.string)
        |> JD.map (List.filter (\( _, val ) -> val == "modern"))
        |> JD.map (List.map Tuple.first)


getLanguageInfo : String -> BackendTask FatalError LanguageInfo
getLanguageInfo name =
    let
        combineJson gregorian number currency =
            JE.object
                [ ( "gregorian", gregorian )
                , ( "numbers", number )
                , ( "currencies", currency )
                ]
    in
    BackendTask.map3 combineJson
        (BackendTask.File.jsonFile JD.value (gregorianFilePathForLanguage name) |> BackendTask.allowFatal)
        (BackendTask.File.jsonFile JD.value (numberFilePathForLanguage name) |> BackendTask.allowFatal)
        (BackendTask.File.jsonFile JD.value (currencyFilePathForLanguage name) |> BackendTask.allowFatal)
        |> BackendTask.andThen (makeLanguageInfo name)
        |> withMessage ("Loading language info for " ++ name)


makeLanguageInfo : String -> JD.Value -> BackendTask FatalError LanguageInfo
makeLanguageInfo name json =
    JD.decodeValue (LanguageInfo.Extra.decoder name) json
        |> BackendTask.fromResult
        |> BackendTask.mapError (JD.errorToString >> FatalError.fromString)



-- Writing files


writeAllFiles : AllInfo -> BackendTask FatalError ()
writeAllFiles info =
    BackendTask.doEach
        [ writeLanguageBundles info
        , writeMainLocaleFile info.languageBundles
        ]


writeLanguageBundles : AllInfo -> BackendTask FatalError ()
writeLanguageBundles info =
    List.map (writeLanguageBundle info.dayPeriodsInfo) info.languageBundles
        |> BackendTask.doEach
        |> withMessage "Writing language bundles"


writeLanguageBundle : DayPeriodsInfo -> LanguageBundle -> BackendTask FatalError ()
writeLanguageBundle dayPeriods ( name, languageInfos ) =
    Script.writeFile
        { path = generatedFilenameForLanguage name
        , body = languageFile name dayPeriods languageInfos
        }
        |> BackendTask.allowFatal
        |> withMessage ("Writing language bundle for " ++ name)


writeMainLocaleFile : List LanguageBundle -> BackendTask FatalError ()
writeMainLocaleFile bundles =
    Script.writeFile
        { path = generatedFilenameForMainLocale
        , body = mainLocaleFile bundles
        }
        |> BackendTask.allowFatal
        |> withMessage "Writing main locale file"



-- Code generation
-- Locale Files


languageFile : String -> DayPeriodsInfo -> List LanguageInfo -> String
languageFile lang dayPeriods infos =
    Elm.fileWith [ "Generated", String.Extra.toTitleCase lang ]
        { docs = ""
        , aliases = []
        }
        (dayPeriodRuleDeclaration lang dayPeriods :: List.map localeFileDeclaration infos)
        |> .contents


localeFileDeclaration : LanguageInfo -> Elm.Declaration
localeFileDeclaration info =
    Gen.Maybe.withDefault
        Gen.Internal.Locale.empty
        (Gen.Internal.Parse.parse
            (Elm.val "dayPeriods")
            (Internal.LanguageInfo.Encode.encode (Internal.LanguageInfo.compact info))
        )
        |> Elm.withType Gen.Internal.Locale.annotation_.locale
        |> Elm.declaration (snakeIdentifier info)
        |> Elm.withDocumentation (commentForLanguage info)
        |> Elm.expose


commentForLanguage : LanguageInfo -> String
commentForLanguage info =
    String.concat
        [ "Date format strings:"
        , "\n- Short : "
        , info.datePatterns.short
        , "\n- Medium : "
        , info.datePatterns.medium
        , "\n- Long : "
        , info.datePatterns.long
        , "\n- Full : "
        , info.datePatterns.full
        , "\n\nTime format strings:"
        , "\n- Short : "
        , info.timePatterns.short
        , "\n- Medium : "
        , info.timePatterns.medium
        , "\n- Long : "
        , info.timePatterns.long
        , "\n- Full : "
        , info.timePatterns.full
        ]


dayPeriodRuleDeclaration : String -> DayPeriodsInfo -> Elm.Declaration
dayPeriodRuleDeclaration lang dayPeriods =
    let
        getSimpleLang : String -> String
        getSimpleLang =
            String.split "-" >> List.head >> Maybe.withDefault ""

        lowerLang =
            String.toLower lang
    in
    Gen.Dict.fromList
        (Dict.toList dayPeriods
            |> List.filter (Tuple.first >> getSimpleLang >> (==) lowerLang)
            |> List.map
                (\( ruleLangTag, rules ) ->
                    Elm.tuple
                        (Elm.string (String.Extra.underscored ruleLangTag))
                        (Elm.list (List.map dayPeriodRuleExpr rules))
                )
        )
        |> Elm.withType (Gen.Dict.annotation_.dict Elm.Annotation.string (Elm.Annotation.list Gen.Internal.DayPeriodRule.annotation_.dayPeriodRule))
        |> Elm.declaration "dayPeriods"


dayPeriodRuleExpr : DayPeriodRule -> Elm.Expression
dayPeriodRuleExpr rule =
    case rule of
        Internal.DayPeriodRule.At at name ->
            Gen.Internal.DayPeriodRule.make_.at
                (hourMinuteExpr at)
                (Elm.string name)

        Internal.DayPeriodRule.FromBefore from before name ->
            Gen.Internal.DayPeriodRule.make_.fromBefore
                (hourMinuteExpr from)
                (hourMinuteExpr before)
                (Elm.string name)


hourMinuteExpr : ( Int, Int ) -> Elm.Expression
hourMinuteExpr ( hour, minute ) =
    Elm.tuple (Elm.int hour) (Elm.int minute)


patternExpr : (a -> Elm.Expression) -> Patterns a -> Elm.Expression
patternExpr f pattern =
    Internal.Structures.mapPattern f pattern
        |> Gen.Internal.Structures.make_.patterns


monthNamesExpr : MonthNames -> Elm.Expression
monthNamesExpr names =
    Gen.Internal.Structures.make_.monthNames
        { jan = Elm.string names.jan
        , feb = Elm.string names.feb
        , mar = Elm.string names.mar
        , apr = Elm.string names.apr
        , may = Elm.string names.may
        , jun = Elm.string names.jun
        , jul = Elm.string names.jul
        , aug = Elm.string names.aug
        , sep = Elm.string names.sep
        , oct = Elm.string names.oct
        , nov = Elm.string names.nov
        , dec = Elm.string names.dec
        }


weekdayNamesExpr : WeekdayNames -> Elm.Expression
weekdayNamesExpr names =
    Gen.Internal.Structures.make_.weekdayNames
        { sun = Elm.string names.sun
        , mon = Elm.string names.mon
        , tue = Elm.string names.tue
        , wed = Elm.string names.wed
        , thu = Elm.string names.thu
        , fri = Elm.string names.fri
        , sat = Elm.string names.sat
        }


pattern3Expr : (a -> Elm.Expression) -> Pattern3 a -> Elm.Expression
pattern3Expr f pattern3 =
    Internal.Structures.mapPattern3 f pattern3
        |> Gen.Internal.Structures.make_.pattern3


eraNamesExpr : EraNames -> Elm.Expression
eraNamesExpr names =
    Gen.Internal.Structures.make_.eraNames
        { bc = Elm.string names.bc
        , ad = Elm.string names.ad
        }


periodNamesExpr : PeriodNames -> Elm.Expression
periodNamesExpr names =
    Gen.Internal.Structures.make_.periodNames
        { am = Elm.string names.am
        , pm = Elm.string names.pm
        , dayPeriods =
            Gen.Dict.fromList
                (Dict.toList names.dayPeriods
                    |> List.filter (Tuple.first >> (\k -> not (List.member k [ "am", "pm" ])))
                    |> List.map
                        (\( a, b ) -> Elm.tuple (Elm.string a) (Elm.string b))
                )
        }


maybeExpr : (a -> Elm.Expression) -> Maybe a -> Elm.Expression
maybeExpr toExpr maybeItem =
    case maybeItem of
        Just item ->
            Gen.Maybe.make_.just (toExpr item)

        Nothing ->
            Gen.Maybe.make_.nothing



-- Main locale file


mainLocaleFile : List LanguageBundle -> String
mainLocaleFile groupedInfos =
    Elm.fileWith [ "Cldr", "Locale" ]
        { docs = ""
        , aliases = []
        }
        (mainLocaleDeclarations groupedInfos)
        |> .contents


mainLocaleDeclarations : List LanguageBundle -> List Elm.Declaration
mainLocaleDeclarations bundles =
    let
        infos =
            List.concatMap Tuple.second bundles
    in
    [ Elm.group
        [ Elm.docs "# Locale"
        , localeTypeDeclaration
        ]
    , Elm.group
        [ Elm.docs "## Create"
        , fromStringDeclaration
        , Elm.group
            [ allLocalesDeclarationForMainLocale infos
            , basicLocalesDeclarationForMainLocale infos
            ]
        ]
    , Elm.group
        [ Elm.docs "## Convert"
        , toUnicodeDeclaration
        ]
    , Elm.group
        [ Elm.docs "## Locales by language"
        , Elm.group
            (List.map localeBundleInMainFileDeclaration bundles)
        ]
    ]


localeTypeDeclaration : Elm.Declaration
localeTypeDeclaration =
    Elm.alias "Locale"
        Gen.Internal.Locale.annotation_.locale
        |> Elm.withDocumentation localeTypeDocComment
        |> Elm.expose


localeTypeDocComment : String
localeTypeDocComment =
    String.join "\n"
        [ "Represents the locale to use for formatting."
        , ""
        , "You can parse a value from JS like `navigator.language` or use hardcoded locales."
        , ""
        ]


toUnicodeDeclaration : Elm.Declaration
toUnicodeDeclaration =
    Elm.fn (Elm.Arg.var "locale")
        (\locale ->
            Gen.Internal.Locale.toUnicode locale
        )
        |> Elm.declaration "toUnicode"
        |> Elm.withDocumentation toUnicodeDocComment
        |> Elm.expose


toUnicodeDocComment : String
toUnicodeDocComment =
    String.join "\n"
        [ "Get the [Unicode](https://unicode.org/reports/tr35/#Identifiers) representation of a locale."
        , ""
        , "    toUnicode en_GB"
        , "    --> \"en-GB\""
        ]


fromStringDeclaration : Elm.Declaration
fromStringDeclaration =
    Elm.fn2 (Elm.Arg.var "candidateLocales")
        (Elm.Arg.var "localeString")
        (\candidateLocales localeString ->
            Elm.apply Gen.Internal.Locale.values_.languageIdFromString [ localeString ]
                |> Elm.Op.pipe (Elm.apply Gen.Maybe.values_.andThen [ Elm.apply Gen.Internal.Locale.values_.matchNearestLocale [ candidateLocales ] ])
        )
        |> Elm.declaration "fromString"
        |> Elm.withDocumentation fromStringDocComment
        |> Elm.expose


fromStringDocComment : String
fromStringDocComment =
    String.join "\n"
        [ "Parse a `Locale` from a Unicode or BCP47 identifier."
        , ""
        , "    fromString basicLocales \"en\""
        , "    --> Just en"
        , ""
        , "    fromString allLocales \"en-GB\""
        , "    --> Just en_GB"
        ]


allLocalesDeclarationForMainLocale : List LanguageInfo -> Elm.Declaration
allLocalesDeclarationForMainLocale infos =
    Elm.list (List.map (snakeIdentifier >> Elm.val) infos)
        |> Elm.withType (Elm.Annotation.list localeAnnotation)
        |> Elm.declaration "allLocales"
        |> Elm.withDocumentation "A list of every locale listed in the JSON version of the CLDR."
        |> Elm.expose


basicLocalesDeclarationForMainLocale : List LanguageInfo -> Elm.Declaration
basicLocalesDeclarationForMainLocale infos =
    Elm.list (List.filterMap (basicLanguage >> Maybe.map (snakeIdentifier >> Elm.val)) infos)
        |> Elm.withType (Elm.Annotation.list localeAnnotation)
        |> Elm.declaration "basicLocales"
        |> Elm.withDocumentation basicLocalesDocComment
        |> Elm.expose


basicLanguage : LanguageInfo -> Maybe LanguageInfo
basicLanguage info =
    case ( info.script, info.territory, info.variant ) of
        ( Nothing, Nothing, Nothing ) ->
            Just info

        _ ->
            Nothing


basicLocalesDocComment : String
basicLocalesDocComment =
    [ """A list of every "basic" locale listed in the JSON version of the CLDR."""
    , """A "basic" locale is a locale without a region, script, or variant subtag, such as `en` or `ru`."""
    ]
        |> String.join "\n\n"


localeBundleInMainFileDeclaration : LanguageBundle -> Elm.Declaration
localeBundleInMainFileDeclaration ( name, infos ) =
    Elm.group
        [ Elm.docs ("### " ++ String.Extra.toTitleCase name)
        , Elm.group
            (List.map localeInMainFileDeclaration infos)
        ]


localeInMainFileDeclaration : LanguageInfo -> Elm.Declaration
localeInMainFileDeclaration info =
    Elm.value
        { importFrom = [ "Generated", String.Extra.toTitleCase info.language ]
        , name = snakeIdentifier info
        , annotation = Just localeAnnotation
        }
        |> Elm.declaration (snakeIdentifier info)
        |> Elm.withDocumentation (commentForLanguage info)
        |> Elm.expose


localeAnnotation : Elm.Annotation.Annotation
localeAnnotation =
    Elm.Annotation.named [] "Locale"
