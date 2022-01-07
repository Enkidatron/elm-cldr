module Internal.Locale exposing
    ( DateTimeToken(..)
    , Internal
    , LanguageId(..)
    , Locale(..)
    , TimeToken(..)
    , convertDateTimeToken
    , convertToken
    , getPattern
    , languageIdFromString
    , normalize
    , toDateLanguage
    , toDateTimeLanguage
    , toUnicode
    )

import Date
import DateFormat exposing (..)
import DateFormat.Language
import Format.Length exposing (Length(..))
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
    , dateTokens : Patterns (List DateFormat.Token)
    , timeTokens : Patterns (List TimeToken)
    , amPmNames : AmPmNames
    , dateTimeTokens : Patterns (List DateTimeToken)
    , languageId : LanguageId
    }


type alias Patterns a =
    { short : a
    , medium : a
    , long : a
    , full : a
    }


getPattern : Patterns a -> Length -> a
getPattern patterns length =
    case length of
        Short ->
            patterns.short

        Medium ->
            patterns.medium

        Long ->
            patterns.long

        Full ->
            patterns.full


type alias MonthNames =
    { jan : String
    , feb : String
    , mar : String
    , apr : String
    , may : String
    , jun : String
    , jul : String
    , aug : String
    , sep : String
    , oct : String
    , nov : String
    , dec : String
    }


type alias WeekdayNames =
    { sun : String
    , mon : String
    , tue : String
    , wed : String
    , thu : String
    , fri : String
    , sat : String
    }


type alias AmPmNames =
    { am : String
    , pm : String
    }


type TimeToken
    = DF DateFormat.Token
    | TimeZoneShort
    | TimeZoneFull


convertToken : Time.Zone -> TimeToken -> DateFormat.Token
convertToken zone token =
    case token of
        DF dfToken ->
            dfToken

        TimeZoneShort ->
            getOffsets zone |> shortGmtFormat |> DateFormat.text

        TimeZoneFull ->
            getOffsets zone |> fullGmtFormat |> DateFormat.text


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

        TimeGoesHere ->
            getPattern internal.timeTokens time
                |> List.map (convertToken zone)

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
    | Lang LangSubtag (Maybe ScriptSubtag) (Maybe RegionSubtag)


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


toUnicode : Internal -> String
toUnicode internal =
    languageIdToUnicode internal.languageId


languageIdToUnicode : LanguageId -> String
languageIdToUnicode lang =
    case lang of
        Root ->
            "root"

        Lang langTag maybeScript maybeRegion ->
            [ Just (Tagged.untag langTag |> String.toLower)
            , Maybe.map Tagged.untag maybeScript
            , Maybe.map (Tagged.untag >> String.toUpper) maybeRegion
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
                        if len >= 2 && len <= 3 then
                            Parser.succeed words

                        else
                            Parser.problem "a region subtag must have 2-3 characters"
                    )
           )
        |> Parser.backtrackable


normalize : LanguageId -> LanguageId
normalize langId =
    case langId of
        Root ->
            Root

        Lang langTag maybeScript maybeRegion ->
            Lang (Tagged.map String.toLower langTag)
                (Maybe.map (Tagged.map String.Extra.toTitleCase) maybeScript)
                (Maybe.map (Tagged.map String.toUpper) maybeRegion)
