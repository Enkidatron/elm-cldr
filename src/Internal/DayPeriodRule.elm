module Internal.DayPeriodRule exposing
    ( DayPeriodRule(..)
    , Granularity(..)
    , HourMinute
    , bestMatch
    , dayPeriod
    , granularity
    , isMatch
    )

import Internal.FormatSymbols as Sym
import Time


type alias HourMinute =
    ( Int, Int )


type DayPeriodRule
    = At HourMinute String
    | FromBefore HourMinute HourMinute String


dayPeriod : DayPeriodRule -> String
dayPeriod rule =
    case rule of
        At _ name ->
            name

        FromBefore _ _ name ->
            name


type Granularity
    = MatchHour
    | MatchMinute
    | MatchSecond


granularity : List Sym.FormatWithLiteral -> Granularity
granularity =
    granularityHelper MatchHour


granularityHelper : Granularity -> List Sym.FormatWithLiteral -> Granularity
granularityHelper granSoFar symbols =
    case symbols of
        [] ->
            granSoFar

        (Sym.Symbol (Sym.Time (Sym.Minute _))) :: rest ->
            granularityHelper MatchMinute rest

        (Sym.Symbol (Sym.Time (Sym.Second _))) :: _ ->
            MatchSecond

        _ :: rest ->
            granularityHelper granSoFar rest


isMatch : Granularity -> Time.Zone -> Time.Posix -> DayPeriodRule -> Bool
isMatch gran zone posix rule =
    case rule of
        At at _ ->
            compareHelper gran at zone posix == EQ

        FromBefore from before _ ->
            (compareHelper gran from zone posix /= LT)
                && (compareHelper gran before zone posix == LT)


compareHelper : Granularity -> HourMinute -> Time.Zone -> Time.Posix -> Basics.Order
compareHelper gran ( hour, minute ) zone posix =
    case gran of
        MatchHour ->
            compare (Time.toHour zone posix) hour

        MatchMinute ->
            compare ( Time.toHour zone posix, Time.toMinute zone posix ) ( hour, minute )

        MatchSecond ->
            compare ( Time.toHour zone posix, Time.toMinute zone posix, Time.toSecond zone posix ) ( hour, minute, 0 )


bestMatch : DayPeriodRule -> DayPeriodRule -> Basics.Order
bestMatch ruleA ruleB =
    case ( ruleA, ruleB ) of
        ( At _ _, At _ _ ) ->
            EQ

        ( At _ _, FromBefore _ _ _ ) ->
            GT

        ( FromBefore _ _ _, At _ _ ) ->
            LT

        ( FromBefore _ _ _, FromBefore _ _ _ ) ->
            EQ
