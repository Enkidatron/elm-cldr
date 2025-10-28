module Internal.Structures exposing
    ( DurationUnits
    , EraNames
    , ListPatternsUnit
    , MonthNames
    , Pattern3
    , Patterns
    , PeriodNames
    , Plural
    , WeekdayNames
    , getPattern
    , getPattern3
    , mapPattern
    , mapPattern3
    )

import Cldr.Format.Length exposing (Length(..))
import Dict exposing (Dict)
import Internal.FormatSymbols as Sym


type alias Patterns a =
    { short : a
    , medium : a
    , long : a
    , full : a
    }


getPattern : Patterns a -> Length -> a
getPattern patterns length =
    case length of
        Short ->
            patterns.short

        Medium ->
            patterns.medium

        Long ->
            patterns.long

        Full ->
            patterns.full


mapPattern : (a -> b) -> Patterns a -> Patterns b
mapPattern f pattern =
    { short = f pattern.short
    , medium = f pattern.medium
    , long = f pattern.long
    , full = f pattern.full
    }


type alias Pattern3 a =
    { abbreviated : a
    , wide : a
    , narrow : a
    }


getPattern3 : Pattern3 a -> Sym.TextWidth -> a
getPattern3 pattern textWidth =
    case textWidth of
        Sym.Abbreviated ->
            pattern.abbreviated

        Sym.Wide ->
            pattern.wide

        Sym.Narrow ->
            pattern.narrow


mapPattern3 : (a -> b) -> Pattern3 a -> Pattern3 b
mapPattern3 f pattern =
    { abbreviated = f pattern.abbreviated
    , wide = f pattern.wide
    , narrow = f pattern.narrow
    }


type alias MonthNames =
    { jan : String
    , feb : String
    , mar : String
    , apr : String
    , may : String
    , jun : String
    , jul : String
    , aug : String
    , sep : String
    , oct : String
    , nov : String
    , dec : String
    }


type alias WeekdayNames =
    { sun : String
    , mon : String
    , tue : String
    , wed : String
    , thu : String
    , fri : String
    , sat : String
    }


type alias PeriodNames =
    { am : String
    , pm : String
    , dayPeriods : Dict String String
    }


type alias EraNames =
    { bc : String
    , ad : String
    }


type alias DurationUnits a =
    { years : Plural a
    , months : Plural a
    , weeks : Plural a
    , days : Plural a
    , hours : Plural a
    , minutes : Plural a
    , seconds : Plural a
    , milliseconds : Plural a
    }


type alias Plural a =
    { other : String
    , one : Maybe a
    , two : Maybe a
    , zero : Maybe a
    , few : Maybe a
    , many : Maybe a
    }


type alias ListPatternsUnit =
    { start : String
    , middle : String
    , end : String
    , two : String
    }
