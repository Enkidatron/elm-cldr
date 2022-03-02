module Internal.Options exposing
    ( DateOptionsPlus
    , MinimalOptionSet(..)
    , TimeOptions
    , TimeOptionsPlus
    , dateMatchScore
    , dateTimeMatchScore
    , dateToDateTime
    , setLocaleDefaultHourType
    , shrinkOptions
    , splitOptions
    , timeMatchScore
    , timeToDateTime
    )

import Cldr.Format.Options exposing (..)


type alias TimeOptions =
    { period : Maybe TextOption
    , dayPeriod : Maybe TextOption
    , hour : Maybe NumberOption
    , minute : Maybe NumberOption
    , second : Maybe NumberOption
    , fractionalSecondDigits : Maybe FractionalDigits
    , zone : Maybe NameOption
    , hour12 : Maybe HourType
    }


type alias DateOptionsPlus a =
    { a
        | era : Maybe TextOption
        , year : Maybe NumberOption
        , month : Maybe NumberOrTextOption
        , day : Maybe NumberOption
        , weekday : Maybe TextOption
    }


type alias TimeOptionsPlus a =
    { a
        | period : Maybe TextOption
        , dayPeriod : Maybe TextOption
        , hour : Maybe NumberOption
        , minute : Maybe NumberOption
        , second : Maybe NumberOption
        , fractionalSecondDigits : Maybe FractionalDigits
        , zone : Maybe NameOption
        , hour12 : Maybe HourType
    }


splitOptions : DateTimeOptions -> Maybe ( DateOptions, TimeOptions )
splitOptions fullOptions =
    if hasDateFields fullOptions && hasTimeFields fullOptions then
        Just ( dateSubset fullOptions, timeSubset fullOptions )

    else
        Nothing


type MinimalOptionSet
    = DateTimeSet DateTimeOptions
    | DateSet DateOptions
    | TimeSet TimeOptions
    | EmptySet


shrinkOptions : DateTimeOptions -> MinimalOptionSet
shrinkOptions opts =
    case ( hasDateFields opts, hasTimeFields opts ) of
        ( True, True ) ->
            DateTimeSet opts

        ( True, False ) ->
            DateSet (dateSubset opts)

        ( False, True ) ->
            TimeSet (timeSubset opts)

        ( False, False ) ->
            EmptySet


hasDateFields : DateOptionsPlus a -> Bool
hasDateFields opts =
    List.any identity
        [ opts.era /= Nothing
        , opts.year /= Nothing
        , opts.month /= Nothing
        , opts.day /= Nothing
        , opts.weekday /= Nothing
        ]


hasTimeFields : TimeOptionsPlus a -> Bool
hasTimeFields opts =
    List.any identity
        [ opts.period /= Nothing
        , opts.hour /= Nothing
        , opts.minute /= Nothing
        , opts.second /= Nothing
        , opts.fractionalSecondDigits /= Nothing
        , opts.zone /= Nothing
        ]


setLocaleDefaultHourType : Bool -> TimeOptionsPlus a -> TimeOptionsPlus a
setLocaleDefaultHourType hour12ByDefault opts =
    { opts | hour12 = Just (Maybe.withDefault (toHourType hour12ByDefault) opts.hour12) }


toHourType : Bool -> HourType
toHourType hour12ByDefault =
    if hour12ByDefault then
        Hour12

    else
        Hour24



-- Conversions


dateSubset : DateTimeOptions -> DateOptions
dateSubset opts =
    { era = opts.era
    , year = opts.year
    , month = opts.month
    , day = opts.day
    , weekday = opts.weekday
    }


timeSubset : DateTimeOptions -> TimeOptions
timeSubset opts =
    { period = opts.period
    , dayPeriod = opts.dayPeriod
    , hour = opts.hour
    , minute = opts.minute
    , second = opts.second
    , fractionalSecondDigits = opts.fractionalSecondDigits
    , zone = opts.zone
    , hour12 = opts.hour12
    }


timeToDateTime : TimeOptions -> DateTimeOptions
timeToDateTime opts =
    { era = Nothing
    , year = Nothing
    , month = Nothing
    , day = Nothing
    , weekday = Nothing
    , period = opts.period
    , dayPeriod = opts.dayPeriod
    , hour = opts.hour
    , minute = opts.minute
    , second = opts.second
    , fractionalSecondDigits = opts.fractionalSecondDigits
    , zone = opts.zone
    , hour12 = opts.hour12
    }


dateToDateTime : DateOptions -> DateTimeOptions
dateToDateTime opts =
    { era = opts.era
    , year = opts.year
    , month = opts.month
    , day = opts.day
    , weekday = opts.weekday
    , period = Nothing
    , dayPeriod = Nothing
    , hour = Nothing
    , minute = Nothing
    , second = Nothing
    , fractionalSecondDigits = Nothing
    , zone = Nothing
    , hour12 = Nothing
    }



-- Match Scoring


dateTimeMatchScore : DateTimeOptions -> DateTimeOptions -> Int
dateTimeMatchScore requested candidate =
    dateMatchScore requested candidate + timeMatchScore requested candidate


dateMatchScore : DateOptionsPlus a -> DateOptionsPlus a -> Int
dateMatchScore requested candidate =
    List.sum
        [ score rankText requested.era candidate.era
        , score rankNumber requested.year candidate.year
        , score rankNumberOrText requested.month candidate.month
        , score rankNumber requested.day candidate.day
        , score rankText requested.weekday candidate.weekday
        ]


timeMatchScore : TimeOptionsPlus a -> TimeOptionsPlus a -> Int
timeMatchScore requested candidate =
    List.sum
        [ score rankText requested.period candidate.period
        , score rankNumber requested.hour candidate.hour
        , score rankNumber requested.minute candidate.minute
        , score rankNumber requested.second candidate.second
        , score rankFractionalDigits requested.fractionalSecondDigits candidate.fractionalSecondDigits
        , score rankName requested.zone candidate.zone
        , scoreHour12 requested.hour12 candidate.hour12
        ]


scoreHour12 : Maybe HourType -> Maybe HourType -> Int
scoreHour12 requested candidate =
    case ( requested, candidate ) of
        ( Just req, Just can ) ->
            if req /= can then
                -1000

            else
                0

        _ ->
            0


removalPenalty : Int
removalPenalty =
    -120


additionPenalty : Int
additionPenalty =
    -20


longLessPenalty : Int
longLessPenalty =
    -8


longMorePenalty : Int
longMorePenalty =
    -6


shortLessPenalty : Int
shortLessPenalty =
    -6


shortMorePenalty : Int
shortMorePenalty =
    -3


score : (a -> Int) -> Maybe a -> Maybe a -> Int
score scoreFun requested candidate =
    case ( requested, candidate ) of
        ( Nothing, Nothing ) ->
            0

        ( Just _, Nothing ) ->
            removalPenalty

        ( Nothing, Just _ ) ->
            additionPenalty

        ( Just req, Just can ) ->
            (scoreFun can - scoreFun req)
                |> scoreForDistance


scoreForDistance : Int -> Int
scoreForDistance distance =
    if distance >= 2 then
        longMorePenalty

    else if distance == 1 then
        shortMorePenalty

    else if distance == 0 then
        0

    else if distance == -1 then
        shortLessPenalty

    else
        longLessPenalty


rankText : TextOption -> Int
rankText opt =
    case opt of
        Narrow ->
            2

        Short ->
            3

        Long ->
            4


rankNumber : NumberOption -> Int
rankNumber opt =
    case opt of
        TwoDigit ->
            0

        Numeric ->
            1


rankNumberOrText : NumberOrTextOption -> Int
rankNumberOrText opt =
    case opt of
        Text textOpt ->
            rankText textOpt

        Number numOpt ->
            rankNumber numOpt


rankFractionalDigits : FractionalDigits -> Int
rankFractionalDigits digits =
    case digits of
        One ->
            1

        Two ->
            2

        Three ->
            3


rankName : NameOption -> Int
rankName name =
    case name of
        ShortName ->
            4

        LongName ->
            5
