module Cldr.Format.OptionsBuilder exposing
    ( OptionsBuilder
    , initDateTime, initDate
    , setEra, setYear, setMonthNumber, setMonthText, setDay, setWeekday
    , setPeriod, setHour, setMinute, setSecond, setFractionalSecondDigits
    , setZone, setHour12
    , toOptions
    )

{-| Build options records using type-safe helper functions.

    import Cldr.Format.Options exposing (..)

    options : DateTimeOptions
    options =
        initDateTime
            |> setYear Numeric
            |> setMonthText Short
            |> setDay Numeric
            |> setHour Numeric
            |> setMinute TwoDigit
            |> setPeriod Short
            |> toOptions

@docs OptionsBuilder


# Initialize

@docs initDateTime, initDate


# Set options


## Date options

@docs setEra, setYear, setMonthNumber, setMonthText, setDay, setWeekday


## DateTime specific options

@docs setPeriod, setHour, setMinute, setSecond, setFractionalSecondDigits
@docs setZone, setHour12


## Convert

@docs toOptions

-}

import Cldr.Format.Options as Opts


{-| An opaque type that uses the "phantom builder" pattern.
-}
type OptionsBuilder a b
    = OptionsBuilder b


{-| Get the options that you have built.
-}
toOptions : OptionsBuilder a b -> b
toOptions (OptionsBuilder record) =
    record


type alias EmptyDateTime =
    { eraNotSetYet : ()
    , yearNotSetYet : ()
    , monthNotSetYet : ()
    , dayNotSetYet : ()
    , weekdayNotSetYet : ()
    , periodNotSetYet : ()
    , hourNotSetYet : ()
    , minuteNotSetYet : ()
    , secondNotSetYet : ()
    , fractionalSecondDigitsNotSetYet : ()
    , zoneNotSetYet : ()
    , hour12NotSetYet : ()
    }


type alias EmptyDate =
    { eraNotSetYet : ()
    , yearNotSetYet : ()
    , monthNotSetYet : ()
    , dayNotSetYet : ()
    , weekdayNotSetYet : ()
    }


{-| Start building a `DateTimeOptions` value
-}
initDateTime : OptionsBuilder EmptyDateTime Opts.DateTimeOptions
initDateTime =
    OptionsBuilder Opts.defaultDateTimeOptions


{-| Start building a `DateTime` value
-}
initDate : OptionsBuilder EmptyDate Opts.DateOptions
initDate =
    OptionsBuilder Opts.defaultDateOptions


type alias HasEra a =
    { a | era : Maybe Opts.TextOption }


type alias EraNotSetYet a =
    { a | eraNotSetYet : () }


{-| Set the `era` field.
-}
setEra : Opts.TextOption -> OptionsBuilder (EraNotSetYet a) (HasEra b) -> OptionsBuilder a (HasEra b)
setEra opt (OptionsBuilder record) =
    OptionsBuilder { record | era = Just opt }


type alias HasYear a =
    { a | year : Maybe Opts.NumberOption }


type alias YearNotSetYet a =
    { a | yearNotSetYet : () }


{-| Set the `year` field.
-}
setYear : Opts.NumberOption -> OptionsBuilder (YearNotSetYet a) (HasYear b) -> OptionsBuilder a (HasYear b)
setYear opt (OptionsBuilder record) =
    OptionsBuilder { record | year = Just opt }


type alias HasMonth a =
    { a | month : Maybe Opts.NumberOrTextOption }


type alias MonthNotSetYet a =
    { a | monthNotSetYet : () }


{-| Set the `month` field to a `NumberOption` value.
-}
setMonthNumber : Opts.NumberOption -> OptionsBuilder (MonthNotSetYet a) (HasMonth b) -> OptionsBuilder a (HasMonth b)
setMonthNumber opt (OptionsBuilder record) =
    OptionsBuilder { record | month = Just (Opts.Number opt) }


{-| Set the `month` field to a `TextOption` value.
-}
setMonthText : Opts.TextOption -> OptionsBuilder (MonthNotSetYet a) (HasMonth b) -> OptionsBuilder a (HasMonth b)
setMonthText opt (OptionsBuilder record) =
    OptionsBuilder { record | month = Just (Opts.Text opt) }


type alias HasDay a =
    { a | day : Maybe Opts.NumberOption }


type alias DayNotSetYet a =
    { a | dayNotSetYet : () }


{-| Set the `day` field.
-}
setDay : Opts.NumberOption -> OptionsBuilder (DayNotSetYet a) (HasDay b) -> OptionsBuilder a (HasDay b)
setDay opt (OptionsBuilder record) =
    OptionsBuilder { record | day = Just opt }


type alias HasWeekday a =
    { a | weekday : Maybe Opts.TextOption }


type alias WeekdayNotSetYet a =
    { a | weekdayNotSetYet : () }


{-| Set the `weekday` field.
-}
setWeekday : Opts.TextOption -> OptionsBuilder (WeekdayNotSetYet a) (HasWeekday b) -> OptionsBuilder a (HasWeekday b)
setWeekday opt (OptionsBuilder record) =
    OptionsBuilder { record | weekday = Just opt }


type alias HasPeriod a =
    { a | period : Maybe Opts.TextOption }


type alias PeriodNotSetYet a =
    { a | periodNotSetYet : () }


{-| Set the `period` field.
-}
setPeriod : Opts.TextOption -> OptionsBuilder (PeriodNotSetYet a) (HasPeriod b) -> OptionsBuilder a (HasPeriod b)
setPeriod opt (OptionsBuilder record) =
    OptionsBuilder { record | period = Just opt }


type alias HasHour a =
    { a | hour : Maybe Opts.NumberOption }


type alias HourNotSetYet a =
    { a | hourNotSetYet : () }


{-| Set the `hour` field.
-}
setHour : Opts.NumberOption -> OptionsBuilder (HourNotSetYet a) (HasHour b) -> OptionsBuilder a (HasHour b)
setHour opt (OptionsBuilder record) =
    OptionsBuilder { record | hour = Just opt }


type alias HasMinute a =
    { a | minute : Maybe Opts.NumberOption }


type alias MinuteNotSetYet a =
    { a | minuteNotSetYet : () }


{-| Set the `minute` field.
-}
setMinute : Opts.NumberOption -> OptionsBuilder (MinuteNotSetYet a) (HasMinute b) -> OptionsBuilder a (HasMinute b)
setMinute opt (OptionsBuilder record) =
    OptionsBuilder { record | minute = Just opt }


type alias HasSecond a =
    { a | second : Maybe Opts.NumberOption }


type alias SecondNotSetYet a =
    { a | secondNotSetYet : () }


{-| Set the `second` field.
-}
setSecond : Opts.NumberOption -> OptionsBuilder (SecondNotSetYet a) (HasSecond b) -> OptionsBuilder a (HasSecond b)
setSecond opt (OptionsBuilder record) =
    OptionsBuilder { record | second = Just opt }


type alias HasFractionalSecondDigits a =
    { a | fractionalSecondDigits : Maybe Opts.FractionalDigits }


type alias FractionalSecondDigitsNotSetYet a =
    { a | fractionalSecondDigitsNotSetYet : () }


{-| Set the `fractionalSecondDigits` field.
-}
setFractionalSecondDigits : Opts.FractionalDigits -> OptionsBuilder (FractionalSecondDigitsNotSetYet a) (HasFractionalSecondDigits b) -> OptionsBuilder a (HasFractionalSecondDigits b)
setFractionalSecondDigits opt (OptionsBuilder record) =
    OptionsBuilder { record | fractionalSecondDigits = Just opt }


type alias HasZone a =
    { a | zone : Maybe Opts.NameOption }


type alias ZoneNotSetYet a =
    { a | zoneNotSetYet : () }


{-| Set the `zone` field.
-}
setZone : Opts.NameOption -> OptionsBuilder (ZoneNotSetYet a) (HasZone b) -> OptionsBuilder a (HasZone b)
setZone opt (OptionsBuilder record) =
    OptionsBuilder { record | zone = Just opt }


type alias HasHour12 a =
    { a | hour12 : Maybe Opts.HourType }


type alias Hour12NotSetYet a =
    { a | hour12NotSetYet : () }


{-| Set the `hour12` field.
-}
setHour12 : Opts.HourType -> OptionsBuilder (Hour12NotSetYet a) (HasHour12 b) -> OptionsBuilder a (HasHour12 b)
setHour12 opt (OptionsBuilder record) =
    OptionsBuilder { record | hour12 = Just opt }
