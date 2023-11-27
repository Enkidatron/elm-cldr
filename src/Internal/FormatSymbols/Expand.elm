module Internal.FormatSymbols.Expand exposing (date, time)

import Cldr.Format.Options as Opts
import Internal.FormatSymbols as Sym
import Internal.FormatSymbols.Convert as SymConv
import Internal.Options
import Maybe.Extra


date : Internal.Options.DateOptionsPlus a -> Sym.DateSymbol -> Sym.DateSymbol
date requested symbol =
    case symbol of
        Sym.Era era ->
            Sym.Era (Maybe.Extra.unwrap era SymConv.textWidth requested.era)

        Sym.Year year ->
            Sym.Year (Maybe.Extra.unwrap year SymConv.numberWidth requested.year)

        Sym.YearOfWeek year ->
            Sym.YearOfWeek (Maybe.Extra.unwrap year SymConv.numberWidth requested.year)

        Sym.Month month ->
            Sym.Month (Maybe.Extra.unwrap month SymConv.width requested.month)

        Sym.MonthStandalone month ->
            Sym.MonthStandalone (Maybe.Extra.unwrap month SymConv.width requested.month)

        Sym.Weekday weekday ->
            Sym.Weekday (Maybe.Extra.unwrap weekday SymConv.textWidth requested.weekday)

        Sym.WeekdayStandalone weekday ->
            Sym.WeekdayStandalone (Maybe.Extra.unwrap weekday SymConv.textWidth requested.weekday)

        Sym.Day day ->
            Sym.Day (Maybe.Extra.unwrap day SymConv.numberWidth requested.day)


time : Internal.Options.TimeOptionsPlus a -> Sym.TimeSymbol -> Sym.TimeSymbol
time requested symbol =
    case symbol of
        Sym.Period period ->
            Sym.Period (Maybe.Extra.unwrap period SymConv.textWidth requested.period)

        Sym.FlexibleDayPeriod flexDayPeriod ->
            Sym.FlexibleDayPeriod (Maybe.Extra.unwrap flexDayPeriod SymConv.textWidth requested.dayPeriod)

        Sym.Hour12From1 hour ->
            hourHelper requested.hour12
                { hour12 = Sym.Hour12From1
                , hour24 = Sym.Hour24From1
                , default = Sym.Hour12From1
                }
                hour
                requested.hour

        Sym.Hour24From0 hour ->
            hourHelper requested.hour12
                { hour12 = Sym.Hour12From0
                , hour24 = Sym.Hour24From0
                , default = Sym.Hour24From0
                }
                hour
                requested.hour

        Sym.Hour12From0 hour ->
            hourHelper requested.hour12
                { hour12 = Sym.Hour12From0
                , hour24 = Sym.Hour24From0
                , default = Sym.Hour12From0
                }
                hour
                requested.hour

        Sym.Hour24From1 hour ->
            hourHelper requested.hour12
                { hour12 = Sym.Hour12From1
                , hour24 = Sym.Hour24From1
                , default = Sym.Hour24From1
                }
                hour
                requested.hour

        Sym.Minute minute ->
            Sym.Minute (Maybe.Extra.unwrap minute SymConv.numberWidth requested.minute)

        Sym.Second second ->
            Sym.Second (Maybe.Extra.unwrap second SymConv.numberWidth requested.second)

        Sym.FractionalSeconds frac ->
            Sym.FractionalSeconds (Maybe.Extra.unwrap frac SymConv.fractionalSeconds requested.fractionalSecondDigits)

        Sym.ZoneNonLocationFormat zone ->
            Sym.ZoneNonLocationFormat (Maybe.Extra.unwrap zone SymConv.nameWidth requested.zone)

        Sym.ZoneIso8601Basic ->
            Sym.ZoneIso8601Basic

        Sym.ZoneGmtFormat zone ->
            Sym.ZoneGmtFormat (Maybe.Extra.unwrap zone SymConv.nameWidth requested.zone)

        Sym.ZoneGenericNonLocationFormat zone ->
            Sym.ZoneGenericNonLocationFormat (Maybe.Extra.unwrap zone SymConv.nameWidth requested.zone)


type alias HourHelperInfo =
    { hour12 : Sym.NumberWidth -> Sym.TimeSymbol
    , hour24 : Sym.NumberWidth -> Sym.TimeSymbol
    , default : Sym.NumberWidth -> Sym.TimeSymbol
    }


hourHelper : Maybe Opts.HourType -> HourHelperInfo -> Sym.NumberWidth -> Maybe Opts.NumberOption -> Sym.TimeSymbol
hourHelper requestedHourType info currentWidth requested =
    let
        width =
            Maybe.Extra.unwrap currentWidth SymConv.numberWidth requested
    in
    case requestedHourType of
        Just Opts.Hour12 ->
            info.hour12 width

        Just Opts.Hour24 ->
            info.hour24 width

        Nothing ->
            info.default width
