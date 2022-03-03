module Internal.Format exposing
    ( era
    , month
    , number
    , period
    , weekday
    , year
    )

import Internal.FormatSymbols as Sym
import Internal.Structures as Structs
import Time


weekday : Structs.WeekdayNames -> Time.Weekday -> String
weekday weekdayNames wkday =
    case wkday of
        Time.Mon ->
            weekdayNames.mon

        Time.Tue ->
            weekdayNames.tue

        Time.Wed ->
            weekdayNames.wed

        Time.Thu ->
            weekdayNames.thu

        Time.Fri ->
            weekdayNames.fri

        Time.Sat ->
            weekdayNames.sat

        Time.Sun ->
            weekdayNames.sun


month : Structs.MonthNames -> Time.Month -> String
month monthNames mnth =
    case mnth of
        Time.Jan ->
            monthNames.jan

        Time.Feb ->
            monthNames.feb

        Time.Mar ->
            monthNames.mar

        Time.Apr ->
            monthNames.apr

        Time.May ->
            monthNames.may

        Time.Jun ->
            monthNames.jun

        Time.Jul ->
            monthNames.jul

        Time.Aug ->
            monthNames.aug

        Time.Sep ->
            monthNames.sep

        Time.Oct ->
            monthNames.oct

        Time.Nov ->
            monthNames.nov

        Time.Dec ->
            monthNames.dec


year : Sym.NumberWidth -> Int -> String
year numberWidth yr =
    let
        yearNum =
            if yr > 0 then
                yr

            else
                (yr * -1) + 1
    in
    number numberWidth yearNum


era : Structs.EraNames -> Int -> String
era eraNames yr =
    if yr > 0 then
        eraNames.ad

    else
        eraNames.bc


period : Structs.PeriodNames -> Int -> String
period periodNames hour =
    if hour > 11 then
        periodNames.pm

    else
        periodNames.am


number : Sym.NumberWidth -> Int -> String
number numberWidth num =
    case numberWidth of
        Sym.MinimumDigits ->
            String.fromInt num

        Sym.TwoDigit ->
            String.fromInt num
                |> String.right 2
                |> String.padLeft 2 '0'
