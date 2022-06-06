module Generated.Alt.Root exposing (root)

import Cldr.Format.Options as Opts
import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.LanguageInfo
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
root : Internal.Locale.Locale
root =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "root"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                , wide = { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                , narrow =
                    { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "y MMM d"
                , long = "y MMMM d"
                , full = "y MMMM d, EEEE"
                }
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
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "d, E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "MM-dd" )
                , ( "MEd", "MM-dd, E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "MMM d, E" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "y-MM" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "y-MM-dd, E" )
                , ( "yMMM", "y MMM" )
                , ( "yMMMd", "y MMM d" )
                , ( "yMMMEd", "y MMM d, E" )
                , ( "yMMMM", "y MMMM" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-other", "'week' w 'of' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
