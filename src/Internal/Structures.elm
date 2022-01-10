module Internal.Structures exposing
    ( AmPmNames
    , EraNames
    , MonthNames
    , Patterns
    , WeekdayNames
    , getPattern
    )

import Cldr.Format.Length exposing (Length(..))


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


type alias AmPmNames =
    { am : String
    , pm : String
    }


type alias EraNames =
    { bc : String
    , ad : String
    }
