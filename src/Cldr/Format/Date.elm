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
import Internal.Format
import Internal.FormatSymbols as Sym
import Internal.FormatSymbols.Expand as Expand
import Internal.Locale exposing (Locale(..))
import Internal.Options
import Internal.Structures as Structs
import List.Extra


{-| Dates can be formatted using a
`Cldr.Format.Length.Length` or `Cldr.Format.Options.DateOptions`.
-}
type FormatType
    = WithLength Length
    | WithOptions DateOptions


{-| Formats a `Date` using the specified `FormatType` and `Locale`.

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
    formatDate internal
        (formatDateSymbolsForType internal formatType)


formatDate : Internal.Locale.Internal -> List Sym.DateWithLiteral -> Date -> String
formatDate internal symbols date =
    List.map (Sym.unwrap (formatSymbol internal date)) symbols
        |> String.concat


formatSymbol : Internal.Locale.Internal -> Date -> Sym.DateSymbol -> String
formatSymbol internal date symbol =
    case symbol of
        Sym.Era textWidth ->
            formatEra internal.eraNames textWidth date

        Sym.Year numberWidth ->
            formatYear numberWidth date

        Sym.YearOfWeek numberWidth ->
            formatYearOfWeek numberWidth date

        Sym.Month width ->
            formatMonth internal.monthFormatNames width date

        Sym.MonthStandalone width ->
            formatMonth internal.monthStandaloneNames width date

        Sym.Weekday textWidth ->
            formatWeekday internal.weekdayFormatNames textWidth date

        Sym.WeekdayStandalone textWidth ->
            formatWeekday internal.weekdayStandaloneNames textWidth date

        Sym.Day numberWidth ->
            formatDay numberWidth date


formatTextWidthHelper : (a -> Date -> String) -> Structs.Pattern3 a -> Sym.TextWidth -> Date -> String
formatTextWidthHelper formatFun patterns textWidth =
    formatFun (Structs.getPattern3 patterns textWidth)


formatEra : Structs.Pattern3 Structs.EraNames -> Sym.TextWidth -> Date -> String
formatEra =
    formatTextWidthHelper formatEraHelper


formatEraHelper : Structs.EraNames -> Date -> String
formatEraHelper eraNames date =
    Internal.Format.era eraNames (Date.year date)


formatYear : Sym.NumberWidth -> Date -> String
formatYear numberWidth date =
    Internal.Format.year numberWidth (Date.year date)


formatYearOfWeek : Sym.NumberWidth -> Date -> String
formatYearOfWeek numberWidth date =
    Internal.Format.year numberWidth (Date.weekYear date)


formatMonth : Structs.Pattern3 Structs.MonthNames -> Sym.Width -> Date -> String
formatMonth monthPattern3 width =
    case width of
        Sym.Text textWidth ->
            formatTextWidthHelper formatMonthHelper monthPattern3 textWidth

        Sym.Number numberWidth ->
            formatMonthNumberHelper numberWidth


formatMonthNumberHelper : Sym.NumberWidth -> Date -> String
formatMonthNumberHelper numberWidth date =
    Internal.Format.number numberWidth (Date.monthNumber date)


formatMonthHelper : Structs.MonthNames -> Date -> String
formatMonthHelper monthNames date =
    Internal.Format.month monthNames (Date.month date)


formatWeekday : Structs.Pattern3 Structs.WeekdayNames -> Sym.TextWidth -> Date -> String
formatWeekday =
    formatTextWidthHelper formatWeekdayHelper


formatWeekdayHelper : Structs.WeekdayNames -> Date -> String
formatWeekdayHelper weekdayNames date =
    Internal.Format.weekday weekdayNames (Date.weekday date)


formatDay : Sym.NumberWidth -> Date -> String
formatDay numberWidth date =
    Internal.Format.number numberWidth (Date.day date)


formatDateSymbolsForType : Internal.Locale.Internal -> FormatType -> List Sym.DateWithLiteral
formatDateSymbolsForType internal formatType =
    case formatType of
        WithLength length ->
            Structs.getPattern internal.dateSymbols length

        WithOptions options ->
            formatDateSymbolsFromOptions internal options


formatDateSymbolsFromOptions : Internal.Locale.Internal -> DateOptions -> List Sym.DateWithLiteral
formatDateSymbolsFromOptions internal requestedOptions =
    internal.availableFormats
        |> List.filterMap Internal.Locale.toDateAvailableFormat
        |> List.Extra.maximumBy (.options >> Internal.Options.dateMatchScore requestedOptions)
        |> Maybe.map (.formatSymbols >> expandFormatDateSymbols requestedOptions)
        |> Maybe.withDefault []


expandFormatDateSymbols : DateOptions -> List Sym.DateWithLiteral -> List Sym.DateWithLiteral
expandFormatDateSymbols requested formatSymbols =
    List.map (Sym.mapLiteral (Expand.date requested)) formatSymbols
