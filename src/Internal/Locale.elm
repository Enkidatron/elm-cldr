module Internal.Locale exposing
    ( DateTimeToken(..)
    , Internal
    , LanguageId(..)
    , Locale(..)
    , TimeToken(..)
    , convertDateTimeToken
    , convertToken
    , languageIdFromString
    , languageIdSimilarity
    , matchNearestLocale
    , normalize
    , toDateLanguage
    , toDateTimeLanguage
    , toUnicode
    )

import Cldr.Format.Length exposing (Length(..))
import Date
import DateFormat exposing (..)
import DateFormat.Language
import Internal.Structures exposing (..)
import Parser exposing ((|.), (|=), Parser)
import String.Extra
import Tagged exposing (Tagged(..))
import Time exposing (Month(..), Weekday(..))


type Locale
    = Locale Internal


type alias Internal =
    { datePatterns : Patterns String
    , monthNames : MonthNames
    , monthNamesShort : MonthNames
    , weekdayNames : WeekdayNames
    , weekdayNamesShort : WeekdayNames
    , dateTokens : Patterns (List TimeToken)
    , timeTokens : Patterns (List TimeToken)
    , amPmNames : AmPmNames
    , eraNames : EraNames
    , dateTimeTokens : Patterns (List DateTimeToken)
    , languageId : LanguageId
    }


type TimeToken
    = DF DateFormat.Token
    | TimeZoneShort
    | TimeZoneFull
    | EraAbbr


convertToken : EraNames -> Time.Zone -> TimeToken -> DateFormat.Token
convertToken { ad } zone token =
    case token of
        DF dfToken ->
            dfToken

        TimeZoneShort ->
            getOffsets zone |> shortGmtFormat |> DateFormat.text

        TimeZoneFull ->
            getOffsets zone |> fullGmtFormat |> DateFormat.text

        EraAbbr ->
            DateFormat.text ad


type DateTimeToken
    = DateGoesHere
    | TimeGoesHere
    | Text String


type alias DateTimeTokenConvertInfo =
    { internal : Internal
    , zone : Time.Zone
    , date : Length
    , time : Length
    }


convertDateTimeToken : DateTimeTokenConvertInfo -> DateTimeToken -> List DateFormat.Token
convertDateTimeToken { internal, zone, date, time } token =
    case token of
        DateGoesHere ->
            getPattern internal.dateTokens date
                |> List.map (convertToken internal.eraNames zone)

        TimeGoesHere ->
            getPattern internal.timeTokens time
                |> List.map (convertToken internal.eraNames zone)

        Text words ->
            [ DateFormat.text words ]


type alias Offsets =
    { offsetIsPositive : Bool
    , hours : Int
    , minutes : Int
    , seconds : Int
    }


getOffsets : Time.Zone -> Offsets
getOffsets zone =
    let
        referenceTime =
            Time.millisToPosix 946684800000
    in
    if Time.toYear zone referenceTime < 2000 then
        { offsetIsPositive = False
        , hours = ((31 - Time.toDay zone referenceTime) * 24) + (24 - Time.toHour zone referenceTime)
        , minutes = 60 - Time.toMinute zone referenceTime |> remainderBy 60
        , seconds = 60 - Time.toSecond zone referenceTime |> remainderBy 60
        }

    else
        { offsetIsPositive = True
        , hours = ((Time.toDay zone referenceTime - 1) * 24) + Time.toHour zone referenceTime
        , minutes = Time.toMinute zone referenceTime
        , seconds = Time.toSecond zone referenceTime
        }


shortGmtFormat : Offsets -> String
shortGmtFormat offsets =
    let
        hasHoursOrLess =
            offsets.hours /= 0 || offsets.minutes /= 0 || offsets.seconds /= 0

        hasMinutesOrLess =
            offsets.minutes /= 0 || offsets.seconds /= 0

        hasSeconds =
            offsets.seconds /= 0
    in
    [ ( True, "GMT" )
    , ( hasHoursOrLess && offsets.offsetIsPositive, "+" )
    , ( hasHoursOrLess && not offsets.offsetIsPositive, "-" )
    , ( hasHoursOrLess, String.fromInt offsets.hours )
    , ( hasMinutesOrLess, ":" )
    , ( hasMinutesOrLess, String.fromInt offsets.minutes |> String.padLeft 2 '0' )
    , ( hasSeconds, ":" )
    , ( hasSeconds, String.fromInt offsets.seconds |> String.padLeft 2 '0' )
    ]
        |> List.filter Tuple.first
        |> List.map Tuple.second
        |> String.concat


fullGmtFormat : Offsets -> String
fullGmtFormat offsets =
    let
        hasHoursOrLess =
            offsets.hours /= 0 || offsets.minutes /= 0 || offsets.seconds /= 0

        hasSeconds =
            offsets.seconds /= 0
    in
    [ ( True, "GMT" )
    , ( hasHoursOrLess && offsets.offsetIsPositive, "+" )
    , ( hasHoursOrLess && not offsets.offsetIsPositive, "-" )
    , ( hasHoursOrLess, String.fromInt offsets.hours )
    , ( hasHoursOrLess, ":" )
    , ( hasHoursOrLess, String.fromInt offsets.minutes |> String.padLeft 2 '0' )
    , ( hasSeconds, ":" )
    , ( hasSeconds, String.fromInt offsets.seconds |> String.padLeft 2 '0' )
    ]
        |> List.filter Tuple.first
        |> List.map Tuple.second
        |> String.concat


toDateLanguage : Internal -> Date.Language
toDateLanguage internal =
    { monthName = monthFun internal.monthNames
    , monthNameShort = monthFun internal.monthNamesShort
    , weekdayName = weekdayFun internal.weekdayNames
    , weekdayNameShort = weekdayFun internal.weekdayNamesShort
    , dayWithSuffix = String.fromInt
    }


toDateTimeLanguage : Internal -> DateFormat.Language.Language
toDateTimeLanguage internal =
    { toMonthName = monthFun internal.monthNames
    , toMonthAbbreviation = monthFun internal.monthNamesShort
    , toWeekdayName = weekdayFun internal.weekdayNames
    , toWeekdayAbbreviation = weekdayFun internal.weekdayNamesShort
    , toAmPm = amPmFun internal.amPmNames
    , toOrdinalSuffix = always ""
    }


monthFun : MonthNames -> Month -> String
monthFun names month =
    case month of
        Jan ->
            names.jan

        Feb ->
            names.feb

        Mar ->
            names.mar

        Apr ->
            names.apr

        May ->
            names.may

        Jun ->
            names.jun

        Jul ->
            names.jul

        Aug ->
            names.aug

        Sep ->
            names.sep

        Oct ->
            names.oct

        Nov ->
            names.nov

        Dec ->
            names.dec


weekdayFun : WeekdayNames -> Weekday -> String
weekdayFun names weekday =
    case weekday of
        Sun ->
            names.sun

        Mon ->
            names.mon

        Tue ->
            names.tue

        Wed ->
            names.wed

        Thu ->
            names.thu

        Fri ->
            names.fri

        Sat ->
            names.sat


amPmFun : AmPmNames -> Int -> String
amPmFun names hour =
    if hour > 11 then
        names.pm

    else
        names.am


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


toUnicode : Internal -> String
toUnicode internal =
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
