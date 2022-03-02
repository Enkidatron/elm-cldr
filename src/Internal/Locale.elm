module Internal.Locale exposing
    ( AvailableFormat(..)
    , DateAvailableFormat
    , DateTimeAvailableFormat
    , DateTimeToken(..)
    , Internal
    , LanguageId(..)
    , Locale(..)
    , TimeAvailableFormat
    , languageIdFromString
    , languageIdSimilarity
    , matchNearestLocale
    , normalize
    , toDateAvailableFormat
    , toDateTimeAvailableFormat
    , toTimeAvailableFormat
    , toUnicode
    )

import Cldr.Format.Length exposing (Length(..))
import Cldr.Format.Options exposing (DateOptions, DateTimeOptions)
import Internal.DayPeriodRule exposing (DayPeriodRule)
import Internal.FormatSymbols as Sym
import Internal.Options exposing (TimeOptions)
import Internal.Structures exposing (..)
import Parser exposing ((|.), (|=), Parser)
import String.Extra
import Tagged exposing (Tagged(..))
import Time exposing (Month(..), Weekday(..))


type Locale
    = Locale Internal


type alias Internal =
    { monthFormatNames : Pattern3 MonthNames
    , monthStandaloneNames : Pattern3 MonthNames
    , weekdayFormatNames : Pattern3 WeekdayNames
    , weekdayStandaloneNames : Pattern3 WeekdayNames
    , eraNames : Pattern3 EraNames
    , periodNames : Pattern3 PeriodNames
    , dayPeriodRuleSet : List DayPeriodRule
    , dateSymbols : Patterns (List Sym.DateWithLiteral)
    , timeSymbols : Patterns (List Sym.TimeWithLiteral)
    , dateTimeTokens : Patterns (List DateTimeToken)
    , languageId : LanguageId
    , availableFormats : List AvailableFormat
    , hour12ByDefault : Bool
    }


type DateTimeToken
    = DateGoesHere
    | TimeGoesHere
    | Text String


type LanguageId
    = Root
    | Lang LangSubtag (Maybe ScriptSubtag) (Maybe RegionSubtag) (Maybe VariantSubtag)


type alias LangSubtag =
    Tagged LangSubtagFlag String


type LangSubtagFlag
    = LangSubtagFlag


type alias ScriptSubtag =
    Tagged ScriptSubtagFlag String


type ScriptSubtagFlag
    = ScriptSubtagFlag


type alias RegionSubtag =
    Tagged RegionSubtagFlag String


type RegionSubtagFlag
    = RegionSubtagFlag


type alias VariantSubtag =
    Tagged VariantSubtagFlag String


type VariantSubtagFlag
    = VariantSubtagFlag


toUnicode : Locale -> String
toUnicode (Locale internal) =
    languageIdToUnicode internal.languageId


languageIdToUnicode : LanguageId -> String
languageIdToUnicode lang =
    case lang of
        Root ->
            "root"

        Lang langTag maybeScript maybeRegion maybeVariant ->
            [ Just (Tagged.untag langTag |> String.toLower)
            , Maybe.map Tagged.untag maybeScript
            , Maybe.map (Tagged.untag >> String.toUpper) maybeRegion
            , Maybe.map (Tagged.untag >> String.toLower) maybeVariant
            ]
                |> List.filterMap identity
                |> String.join "-"


languageIdFromString : String -> Maybe LanguageId
languageIdFromString words =
    Parser.run languageIdParser words
        |> Result.toMaybe


languageIdParser : Parser LanguageId
languageIdParser =
    Parser.oneOf [ rootParser, langParser ]


rootParser : Parser LanguageId
rootParser =
    Parser.succeed Root
        |. Parser.keyword "root"
        |. Parser.end


langParser : Parser LanguageId
langParser =
    Parser.succeed Lang
        |= langSubtagParser
        |= maybeParse scriptSubtagParser
        |= maybeParse regionSubtagParser
        |= maybeParse variantSubtagParser


langSubtagParser : Parser LangSubtag
langSubtagParser =
    Parser.succeed Tagged.tag
        |= (Parser.getChompedString (Parser.chompWhile Char.isAlpha)
                |> Parser.andThen
                    (\words ->
                        let
                            len =
                                String.length words
                        in
                        if (len >= 2 && len <= 3) || (len >= 5 && len <= 8) then
                            Parser.succeed words

                        else
                            Parser.problem "a language subtag must have 2-3 or 5-8 characters"
                    )
           )


sepParser : Parser ()
sepParser =
    Parser.chompIf (\char -> char == '-' || char == '_')


maybeParse : Parser a -> Parser (Maybe a)
maybeParse innerParser =
    Parser.oneOf
        [ Parser.map Just innerParser
        , Parser.succeed Nothing
        ]


scriptSubtagParser : Parser ScriptSubtag
scriptSubtagParser =
    Parser.succeed Tagged.tag
        |. sepParser
        |= (Parser.getChompedString (Parser.chompWhile Char.isAlpha)
                |> Parser.andThen
                    (\words ->
                        if String.length words == 4 then
                            Parser.succeed words

                        else
                            Parser.problem "a script subtag must have 4 characters"
                    )
           )
        |> Parser.backtrackable


regionSubtagParser : Parser RegionSubtag
regionSubtagParser =
    Parser.succeed Tagged.tag
        |. sepParser
        |= (Parser.getChompedString (Parser.chompWhile Char.isAlphaNum)
                |> Parser.andThen
                    (\words ->
                        let
                            len =
                                String.length words
                        in
                        if len == 2 && List.all Char.isAlpha (String.toList words) then
                            Parser.succeed words

                        else if len == 3 && List.all Char.isDigit (String.toList words) then
                            Parser.succeed words

                        else
                            Parser.problem "a region subtag must have 2-3 characters"
                    )
           )
        |> Parser.backtrackable


variantSubtagParser : Parser VariantSubtag
variantSubtagParser =
    Parser.succeed Tagged.tag
        |. sepParser
        |= (Parser.getChompedString (Parser.chompWhile Char.isAlpha)
                |> Parser.andThen
                    (\words ->
                        if isValidVariant words then
                            Parser.succeed words

                        else
                            Parser.problem ("'" ++ words ++ "' is not a valid variantn subtag")
                    )
           )


isValidVariant : String -> Bool
isValidVariant words =
    case String.toList words of
        first :: second :: third :: fourth :: [] ->
            Char.isDigit first && List.all Char.isAlphaNum [ second, third, fourth ]

        _ ->
            let
                length =
                    String.length words
            in
            (length >= 5) && (length <= 8) && List.all Char.isAlphaNum (String.toList words)


normalize : LanguageId -> LanguageId
normalize langId =
    case langId of
        Root ->
            Root

        Lang langTag maybeScript maybeRegion maybeVariant ->
            Lang (Tagged.map String.toLower langTag)
                (Maybe.map (Tagged.map String.Extra.toTitleCase) maybeScript)
                (Maybe.map (Tagged.map String.toUpper) maybeRegion)
                (Maybe.map (Tagged.map String.toUpper) maybeVariant)


matchNearestLocale : List Locale -> LanguageId -> Maybe Locale
matchNearestLocale locales langId =
    locales
        |> List.map unwrapLocale
        |> List.filter (.languageId >> languageIdNoConflicts langId)
        |> List.sortBy (.languageId >> languageIdSimilarity langId)
        |> List.head
        |> Maybe.map Locale


unwrapLocale : Locale -> Internal
unwrapLocale (Locale internal) =
    internal


languageIdNoConflicts : LanguageId -> LanguageId -> Bool
languageIdNoConflicts langA langB =
    case ( langA, langB ) of
        ( Root, Root ) ->
            True

        ( Lang tagA scriptTagA regionTagA variantTagA, Lang tagB scriptTagB regionTagB variantTagB ) ->
            (tagA == tagB)
                && (Maybe.map2 (==) scriptTagA scriptTagB |> Maybe.withDefault True)
                && (Maybe.map2 (==) regionTagA regionTagB |> Maybe.withDefault True)
                && (Maybe.map2 (==) variantTagA variantTagB |> Maybe.withDefault True)

        _ ->
            False


languageIdSimilarity : LanguageId -> LanguageId -> Int
languageIdSimilarity requested checked =
    case ( requested, checked ) of
        ( Root, Root ) ->
            -1 * 10 ^ 4

        ( Lang langTagA scriptTagA regionTagA variantTagA, Lang langTagB scriptTagB regionTagB variantTagB ) ->
            let
                langPoints =
                    if langTagA == langTagB then
                        10 ^ 4

                    else
                        0

                scriptPoints =
                    similarityHelper (10 ^ 3) scriptTagA scriptTagB

                regionPoints =
                    similarityHelper (10 ^ 2) regionTagA regionTagB

                variantPoints =
                    similarityHelper (10 ^ 1) variantTagA variantTagB
            in
            (langPoints + scriptPoints + regionPoints + variantPoints) * -1

        _ ->
            0


similarityHelper : Int -> Maybe a -> Maybe a -> Int
similarityHelper points requested checked =
    case ( requested, checked ) of
        ( Nothing, Nothing ) ->
            2 * points

        ( Just req, Just chck ) ->
            if req == chck then
                2 * points

            else
                0

        ( Just _, Nothing ) ->
            points

        ( Nothing, Just _ ) ->
            points



-- AvailableFormats


type AvailableFormat
    = DateTimeAF DateTimeAvailableFormat
    | TimeAF TimeAvailableFormat
    | DateAF DateAvailableFormat


type alias DateTimeAvailableFormat =
    { options : DateTimeOptions, 
    formatSymbols : List Sym.FormatWithLiteral }


type alias TimeAvailableFormat =
    { options : TimeOptions, 
    formatSymbols : List Sym.TimeWithLiteral }


type alias DateAvailableFormat =
    { options : DateOptions, 
    formatSymbols : List Sym.DateWithLiteral }


toDateTimeAvailableFormat : AvailableFormat -> DateTimeAvailableFormat
toDateTimeAvailableFormat af =
    case af of
        DateTimeAF format ->
            format

        TimeAF { options, formatSymbols } ->
            { options = Internal.Options.timeToDateTime options
            , formatSymbols = List.map (Sym.mapLiteral Sym.Time) formatSymbols
            }

        DateAF { options, formatSymbols } ->
            { options = Internal.Options.dateToDateTime options
            , formatSymbols = List.map (Sym.mapLiteral Sym.Date) formatSymbols
            }


toDateAvailableFormat : AvailableFormat -> Maybe DateAvailableFormat
toDateAvailableFormat af =
    case af of
        DateAF format ->
            Just format

        DateTimeAF _ ->
            Nothing

        TimeAF _ ->
            Nothing


toTimeAvailableFormat : AvailableFormat -> Maybe TimeAvailableFormat
toTimeAvailableFormat af =
    case af of
        TimeAF format ->
            Just format

        DateTimeAF _ ->
            Nothing

        DateAF _ ->
            Nothing
