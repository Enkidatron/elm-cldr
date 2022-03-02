module Internal.FormatSymbols.Convert exposing
    ( fractionalSeconds
    , nameWidth
    , numberWidth
    , textWidth
    , width
    )

import Cldr.Format.Options as Opts
import Internal.FormatSymbols exposing (..)


textWidth : Opts.TextOption -> TextWidth
textWidth opt =
    case opt of
        Opts.Short ->
            Abbreviated

        Opts.Long ->
            Wide

        Opts.Narrow ->
            Narrow


numberWidth : Opts.NumberOption -> NumberWidth
numberWidth opt =
    case opt of
        Opts.Numeric ->
            MinimumDigits

        Opts.TwoDigit ->
            TwoDigit


width : Opts.NumberOrTextOption -> Width
width opt =
    case opt of
        Opts.Text text ->
            Text (textWidth text)

        Opts.Number number ->
            Number (numberWidth number)


nameWidth : Opts.NameOption -> NameWidth
nameWidth opt =
    case opt of
        Opts.LongName ->
            Long

        Opts.ShortName ->
            Short


fractionalSeconds : Opts.FractionalDigits -> Int
fractionalSeconds opt =
    case opt of
        Opts.One ->
            1

        Opts.Two ->
            2

        Opts.Three ->
            3
