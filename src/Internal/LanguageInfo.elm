module Internal.LanguageInfo exposing (..)

import Dict exposing (Dict)
import Internal.DayPeriodRule exposing (DayPeriodRule)
import Internal.Locale
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


empty : Internal.Locale.Locale
empty =
    Internal.Locale.Locale
        { languageId = Internal.Locale.Lang (Tagged "") Nothing Nothing Nothing
        , monthFormatNames =
            { abbreviated =
                { jan = "M01"
                , feb = "M02"
                , mar = "M03"
                , apr = "M04"
                , may = "M05"
                , jun = "M06"
                , jul = "M07"
                , aug = "M08"
                , sep = "M09"
                , oct = "M10"
                , nov = "M11"
                , dec = "M12"
                }
            , wide =
                { jan = "M01"
                , feb = "M02"
                , mar = "M03"
                , apr = "M04"
                , may = "M05"
                , jun = "M06"
                , jul = "M07"
                , aug = "M08"
                , sep = "M09"
                , oct = "M10"
                , nov = "M11"
                , dec = "M12"
                }
            , narrow =
                { jan = "1"
                , feb = "2"
                , mar = "3"
                , apr = "4"
                , may = "5"
                , jun = "6"
                , jul = "7"
                , aug = "8"
                , sep = "9"
                , oct = "10"
                , nov = "11"
                , dec = "12"
                }
            }
        , monthStandaloneNames =
            { abbreviated =
                { jan = "M01"
                , feb = "M02"
                , mar = "M03"
                , apr = "M04"
                , may = "M05"
                , jun = "M06"
                , jul = "M07"
                , aug = "M08"
                , sep = "M09"
                , oct = "M10"
                , nov = "M11"
                , dec = "M12"
                }
            , wide =
                { jan = "M01"
                , feb = "M02"
                , mar = "M03"
                , apr = "M04"
                , may = "M05"
                , jun = "M06"
                , jul = "M07"
                , aug = "M08"
                , sep = "M09"
                , oct = "M10"
                , nov = "M11"
                , dec = "M12"
                }
            , narrow =
                { jan = "1"
                , feb = "2"
                , mar = "3"
                , apr = "4"
                , may = "5"
                , jun = "6"
                , jul = "7"
                , aug = "8"
                , sep = "9"
                , oct = "10"
                , nov = "11"
                , dec = "12"
                }
            }
        , weekdayFormatNames =
            { abbreviated =
                { sun = "Sun"
                , mon = "Mon"
                , tue = "Tue"
                , wed = "Wed"
                , thu = "Thu"
                , fri = "Fri"
                , sat = "Sat"
                }
            , wide =
                { sun = "Sun"
                , mon = "Mon"
                , tue = "Tue"
                , wed = "Wed"
                , thu = "Thu"
                , fri = "Fri"
                , sat = "Sat"
                }
            , narrow =
                { sun = "S"
                , mon = "M"
                , tue = "T"
                , wed = "W"
                , thu = "T"
                , fri = "F"
                , sat = "S"
                }
            }
        , weekdayStandaloneNames =
            { abbreviated =
                { sun = "Sun"
                , mon = "Mon"
                , tue = "Tue"
                , wed = "Wed"
                , thu = "Thu"
                , fri = "Fri"
                , sat = "Sat"
                }
            , wide =
                { sun = "Sun"
                , mon = "Mon"
                , tue = "Tue"
                , wed = "Wed"
                , thu = "Thu"
                , fri = "Fri"
                , sat = "Sat"
                }
            , narrow =
                { sun = "S"
                , mon = "M"
                , tue = "T"
                , wed = "W"
                , thu = "T"
                , fri = "F"
                , sat = "S"
                }
            }
        , eraNames =
            { abbreviated = { bc = "BCE", ad = "CE" }
            , wide = { bc = "BCE", ad = "CE" }
            , narrow = { bc = "BCE", ad = "CE" }
            }
        , periodNames =
            { abbreviated =
                { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
            , wide = { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
            , narrow = { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
            }
        , dayPeriodRuleSet = []
        , dateSymbols =
            { short =
                []
            , medium =
                []
            , long =
                []
            , full =
                []
            }
        , timeSymbols =
            { short =
                []
            , medium =
                []
            , long =
                []
            , full =
                []
            }
        , dateTimeTokens =
            { short = []
            , medium = []
            , long = []
            , full = []
            }
        , availableFormats =
            []
        , hour12ByDefault = False
        }
