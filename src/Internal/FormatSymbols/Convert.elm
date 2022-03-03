module Internal.FormatSymbols.Convert exposing
    ( fractionalSeconds
    , nameWidth
    , numberWidth
    , textWidth
    , width
    )

import Cldr.Format.Options as Opts
import Internal.FormatSymbols as Sym


textWidth : Opts.TextOption -> Sym.TextWidth
textWidth opt =
    case opt of
        Opts.Short ->
            Sym.Abbreviated

        Opts.Long ->
            Sym.Wide

        Opts.Narrow ->
            Sym.Narrow


numberWidth : Opts.NumberOption -> Sym.NumberWidth
numberWidth opt =
    case opt of
        Opts.Numeric ->
            Sym.MinimumDigits

        Opts.TwoDigit ->
            Sym.TwoDigit


width : Opts.NumberOrTextOption -> Sym.Width
width opt =
    case opt of
        Opts.Text text ->
            Sym.Text (textWidth text)

        Opts.Number number ->
            Sym.Number (numberWidth number)


nameWidth : Opts.NameOption -> Sym.NameWidth
nameWidth opt =
    case opt of
        Opts.LongName ->
            Sym.Long

        Opts.ShortName ->
            Sym.Short


fractionalSeconds : Opts.FractionalDigits -> Int
fractionalSeconds opt =
    case opt of
        Opts.One ->
            1

        Opts.Two ->
            2

        Opts.Three ->
            3
