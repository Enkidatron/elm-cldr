module Internal.Structures exposing
    ( EraNames
    , MonthNames
    , Pattern3
    , Patterns
    , PeriodNames
    , WeekdayNames
    , getPattern
    , getPattern3
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
