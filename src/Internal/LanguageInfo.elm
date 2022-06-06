module Internal.LanguageInfo exposing (..)

import Dict exposing (Dict)
import Internal.DayPeriodRule exposing (DayPeriodRule)
import Internal.Structures exposing (EraNames, MonthNames, Pattern3, Patterns, PeriodNames, WeekdayNames)
import Tagged exposing (Tagged(..))


type alias DayPeriodsInfo =
    Dict String (List DayPeriodRule)


type alias LanguageInfo =
    { language : String
    , script : Maybe String
    , territory : Maybe String
    , variant : Maybe String
    , periodNames : Pattern3 PeriodNames
    , datePatterns : Patterns String
    , monthFormatNames : Pattern3 MonthNames
    , monthStandaloneNames : Pattern3 MonthNames
    , weekdayFormatNames : Pattern3 WeekdayNames
    , weekdayStandaloneNames : Pattern3 WeekdayNames
    , eraNames : Pattern3 EraNames
    , timePatterns : Patterns String
    , dateTimePatterns : Patterns String
    , availableFormats : List ( String, String )
    , timeSkeletons : Patterns String
    }
