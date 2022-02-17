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
import Internal.Options
import Internal.Structures
import List.Extra


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
    Date.formatWithLanguage (Internal.Locale.toDateLanguage internal)
        (formatStringForType internal formatType)


formatStringForType : Internal.Locale.Internal -> FormatType -> String
formatStringForType internal formatType =
    case formatType of
        WithLength length ->
            Internal.Structures.getPattern internal.datePatterns length

        WithOptions options ->
            formatStringFromOptions internal options


formatStringFromOptions : Internal.Locale.Internal -> DateOptions -> String
formatStringFromOptions internal requestedOptions =
    internal.availableFormats
        |> List.filterMap Internal.Locale.toDateAvailableFormat
        |> List.Extra.maximumBy (.options >> Internal.Options.dateMatchScore requestedOptions)
        |> Maybe.map (expandFormatString requestedOptions)
        |> Maybe.withDefault ""


expandFormatString : DateOptions -> Internal.Locale.DateAvailableFormat -> String
expandFormatString requested { options, formatString } =
    formatString
        |> replaceFormat .era eraFormat requested options
        |> replaceFormat .year yearFormat requested options
        |> replaceNumberOrTextFormat .month monthFormat requested options
        |> replaceFormat .day dayFormat requested options
        |> replaceFormat .weekday weekdayFormat requested options


replaceFormat : (a -> Maybe b) -> (b -> String) -> a -> a -> String -> String
replaceFormat getField toString requested candidate formatString =
    case ( getField requested, getField candidate ) of
        ( Just req, Just can ) ->
            String.replace (toString can) (toString req) formatString

        _ ->
            formatString


replaceNumberOrTextFormat : (a -> Maybe Cldr.Format.Options.NumberOrTextOption) -> (Cldr.Format.Options.NumberOrTextOption -> String) -> a -> a -> String -> String
replaceNumberOrTextFormat getField toString requested candidate formatString =
    case ( getField requested, getField candidate ) of
        ( Just (Cldr.Format.Options.Text req), Just (Cldr.Format.Options.Text can) ) ->
            String.replace (toString (Cldr.Format.Options.Text can)) (toString (Cldr.Format.Options.Text req)) formatString

        ( Just (Cldr.Format.Options.Number req), Just (Cldr.Format.Options.Number can) ) ->
            String.replace (toString (Cldr.Format.Options.Number can)) (toString (Cldr.Format.Options.Number req)) formatString

        _ ->
            formatString


eraFormat : Cldr.Format.Options.TextOption -> String
eraFormat opt =
    case opt of
        Cldr.Format.Options.Narrow ->
            "GGGGG"

        Cldr.Format.Options.Short ->
            "G"

        Cldr.Format.Options.Long ->
            "GGGG"


yearFormat : Cldr.Format.Options.NumberOption -> String
yearFormat opt =
    case opt of
        Cldr.Format.Options.TwoDigit ->
            "yy"

        Cldr.Format.Options.Numeric ->
            "y"


monthFormat : Cldr.Format.Options.NumberOrTextOption -> String
monthFormat opt =
    case opt of
        Cldr.Format.Options.Number Cldr.Format.Options.Numeric ->
            "M"

        Cldr.Format.Options.Number Cldr.Format.Options.TwoDigit ->
            "MM"

        Cldr.Format.Options.Text Cldr.Format.Options.Narrow ->
            "MMMMM"

        Cldr.Format.Options.Text Cldr.Format.Options.Short ->
            "MMM"

        Cldr.Format.Options.Text Cldr.Format.Options.Long ->
            "MMMM"


dayFormat : Cldr.Format.Options.NumberOption -> String
dayFormat opt =
    case opt of
        Cldr.Format.Options.Numeric ->
            "d"

        Cldr.Format.Options.TwoDigit ->
            "dd"


weekdayFormat : Cldr.Format.Options.TextOption -> String
weekdayFormat opt =
    case opt of
        Cldr.Format.Options.Narrow ->
            "EEEEE"

        Cldr.Format.Options.Short ->
            "E"

        Cldr.Format.Options.Long ->
            "EEEE"
