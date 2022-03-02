module Cldr.Format.DateTime exposing
    ( format
    , FormatType(..)
    , short, medium, long, full
    )

{-|


# DateTime Formatting

@docs format


## Format Type

@docs FormatType
@docs short, medium, long, full

-}

import Cldr.Format.Length exposing (Length(..))
import Cldr.Format.Options exposing (DateOptions, DateTimeOptions)
import Date
import DateFormat
import Dict
import Internal.DayPeriodRule exposing (DayPeriodRule)
import Internal.Format
import Internal.FormatSymbols as Sym
import Internal.FormatSymbols.Expand as Expand
import Internal.Length
import Internal.Locale exposing (DateTimeToken(..), Locale(..))
import Internal.Options exposing (TimeOptions)
import Internal.Structures as Structs
import List.Extra
import Time exposing (Posix)


{-| The different combinations of date and time that can be formatted.
-}
type FormatType
    = DateOnly Length
    | TimeOnly Length
    | DateAndTime { date : Length, time : Length }
    | WithOptions DateTimeOptions


{-| Use `Short` for both date and time
-}
short : FormatType
short =
    DateAndTime { date = Short, time = Short }


{-| Use `Medium` for both date and time
-}
medium : FormatType
medium =
    DateAndTime { date = Medium, time = Medium }


{-| Use `Long` for both date and time
-}
long : FormatType
long =
    DateAndTime { date = Long, time = Long }


{-| Use `Full` for both date and time
-}
full : FormatType
full =
    DateAndTime { date = Full, time = Full }


{-| Format a `Time.Posix` value, using the format for a specified `FormatType`, `Locale`, and `Time.Zone`

    import Time
    import Cldr.Locale exposing (en)

    format short en Time.utc (Time.millisToPosix 959829796738)
    --> "6/1/00, 3:23 AM"

-}
format : FormatType -> Locale -> Time.Zone -> Posix -> String
format formatType (Locale internal) =
    -- DateFormat.formatWithLanguage (Internal.Locale.toDateTimeLanguage internal)
    --     (tokensForFormatType formatType internal zone)
    --     zone
    formatDateTime internal (formatSymbolsForType internal formatType |> Debug.log "format Symbols")


formatDateTime : Internal.Locale.Internal -> List Sym.FormatWithLiteral -> Time.Zone -> Posix -> String
formatDateTime internal symbols zone posix =
    List.map (Sym.unwrap (formatSymbol (Internal.DayPeriodRule.granularity symbols) internal zone posix)) symbols
        |> String.concat


formatSymbol : Internal.DayPeriodRule.Granularity -> Internal.Locale.Internal -> Time.Zone -> Posix -> Sym.FormatSymbol -> String
formatSymbol granularity internal zone posix symbol =
    case symbol of
        Sym.Date (Sym.Era textWidth) ->
            formatTextWidthHelper formatEra internal.eraNames textWidth zone posix

        Sym.Date (Sym.Year numberWidth) ->
            formatYear numberWidth zone posix

        Sym.Date (Sym.Month width) ->
            formatMonth internal.monthFormatNames width zone posix

        Sym.Date (Sym.MonthStandalone width) ->
            formatMonth internal.monthStandaloneNames width zone posix

        Sym.Date (Sym.Weekday textWidth) ->
            formatTextWidthHelper formatWeekday internal.weekdayFormatNames textWidth zone posix

        Sym.Date (Sym.WeekdayStandalone textWidth) ->
            formatTextWidthHelper formatWeekday internal.weekdayStandaloneNames textWidth zone posix

        Sym.Date (Sym.Day numberWidth) ->
            formatDay numberWidth zone posix

        Sym.Time (Sym.Period textWidth) ->
            formatTextWidthHelper formatPeriod internal.periodNames textWidth zone posix

        Sym.Time (Sym.FlexibleDayPeriod textWidth) ->
            formatTextWidthHelper (formatFlexibleDayPeriod internal.dayPeriodRuleSet granularity) internal.periodNames textWidth zone posix

        Sym.Time (Sym.Hour12From1 numberWidth) ->
            formatHour12From1 numberWidth zone posix

        Sym.Time (Sym.Hour24From0 numberWidth) ->
            formatHour24From0 numberWidth zone posix

        Sym.Time (Sym.Hour12From0 numberWidth) ->
            formatHour12From0 numberWidth zone posix

        Sym.Time (Sym.Hour24From1 numberWidth) ->
            formatHour24From1 numberWidth zone posix

        Sym.Time (Sym.Minute numberWidth) ->
            formatMinute numberWidth zone posix

        Sym.Time (Sym.Second numberWidth) ->
            formatSecond numberWidth zone posix

        Sym.Time (Sym.FractionalSeconds decimals) ->
            formatFractionalSeconds decimals zone posix

        Sym.Time (Sym.ZoneNonLocationFormat nameWidth) ->
            formatZoneNonLocationFormat nameWidth zone posix

        Sym.Time Sym.ZoneIso8601Basic ->
            foramtZoneIso8601Basic zone posix

        Sym.Time (Sym.ZoneGmtFormat nameWidth) ->
            formatZoneGmtFormat nameWidth zone posix

        Sym.Time (Sym.ZoneGenericNonLocationFormat nameWidth) ->
            formatZoneGenericNonLocationFormat nameWidth zone posix


formatTextWidthHelper : (a -> Time.Zone -> Time.Posix -> String) -> Structs.Pattern3 a -> Sym.TextWidth -> Time.Zone -> Time.Posix -> String
formatTextWidthHelper formatFun patterns textWidth =
    formatFun (Structs.getPattern3 patterns textWidth)


formatEra : Structs.EraNames -> Time.Zone -> Time.Posix -> String
formatEra eraNames zone posix =
    Internal.Format.era eraNames (Time.toYear zone posix)


formatYear : Sym.NumberWidth -> Time.Zone -> Time.Posix -> String
formatYear numberWidth zone posix =
    Internal.Format.year numberWidth (Time.toYear zone posix)


formatMonth : Structs.Pattern3 Structs.MonthNames -> Sym.Width -> Time.Zone -> Time.Posix -> String
formatMonth monthPattern3 width =
    case width of
        Sym.Text textWidth ->
            formatTextWidthHelper formatMonthHelper monthPattern3 textWidth

        Sym.Number numberWidth ->
            formatMonthNumberHelper numberWidth


formatMonthHelper : Structs.MonthNames -> Time.Zone -> Time.Posix -> String
formatMonthHelper monthNames zone posix =
    Internal.Format.month monthNames (Time.toMonth zone posix)


formatMonthNumberHelper : Sym.NumberWidth -> Time.Zone -> Time.Posix -> String
formatMonthNumberHelper numberWidth zone posix =
    Internal.Format.number numberWidth (Time.toMonth zone posix |> Date.monthToNumber)


formatWeekday : Structs.WeekdayNames -> Time.Zone -> Time.Posix -> String
formatWeekday weekdayNames zone posix =
    Internal.Format.weekday weekdayNames (Time.toWeekday zone posix)


formatDay : Sym.NumberWidth -> Time.Zone -> Time.Posix -> String
formatDay numberWidth zone posix =
    Internal.Format.number numberWidth (Time.toDay zone posix)


formatPeriod : Structs.PeriodNames -> Time.Zone -> Time.Posix -> String
formatPeriod periodNames zone posix =
    Internal.Format.period periodNames (Time.toHour zone posix)


formatFlexibleDayPeriod : List DayPeriodRule -> Internal.DayPeriodRule.Granularity -> Structs.PeriodNames -> Time.Zone -> Time.Posix -> String
formatFlexibleDayPeriod rules granularity periodNames zone posix =
    rules
        |> List.filter (Internal.DayPeriodRule.isMatch granularity zone posix)
        |> List.Extra.maximumWith Internal.DayPeriodRule.bestMatch
        |> Maybe.map Internal.DayPeriodRule.dayPeriod
        |> Maybe.andThen (\dayPeriod -> Dict.get dayPeriod periodNames.dayPeriods)
        |> Maybe.withDefault (formatPeriod periodNames zone posix)


formatHour12From1 : Sym.NumberWidth -> Time.Zone -> Time.Posix -> String
formatHour12From1 numberWidth zone posix =
    Time.toHour zone posix
        |> modBy 12
        |> replaceZeroWith 12
        |> Internal.Format.number numberWidth


formatHour12From0 : Sym.NumberWidth -> Time.Zone -> Time.Posix -> String
formatHour12From0 numberWidth zone posix =
    Time.toHour zone posix
        |> modBy 12
        |> Internal.Format.number numberWidth


formatHour24From0 : Sym.NumberWidth -> Time.Zone -> Time.Posix -> String
formatHour24From0 numberWidth zone posix =
    Time.toHour zone posix
        |> Internal.Format.number numberWidth


formatHour24From1 : Sym.NumberWidth -> Time.Zone -> Time.Posix -> String
formatHour24From1 numberWidth zone posix =
    Time.toHour zone posix
        |> replaceZeroWith 24
        |> Internal.Format.number numberWidth


replaceZeroWith : Int -> Int -> Int
replaceZeroWith default num =
    if num == 0 then
        default

    else
        num


formatMinute : Sym.NumberWidth -> Time.Zone -> Time.Posix -> String
formatMinute numberWidth zone posix =
    Time.toMinute zone posix
        |> Internal.Format.number numberWidth


formatSecond : Sym.NumberWidth -> Time.Zone -> Time.Posix -> String
formatSecond numberWidth zone posix =
    Time.toSecond zone posix
        |> Internal.Format.number numberWidth


formatFractionalSeconds : Int -> Time.Zone -> Time.Posix -> String
formatFractionalSeconds decimals zone posix =
    Time.toMillis zone posix
        |> doThreeDigitRounding decimals
        |> String.fromInt


doThreeDigitRounding : Int -> Int -> Int
doThreeDigitRounding decimals millis =
    round (toFloat millis / toFloat (10 ^ (3 - decimals)))


formatZoneNonLocationFormat : Sym.NameWidth -> Time.Zone -> Time.Posix -> String
formatZoneNonLocationFormat =
    -- specific non-location format falls back to localized GMT format
    formatZoneGmtFormat


foramtZoneIso8601Basic : Time.Zone -> Time.Posix -> String
foramtZoneIso8601Basic zone posix =
    getOffsets zone posix
        |> iso8601BasicFormatOffsets


formatZoneGenericNonLocationFormat : Sym.NameWidth -> Time.Zone -> Time.Posix -> String
formatZoneGenericNonLocationFormat =
    -- generic non-location format falls back to generic location format, and then localized GMT format
    formatZoneGmtFormat


formatZoneGmtFormat : Sym.NameWidth -> Time.Zone -> Time.Posix -> String
formatZoneGmtFormat nameWidth zone posix =
    getOffsets zone posix
        |> gmtFormatOffsets nameWidth


type alias Offsets =
    { offsetIsPositive : Bool
    , hours : Int
    , minutes : Int
    , seconds : Int
    }


getOffsets : Time.Zone -> Time.Posix -> Offsets
getOffsets zone posix =
    let
        rataDieOffset =
            (Date.fromPosix zone posix |> Date.toRataDie)
                - (Date.fromPosix Time.utc posix |> Date.toRataDie)

        hourOffset =
            Time.toHour zone posix - Time.toHour Time.utc posix

        minuteOffset =
            Time.toMinute zone posix - Time.toMinute Time.utc posix

        secondOffset =
            Time.toSecond zone posix - Time.toSecond Time.utc posix

        totalSecondsOffset =
            (rataDieOffset * 24 * 60 * 60)
                + (hourOffset * 60 * 60)
                + (minuteOffset * 60)
                + secondOffset
    in
    { offsetIsPositive = totalSecondsOffset >= 0
    , hours = abs (totalSecondsOffset // 3600)
    , minutes = abs (remainderBy 3600 totalSecondsOffset // 60)
    , seconds = abs (remainderBy 60 totalSecondsOffset)
    }


iso8601BasicFormatOffsets : Offsets -> String
iso8601BasicFormatOffsets offsets =
    let
        showSeconds =
            offsets.seconds /= 0
    in
    [ ( offsets.offsetIsPositive, "+" )
    , ( True, String.fromInt offsets.hours |> String.padLeft 2 '0' )
    , ( True, String.fromInt offsets.minutes |> String.padLeft 2 '0' )
    , ( showSeconds, String.fromInt offsets.seconds |> String.padLeft 2 '0' )
    ]
        |> List.filter Tuple.first
        |> List.map Tuple.second
        |> String.concat


gmtFormatOffsets : Sym.NameWidth -> Offsets -> String
gmtFormatOffsets nameWidth offsets =
    let
        showHours =
            offsets.hours /= 0 || offsets.minutes /= 0 || offsets.seconds /= 0

        showMinutes =
            offsets.minutes /= 0 || offsets.seconds /= 0 || (offsets.hours /= 0 && nameWidth == Sym.Long)

        showSeconds =
            offsets.seconds /= 0
    in
    [ ( True, "GMT" )
    , ( showHours && offsets.offsetIsPositive, "+" )
    , ( showHours && not offsets.offsetIsPositive, "-" )
    , ( showHours, String.fromInt offsets.hours )
    , ( showMinutes, ":" )
    , ( showMinutes, String.fromInt offsets.minutes |> String.padLeft 2 '0' )
    , ( showSeconds, ":" )
    , ( showSeconds, String.fromInt offsets.seconds |> String.padLeft 2 '0' )
    ]
        |> List.filter Tuple.first
        |> List.map Tuple.second
        |> String.concat


formatSymbolsForType : Internal.Locale.Internal -> FormatType -> List Sym.FormatWithLiteral
formatSymbolsForType internal formatType =
    case formatType of
        DateOnly length ->
            Structs.getPattern internal.dateSymbols length
                |> List.map (Sym.mapLiteral Sym.Date)

        TimeOnly length ->
            Structs.getPattern internal.timeSymbols length
                |> List.map (Sym.mapLiteral Sym.Time)

        DateAndTime { date, time } ->
            Structs.getPattern internal.dateTimeTokens date
                |> List.concatMap
                    (expandDateTimeTokenToFormatSymbols
                        (Structs.getPattern internal.dateSymbols date)
                        (Structs.getPattern internal.timeSymbols time)
                    )

        WithOptions options ->
            Internal.Options.setLocaleDefaultHourType internal.hour12ByDefault options
                |> formatSymbolsFromOptions internal


expandDateTimeTokenToFormatSymbols : List Sym.DateWithLiteral -> List Sym.TimeWithLiteral -> Internal.Locale.DateTimeToken -> List Sym.FormatWithLiteral
expandDateTimeTokenToFormatSymbols dateSymbols timeSymbols token =
    case token of
        DateGoesHere ->
            List.map (Sym.mapLiteral Sym.Date) dateSymbols

        TimeGoesHere ->
            List.map (Sym.mapLiteral Sym.Time) timeSymbols

        Text words ->
            [ Sym.Literal words ]


formatSymbolsFromOptions : Internal.Locale.Internal -> DateTimeOptions -> List Sym.FormatWithLiteral
formatSymbolsFromOptions internal requestedOptions =
    internal.availableFormats
        |> List.map Internal.Locale.toDateTimeAvailableFormat
        |> List.Extra.maximumBy (.options >> Internal.Options.dateTimeMatchScore requestedOptions)
        |> Maybe.map (useCombinedFormatsIfNecessary internal requestedOptions)
        |> Maybe.withDefault []


useCombinedFormatsIfNecessary : Internal.Locale.Internal -> DateTimeOptions -> Internal.Locale.DateTimeAvailableFormat -> List Sym.FormatWithLiteral
useCombinedFormatsIfNecessary internal requestedOptions bestMatch =
    case ( Internal.Options.splitOptions requestedOptions, fieldsDoNotMatch requestedOptions bestMatch.options ) of
        ( Just ( dateOptions, timeOptions ), True ) ->
            findAndCombineBestFormats internal dateOptions timeOptions

        _ ->
            bestMatch.formatSymbols
                |> List.map (Sym.mapLiteral (expandSymbol requestedOptions))


fieldsDoNotMatch : DateTimeOptions -> DateTimeOptions -> Bool
fieldsDoNotMatch a b =
    List.all identity
        [ matchMaybe a.era b.era
        , matchMaybe a.year b.year
        , matchMaybe a.month b.month
        , matchMaybe a.day b.day
        , matchMaybe a.weekday b.weekday
        , matchMaybe a.period b.period
        , matchMaybe a.hour b.hour
        , matchMaybe a.minute b.minute
        , matchMaybe a.second b.second
        , matchMaybe a.fractionalSecondDigits b.fractionalSecondDigits
        , matchMaybe a.zone b.zone
        ]
        |> not


matchMaybe : Maybe a -> Maybe a -> Bool
matchMaybe left right =
    case ( left, right ) of
        ( Just _, Just _ ) ->
            True

        ( Nothing, Nothing ) ->
            True

        _ ->
            False


findAndCombineBestFormats : Internal.Locale.Internal -> DateOptions -> TimeOptions -> List Sym.FormatWithLiteral
findAndCombineBestFormats internal dateOptions timeOptions =
    combineBestFormats internal
        (findBestDateFormat internal dateOptions
            |> List.map (Sym.mapLiteral (Expand.date dateOptions))
        )
        (findBestTimeFormat internal timeOptions
            |> List.map (Sym.mapLiteral (Expand.time timeOptions))
        )


combineBestFormats : Internal.Locale.Internal -> List Sym.DateWithLiteral -> List Sym.TimeWithLiteral -> List Sym.FormatWithLiteral
combineBestFormats internal dateSymbols timeSymbols =
    Structs.getPattern internal.dateTimeTokens
        (lengthForDatePattern (Debug.log "date symbols for length calc" dateSymbols))
        |> List.concatMap (expandDateTimeTokenToFormatSymbols dateSymbols timeSymbols)


lengthForDatePattern : List Sym.DateWithLiteral -> Length
lengthForDatePattern =
    lengthForDatePatternHelper FoundNeither


type MonthOrWeekdayFinder
    = FoundNeither
    | FoundWideMonth
    | FoundWeekday


lengthForDatePatternHelper : MonthOrWeekdayFinder -> List Sym.DateWithLiteral -> Length
lengthForDatePatternHelper foundSoFar symbols =
    case ( foundSoFar, symbols ) of
        ( FoundWideMonth, [] ) ->
            Long

        ( _, [] ) ->
            Short

        ( FoundWeekday, (Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))) :: _ ) ->
            Full

        ( _, (Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))) :: rest ) ->
            lengthForDatePatternHelper FoundWideMonth rest

        ( FoundWideMonth, (Sym.Symbol (Sym.Weekday _)) :: _ ) ->
            Full

        ( _, (Sym.Symbol (Sym.Weekday _)) :: rest ) ->
            lengthForDatePatternHelper FoundWeekday rest

        ( _, (Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))) :: _ ) ->
            Medium

        ( _, _ :: rest ) ->
            lengthForDatePatternHelper foundSoFar rest


findBestDateFormat : Internal.Locale.Internal -> DateOptions -> List Sym.DateWithLiteral
findBestDateFormat internal requestedDateOptions =
    internal.availableFormats
        |> List.filterMap Internal.Locale.toDateAvailableFormat
        |> List.Extra.maximumBy (.options >> Internal.Options.dateMatchScore requestedDateOptions)
        |> Maybe.map .formatSymbols
        |> Maybe.withDefault []


findBestTimeFormat : Internal.Locale.Internal -> TimeOptions -> List Sym.TimeWithLiteral
findBestTimeFormat internal requestedTimeOptions =
    internal.availableFormats
        |> List.filterMap Internal.Locale.toTimeAvailableFormat
        |> List.Extra.maximumBy (.options >> Internal.Options.timeMatchScore requestedTimeOptions)
        |> Maybe.map .formatSymbols
        |> Maybe.withDefault []


expandSymbol : DateTimeOptions -> Sym.FormatSymbol -> Sym.FormatSymbol
expandSymbol requested symbol =
    case symbol of
        Sym.Date dateSymbol ->
            Sym.Date (Expand.date requested dateSymbol)

        Sym.Time timeSymbol ->
            Sym.Time (Expand.time requested timeSymbol)
