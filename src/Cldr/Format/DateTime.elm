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
import DateFormat
import Internal.Length
import Internal.Locale exposing (DateTimeToken(..), Locale(..), TimeToken(..))
import Internal.Options exposing (TimeOptions)
import Internal.Structures
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
format formatType (Locale internal) zone =
    DateFormat.formatWithLanguage (Internal.Locale.toDateTimeLanguage internal)
        (tokensForFormatType formatType internal zone)
        zone


tokensForFormatType : FormatType -> Internal.Locale.Internal -> Time.Zone -> List DateFormat.Token
tokensForFormatType formatType internal zone =
    case formatType of
        DateOnly length ->
            Internal.Structures.getPattern internal.dateTokens length
                |> List.map (Internal.Locale.convertToken internal.eraNames zone)

        TimeOnly length ->
            Internal.Structures.getPattern internal.timeTokens length
                |> List.map (Internal.Locale.convertToken internal.eraNames zone)

        DateAndTime { date, time } ->
            Internal.Structures.getPattern internal.dateTimeTokens (Internal.Length.max date time)
                |> List.concatMap
                    (Internal.Locale.convertDateTimeToken
                        { internal = internal
                        , zone = zone
                        , date = date
                        , time = time
                        }
                    )

        WithOptions options ->
            Internal.Options.setLocaleDefaultHourType internal.hour12ByDefault options
                |> dateFormatTokensFromOptions internal
                |> List.map (Internal.Locale.convertToken internal.eraNames zone)


dateFormatTokensFromOptions : Internal.Locale.Internal -> DateTimeOptions -> List TimeToken
dateFormatTokensFromOptions internal requestedOptions =
    internal.availableFormats
        |> List.map Internal.Locale.toDateTimeAvailableFormat
        |> List.Extra.maximumBy (.options >> Internal.Options.dateTimeMatchScore requestedOptions)
        |> Maybe.map (useCombinedFormatsIfNecessary internal requestedOptions)
        |> Maybe.withDefault []


useCombinedFormatsIfNecessary : Internal.Locale.Internal -> DateTimeOptions -> Internal.Locale.DateTimeAvailableFormat -> List TimeToken
useCombinedFormatsIfNecessary internal requestedOptions bestMatch =
    case ( Internal.Options.splitOptions requestedOptions, fieldsDoNotMatch requestedOptions bestMatch.options ) of
        ( Just ( dateOptions, timeOptions ), True ) ->
            findAndCombineBestFormats internal dateOptions timeOptions

        _ ->
            List.map (expandTimeToken requestedOptions bestMatch.options) bestMatch.tokens


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


findAndCombineBestFormats : Internal.Locale.Internal -> DateOptions -> TimeOptions -> List TimeToken
findAndCombineBestFormats internal dateOptions timeOptions =
    combineBestFormats internal
        (findBestDateFormat internal dateOptions)
        (findBestTimeFormat internal timeOptions)


combineBestFormats : Internal.Locale.Internal -> List TimeToken -> List TimeToken -> List TimeToken
combineBestFormats internal dateTokens timeTokens =
    let
        convertDateTimeToken token =
            case token of
                DateGoesHere ->
                    dateTokens

                TimeGoesHere ->
                    timeTokens

                Text words ->
                    [ DF (DateFormat.text words) ]
    in
    Internal.Structures.getPattern internal.dateTimeTokens
        (lengthForDatePattern dateTokens)
        |> List.concatMap convertDateTimeToken


findBestDateFormat : Internal.Locale.Internal -> DateOptions -> List TimeToken
findBestDateFormat internal requestedDateOptions =
    internal.availableFormats
        |> List.filterMap Internal.Locale.toDateAvailableFormat
        |> List.Extra.maximumBy (.options >> Internal.Options.dateMatchScore requestedDateOptions)
        |> Maybe.map (expandDateFormat requestedDateOptions)
        |> Maybe.withDefault []


expandDateFormat : DateOptions -> Internal.Locale.DateAvailableFormat -> List TimeToken
expandDateFormat requestedDateOptions bestMatch =
    List.map (expandTimeTokenForDate requestedDateOptions bestMatch.options) bestMatch.tokens


findBestTimeFormat : Internal.Locale.Internal -> TimeOptions -> List TimeToken
findBestTimeFormat internal requestedTimeOptions =
    internal.availableFormats
        |> List.filterMap Internal.Locale.toTimeAvailableFormat
        |> List.Extra.maximumBy (.options >> Internal.Options.timeMatchScore requestedTimeOptions)
        |> Maybe.map (expandTimeFormat requestedTimeOptions)
        |> Maybe.withDefault []


expandTimeFormat : TimeOptions -> Internal.Locale.TimeAvailableFormat -> List TimeToken
expandTimeFormat requestedTimeOptions bestMatch =
    List.map (expandTimeTokenForTime requestedTimeOptions bestMatch.options) bestMatch.tokens


expandTimeToken : DateTimeOptions -> DateTimeOptions -> TimeToken -> TimeToken
expandTimeToken requested bestMatch =
    expandTimeTokenForDate requested bestMatch
        >> expandTimeTokenForTime requested bestMatch


expandTimeTokenForDate : Internal.Options.DateOptionsPlus a -> Internal.Options.DateOptionsPlus a -> TimeToken -> TimeToken
expandTimeTokenForDate requested candidate =
    replaceToken .era eraToken requested candidate
        >> replaceToken .year yearToken requested candidate
        >> replaceNumberOrTextToken .month monthToken requested candidate
        >> replaceToken .day dayToken requested candidate
        >> replaceToken .weekday weekdayToken requested candidate


expandTimeTokenForTime : Internal.Options.TimeOptionsPlus a -> Internal.Options.TimeOptionsPlus a -> TimeToken -> TimeToken
expandTimeTokenForTime requested candidate =
    replaceToken .period periodToken requested candidate
        >> replaceToken getHourFields hourToken requested candidate
        >> replaceToken .minute minuteToken requested candidate
        >> replaceToken .second secondToken requested candidate
        >> replaceToken .zone zoneToken requested candidate


getHourFields : Internal.Options.TimeOptionsPlus a -> Maybe ( Cldr.Format.Options.NumberOption, Cldr.Format.Options.HourType )
getHourFields opts =
    Maybe.map2 Tuple.pair opts.hour opts.hour12


replaceToken : (a -> Maybe b) -> (b -> TimeToken) -> a -> a -> TimeToken -> TimeToken
replaceToken getField toToken requested candidate timeToken =
    case ( getField requested, getField candidate ) of
        ( Just req, Just can ) ->
            if timeToken == toToken can then
                toToken req

            else
                timeToken

        _ ->
            timeToken


replaceNumberOrTextToken : (a -> Maybe Cldr.Format.Options.NumberOrTextOption) -> (Cldr.Format.Options.NumberOrTextOption -> TimeToken) -> a -> a -> TimeToken -> TimeToken
replaceNumberOrTextToken getField toToken requested candidate timeToken =
    case ( getField requested, getField candidate ) of
        ( Just (Cldr.Format.Options.Text req), Just (Cldr.Format.Options.Text can) ) ->
            if timeToken == toToken (Cldr.Format.Options.Text can) then
                toToken (Cldr.Format.Options.Text req)

            else
                timeToken

        ( Just (Cldr.Format.Options.Number req), Just (Cldr.Format.Options.Number can) ) ->
            if timeToken == toToken (Cldr.Format.Options.Number can) then
                toToken (Cldr.Format.Options.Number req)

            else
                timeToken

        _ ->
            timeToken


eraToken : Cldr.Format.Options.TextOption -> TimeToken
eraToken _ =
    EraAbbr


yearToken : Cldr.Format.Options.NumberOption -> TimeToken
yearToken opt =
    case opt of
        Cldr.Format.Options.Numeric ->
            DF DateFormat.yearNumber

        Cldr.Format.Options.TwoDigit ->
            DF DateFormat.yearNumberLastTwo


monthToken : Cldr.Format.Options.NumberOrTextOption -> TimeToken
monthToken opt =
    case opt of
        Cldr.Format.Options.Number Cldr.Format.Options.TwoDigit ->
            DF DateFormat.monthFixed

        Cldr.Format.Options.Number Cldr.Format.Options.Numeric ->
            DF DateFormat.monthNumber

        Cldr.Format.Options.Text Cldr.Format.Options.Narrow ->
            DF DateFormat.monthNameAbbreviated

        Cldr.Format.Options.Text Cldr.Format.Options.Short ->
            DF DateFormat.monthNameAbbreviated

        Cldr.Format.Options.Text Cldr.Format.Options.Long ->
            DF DateFormat.monthNameFull


dayToken : Cldr.Format.Options.NumberOption -> TimeToken
dayToken opt =
    case opt of
        Cldr.Format.Options.TwoDigit ->
            DF DateFormat.dayOfMonthFixed

        Cldr.Format.Options.Numeric ->
            DF DateFormat.dayOfMonthNumber


weekdayToken : Cldr.Format.Options.TextOption -> TimeToken
weekdayToken opt =
    case opt of
        Cldr.Format.Options.Narrow ->
            DF DateFormat.dayOfWeekNameAbbreviated

        Cldr.Format.Options.Short ->
            DF DateFormat.dayOfWeekNameAbbreviated

        Cldr.Format.Options.Long ->
            DF DateFormat.dayOfWeekNameFull


periodToken : Cldr.Format.Options.TextOption -> TimeToken
periodToken _ =
    DF DateFormat.amPmUppercase


hourToken : ( Cldr.Format.Options.NumberOption, Cldr.Format.Options.HourType ) -> TimeToken
hourToken optPair =
    case optPair of
        ( Cldr.Format.Options.TwoDigit, Cldr.Format.Options.Hour12 ) ->
            DF DateFormat.hourFixed

        ( Cldr.Format.Options.Numeric, Cldr.Format.Options.Hour12 ) ->
            DF DateFormat.hourNumber

        ( Cldr.Format.Options.TwoDigit, Cldr.Format.Options.Hour24 ) ->
            DF DateFormat.hourMilitaryFixed

        ( Cldr.Format.Options.Numeric, Cldr.Format.Options.Hour24 ) ->
            DF DateFormat.hourMilitaryNumber


minuteToken : Cldr.Format.Options.NumberOption -> TimeToken
minuteToken opt =
    case opt of
        Cldr.Format.Options.TwoDigit ->
            DF DateFormat.minuteFixed

        Cldr.Format.Options.Numeric ->
            DF DateFormat.minuteNumber


secondToken : Cldr.Format.Options.NumberOption -> TimeToken
secondToken opt =
    case opt of
        Cldr.Format.Options.TwoDigit ->
            DF DateFormat.secondFixed

        Cldr.Format.Options.Numeric ->
            DF DateFormat.secondNumber


zoneToken : Cldr.Format.Options.NameOption -> TimeToken
zoneToken opt =
    case opt of
        Cldr.Format.Options.ShortName ->
            TimeZoneShort

        Cldr.Format.Options.LongName ->
            TimeZoneFull


lengthForDatePattern : List TimeToken -> Length
lengthForDatePattern tokens =
    if containsWideMonth tokens then
        if containsWeekday tokens then
            Full

        else
            Long

    else if containsAbbreviatedMonth tokens then
        Medium

    else
        Short


containsWideMonth : List TimeToken -> Bool
containsWideMonth =
    List.any ((==) (DF DateFormat.monthNameFull))


containsAbbreviatedMonth : List TimeToken -> Bool
containsAbbreviatedMonth =
    List.any ((==) (DF DateFormat.monthNameAbbreviated))


containsWeekday : List TimeToken -> Bool
containsWeekday =
    List.any
        (\token ->
            List.member token
                [ DF DateFormat.dayOfWeekNumber
                , DF DateFormat.dayOfWeekSuffix
                , DF DateFormat.dayOfWeekNameAbbreviated
                , DF DateFormat.dayOfWeekNameFull
                ]
        )
