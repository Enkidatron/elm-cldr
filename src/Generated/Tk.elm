module Generated.Tk exposing (tk)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
tk : Internal.Locale.Locale
tk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "tk"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "go.öň"
                    , pm = "go.soň"
                    , dayPeriods = Dict.fromList []
                    }
                , wide =
                    { am = "günortadan öň"
                    , pm = "günortadan soň"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "öň", pm = "soň", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "d MMMM y EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ýan"
                    , feb = "few"
                    , mar = "mart"
                    , apr = "apr"
                    , may = "maý"
                    , jun = "iýun"
                    , jul = "iýul"
                    , aug = "awg"
                    , sep = "sen"
                    , oct = "okt"
                    , nov = "noý"
                    , dec = "dek"
                    }
                , wide =
                    { jan = "ýanwar"
                    , feb = "fewral"
                    , mar = "mart"
                    , apr = "aprel"
                    , may = "maý"
                    , jun = "iýun"
                    , jul = "iýul"
                    , aug = "awgust"
                    , sep = "sentýabr"
                    , oct = "oktýabr"
                    , nov = "noýabr"
                    , dec = "dekabr"
                    }
                , narrow =
                    { jan = "Ý"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "I"
                    , jul = "I"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Ýan"
                    , feb = "Few"
                    , mar = "Mar"
                    , apr = "Apr"
                    , may = "Maý"
                    , jun = "Iýun"
                    , jul = "Iýul"
                    , aug = "Awg"
                    , sep = "Sen"
                    , oct = "Okt"
                    , nov = "Noý"
                    , dec = "Dek"
                    }
                , wide =
                    { jan = "Ýanwar"
                    , feb = "Fewral"
                    , mar = "Mart"
                    , apr = "Aprel"
                    , may = "Maý"
                    , jun = "Iýun"
                    , jul = "Iýul"
                    , aug = "Awgust"
                    , sep = "Sentýabr"
                    , oct = "Oktýabr"
                    , nov = "Noýabr"
                    , dec = "Dekabr"
                    }
                , narrow =
                    { jan = "Ý"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "I"
                    , jul = "I"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ýek"
                    , mon = "duş"
                    , tue = "siş"
                    , wed = "çar"
                    , thu = "pen"
                    , fri = "ann"
                    , sat = "şen"
                    }
                , wide =
                    { sun = "ýekşenbe"
                    , mon = "duşenbe"
                    , tue = "sişenbe"
                    , wed = "çarşenbe"
                    , thu = "penşenbe"
                    , fri = "anna"
                    , sat = "şenbe"
                    }
                , narrow =
                    { sun = "Ý"
                    , mon = "D"
                    , tue = "S"
                    , wed = "Ç"
                    , thu = "P"
                    , fri = "A"
                    , sat = "Ş"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Ýek"
                    , mon = "Duş"
                    , tue = "Siş"
                    , wed = "Çar"
                    , thu = "Pen"
                    , fri = "Ann"
                    , sat = "Şen"
                    }
                , wide =
                    { sun = "Ýekşenbe"
                    , mon = "Duşenbe"
                    , tue = "Sişenbe"
                    , wed = "Çarşenbe"
                    , thu = "Penşenbe"
                    , fri = "Anna"
                    , sat = "Şenbe"
                    }
                , narrow =
                    { sun = "Ý"
                    , mon = "D"
                    , tue = "S"
                    , wed = "Ç"
                    , thu = "P"
                    , fri = "A"
                    , sat = "Ş"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "B.e.öň", ad = "B.e." }
                , wide = { bc = "Isadan öň", ad = "Isadan soň" }
                , narrow = { bc = "B.e.öň", ad = "B.e." }
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
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG dd.MM.y" )
                , ( "GyMMM", "G MMM y" )
                , ( "GyMMMd", "G d MMM y" )
                , ( "GyMMMEd", "G d MMM y E" )
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
                , ( "Md", "dd.MM" )
                , ( "MEd", "dd.MM E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "d MMM E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "d MMMM E" )
                , ( "MMMMW-count-one", "'hepde' W, MMMM" )
                , ( "MMMMW-count-other", "'hepde' W, MMMM" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "dd.MM.y E" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "d MMM y E" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-one", "'hepde' w, Y" )
                , ( "yw-count-other", "'hepde' w, Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
