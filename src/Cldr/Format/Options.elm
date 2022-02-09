module Cldr.Format.Options exposing
    ( DateTimeOptions, defaultDateTimeOptions
    , DateOptions, defaultDateOptions
    , TextOption(..), NumberOption(..), NumberOrTextOption(..)
    , HourType(..), FractionalDigits(..), NameOption(..)
    )

{-|


# Formatting Options


## Options for DateTime Formatting

@docs DateTimeOptions, defaultDateTimeOptions


## Options for Date Formatting

@docs DateOptions, defaultDateOptions


## Common Option Types

@docs TextOption, NumberOption, NumberOrTextOption
@docs HourType, FractionalDigits, NameOption

-}


{-| The options that are relevant to formatting a DateTime value.

These match the options that can be used in the
[`Intl.DateTimeFormat`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/DateTimeFormat) JS [API](https://402.ecma-international.org/8.0/#table-datetimeformat-components).

-}
type alias DateTimeOptions =
    { era : Maybe TextOption
    , year : Maybe NumberOption
    , month : Maybe NumberOrTextOption
    , day : Maybe NumberOption
    , weekday : Maybe TextOption
    , period : Maybe TextOption
    , hour : Maybe NumberOption
    , minute : Maybe NumberOption
    , second : Maybe NumberOption
    , fractionalSecondDigits : Maybe FractionalDigits
    , zone : Maybe NameOption
    , hour12 : Maybe HourType
    }


{-| A default record that can be used. Defaults each option to Nothing.

    import Cldr.Format.Options exposing (defaultDateTimeOptions)

    options =
        { defaultDateTimeOptionis | hour = Just Numeric }

-}
defaultDateTimeOptions : DateTimeOptions
defaultDateTimeOptions =
    { era = Nothing
    , year = Nothing
    , month = Nothing
    , day = Nothing
    , weekday = Nothing
    , period = Nothing
    , hour = Nothing
    , minute = Nothing
    , second = Nothing
    , fractionalSecondDigits = Nothing
    , zone = Nothing
    , hour12 = Nothing
    }


{-| The options that are relevant to formatting a Date value.

These match a subset of the options that can be used in the
[`Intl.DateTimeFormat`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/DateTimeFormat) JS [API](https://402.ecma-international.org/8.0/#table-datetimeformat-components).

-}
type alias DateOptions =
    { era : Maybe TextOption
    , year : Maybe NumberOption
    , month : Maybe NumberOrTextOption
    , day : Maybe NumberOption
    , weekday : Maybe TextOption
    }


{-| A default record that can be used. Defaults each option to Nothing.

    import Cldr.Format.Options exposing (defaultDateOptions)

    options =
        { defaultDateOptionis | year = Just Numeric }

-}
defaultDateOptions : DateOptions
defaultDateOptions =
    { era = Nothing
    , year = Nothing
    , month = Nothing
    , day = Nothing
    , weekday = Nothing
    }


{-| A value for text-based options, such as weekday name and am/pm period.
-}
type TextOption
    = Short
    | Long
    | Narrow


{-| A value for number-based options, such as year or hour.
-}
type NumberOption
    = Numeric
    | TwoDigit


{-| A value for options that can use text or numbers, such as month.
-}
type NumberOrTextOption
    = Text TextOption
    | Number NumberOption


{-| A value to choose the number of fractional digits to display.
-}
type FractionalDigits
    = One
    | Two
    | Three


{-| Time Zone names can only be "short" or "long".
-}
type NameOption
    = ShortName
    | LongName


{-| A value to choose between 12 and 24 hour based formatting.
-}
type HourType
    = Hour12
    | Hour24
