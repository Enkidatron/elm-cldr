module Generated.Jv exposing (jv)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
jv : Internal.Locale.Locale
jv =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "jv"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "Isuk", pm = "Wengi", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "Isuk", pm = "Wengi", dayPeriods = Dict.fromList [] }
                , narrow =
                    { am = "Isuk", pm = "Wengi", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "dd-MM-y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mar"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Agt"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Maret"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Agustus"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Desember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mar"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Agt"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Maret"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Agustus"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Desember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Ahad"
                    , mon = "Sen"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kam"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Senin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Kamis"
                    , fri = "Jumat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "S"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Ahad"
                    , mon = "Sen"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kam"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Senin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Kamis"
                    , fri = "Jumat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "S"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "SM", ad = "M" }
                , wide = { bc = "Sakdurunge Masehi", ad = "Masehi" }
                , narrow = { bc = "SM", ad = "M" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
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
                , ( "Ed", "E, d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-other", "'pekan' W 'ing' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM-y" )
                , ( "yMd", "dd-MM-y" )
                , ( "yMEd", "E, dd-MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-other", "'pekan' w 'ing' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
