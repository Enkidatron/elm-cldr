module Cldr.Format.Date exposing
    ( format
    , FormatType(..)
    )

{-|


# Date Formatting

@docs format


## Format Type

@docs FormatType

-}

import Cldr.Format.Length exposing (Length(..))
import Cldr.Format.Options exposing (DateOptions)
import Date exposing (Date)
import Internal.Locale exposing (Locale(..))


{-| Dates can be formatted using a
`Cldr.Format.Length.Length` or `Cldr.Format.Options.DateOptions`.
-}
type FormatType
    = WithLength Length
    | WithOptions DateOptions


{-| Formats a `Date` using the specified `Length` and `Locale`.

    import Cldr.Format.Length exposing (Length(..))
    import Cldr.Locale exposing (en)
    import Date
    import Time exposing (Month(..))

    let
        date = Date.fromCalendarDate 2000 Jan 1
    in
    format (WithLength Short) en date
    --> "1/1/00"

-}
format : FormatType -> Locale -> Date -> String
format formatType (Locale internal) =
    case formatType of
        WithLength Short ->
            Date.formatWithLanguage (Internal.Locale.toDateLanguage internal)
                internal.datePatterns.short

        WithLength Medium ->
            Date.formatWithLanguage (Internal.Locale.toDateLanguage internal)
                internal.datePatterns.medium

        WithLength Long ->
            Date.formatWithLanguage (Internal.Locale.toDateLanguage internal)
                internal.datePatterns.long

        WithLength Full ->
            Date.formatWithLanguage (Internal.Locale.toDateLanguage internal)
                internal.datePatterns.full

        WithOptions _ ->
            always "Date formatting with options not implemented"
