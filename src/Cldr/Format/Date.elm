module Format.Date exposing (format)

{-|


# Date Formatting

@docs format

-}

import Date exposing (Date)
import Cldr.Format.Length exposing (Length(..))
import Internal.Locale exposing (Locale(..))


{-|

    import Cldr.Format.Length exposing (Length(..))
    import Cldr.Locale.En exposing (en)
    import Date
    import Time exposing (Month(..))

    format Short en (Date.fromCalendarDate 2000 Jan 1)
    --> "1/1/00"

-}
format : Length -> Locale -> Date -> String
format length (Locale internal) =
    case length of
        Short ->
            Date.formatWithLanguage (Locale.Internal.toDateLanguage internal)
                internal.datePatterns.short

        Medium ->
            Date.formatWithLanguage (Locale.Internal.toDateLanguage internal)
                internal.datePatterns.medium

        Long ->
            Date.formatWithLanguage (Locale.Internal.toDateLanguage internal)
                internal.datePatterns.long

        Full ->
            Date.formatWithLanguage (Locale.Internal.toDateLanguage internal)
                internal.datePatterns.full
