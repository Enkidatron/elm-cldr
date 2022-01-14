module Cldr.Format.Date exposing (format)

{-|


# Date Formatting

@docs format

-}

import Cldr.Format.Length exposing (Length(..))
import Date exposing (Date)
import Internal.Locale exposing (Locale(..))


{-| Formats a `Date` using the specified `Length` and `Locale`.

    import Cldr.Format.Length exposing (Length(..))
    import Cldr.Locale exposing (en)
    import Date
    import Time exposing (Month(..))

    format Short en (Date.fromCalendarDate 2000 Jan 1)
    --> "1/1/00"

-}
format : Length -> Locale -> Date -> String
format length (Locale internal) =
    case length of
        Short ->
            Date.formatWithLanguage (Internal.Locale.toDateLanguage internal)
                internal.datePatterns.short

        Medium ->
            Date.formatWithLanguage (Internal.Locale.toDateLanguage internal)
                internal.datePatterns.medium

        Long ->
            Date.formatWithLanguage (Internal.Locale.toDateLanguage internal)
                internal.datePatterns.long

        Full ->
            Date.formatWithLanguage (Internal.Locale.toDateLanguage internal)
                internal.datePatterns.full
