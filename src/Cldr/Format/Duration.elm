module Cldr.Format.Duration exposing (Duration, Length(..), format, zero)

{-|


# Duration Formatting

@docs Duration, Length, format, zero

-}

import Cldr.Format.Number
import Internal.FormatSymbols as Sym
import Internal.Locale exposing (Locale(..))
import Internal.PluralRule as PluralRule exposing (PluralRule)
import Internal.Structures as Structs


{-| There are three lengths that can be used when formatting a duration.
-}
type Length
    = Narrow
    | Short
    | Long


{-| A duration that can be formatted.

To be consistent with `Intl.DurationFormat`, years are the largest units.
This only accepts integers for the various units, which is consistent with passing an object into `Intl.DurationFormat`. The browser's `Intl.DurationFormat` can also accept an ISO8601 duration string directly (which can have decimals in the numbers), although JS has the "luxury" of simply throwing an error if you provide a combination of decimals that it doesn't know how to handle. To use this library, you have to turn "1.5 hours" into `{zero | hours = 1, minutes = 30}` yourself.

-}
type alias Duration =
    { years : Int
    , months : Int
    , weeks : Int
    , days : Int
    , hours : Int
    , minutes : Int
    , seconds : Int
    , milliseconds : Int
    }


{-| An empty duration. All units are set to 0.
-}
zero : Duration
zero =
    { years = 0
    , months = 0
    , weeks = 0
    , days = 0
    , hours = 0
    , minutes = 0
    , seconds = 0
    , milliseconds = 0
    }


{-| Formats a `Duration` using the specified `Length` and `Locale`

    import Cldr.Locale exposing (en)

    format Long en { zero | hours = 1, minutes = 30}
    --> "1 hour, 30 minutes"

-}
format : Length -> Locale -> Duration -> String
format length (Locale locale) duration =
    duration
        |> toList length locale
        |> removeZeroes
        |> toUnitText locale
        |> joinListOfText length locale


toList : Length -> Internal.Locale.Internal -> Duration -> List ( Int, Structs.Plural ( PluralRule, String ) )
toList length internal duration =
    let
        durationUnits =
            Structs.getPattern3 internal.durationUnits (lengthToSymWidth length)
    in
    [ ( duration.years, durationUnits.years )
    , ( duration.months, durationUnits.months )
    , ( duration.weeks, durationUnits.weeks )
    , ( duration.days, durationUnits.days )
    , ( duration.hours, durationUnits.hours )
    , ( duration.minutes, durationUnits.minutes )
    , ( duration.seconds, durationUnits.seconds )
    , ( duration.milliseconds, durationUnits.milliseconds )
    ]


lengthToSymWidth : Length -> Sym.TextWidth
lengthToSymWidth length =
    case length of
        Long ->
            Sym.Wide

        Short ->
            Sym.Abbreviated

        Narrow ->
            Sym.Narrow


removeZeroes : List ( Int, a ) -> List ( Int, a )
removeZeroes =
    List.filter (Tuple.first >> (/=) 0)


toUnitText : Internal.Locale.Internal -> List ( Int, Structs.Plural ( PluralRule, String ) ) -> List String
toUnitText internal =
    List.map
        (\( x, pluralString ) ->
            String.replace "{0}"
                (Cldr.Format.Number.format Cldr.Format.Number.Decimal (Locale internal) (toFloat x))
                (getStringForNumber x pluralString)
        )


getStringForNumber : Int -> Structs.Plural ( PluralRule, String ) -> String
getStringForNumber number plural =
    [ plural.one
    , plural.two
    , plural.zero
    , plural.few
    , plural.many
    ]
        |> List.filterMap identity
        |> List.filter (\( rule, _ ) -> PluralRule.match rule number)
        |> List.head
        |> Maybe.map Tuple.second
        |> Maybe.withDefault plural.other


joinListOfText : Length -> Internal.Locale.Internal -> List String -> String
joinListOfText length internal items =
    let
        listPatternsUnit =
            Structs.getPattern3 internal.listPatternsUnit (lengthToSymWidth length)
    in
    case items of
        [] ->
            ""

        [ item ] ->
            item

        [ first, second ] ->
            applyPattern listPatternsUnit.two first second

        first :: second :: rest ->
            joinHelper listPatternsUnit (applyPattern listPatternsUnit.start first second) rest


joinHelper : Structs.ListPatternsUnit -> String -> List String -> String
joinHelper listPatternsUnit soFar remaining =
    case remaining of
        [] ->
            soFar

        [ last ] ->
            applyPattern listPatternsUnit.end soFar last

        next :: rest ->
            joinHelper listPatternsUnit (applyPattern listPatternsUnit.middle soFar next) rest


applyPattern : String -> String -> String -> String
applyPattern pattern first second =
    pattern
        |> String.replace "{0}" first
        |> String.replace "{1}" second
