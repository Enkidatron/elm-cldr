module Generated.Sd exposing (sd, sd_Arab)

import Dict exposing (Dict)
import Internal.DayPeriodRule
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

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd : Internal.Locale.Locale
sd =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sd"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "صبح، منجهند"
                    , pm = "شام، منجهند"
                    , dayPeriods = Dict.fromList []
                    }
                , wide =
                    { am = "صبح، منجهند"
                    , pm = "منجهند، شام"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "صبح، منجهند"
                    , pm = "منجهند، شام"
                    , dayPeriods = Dict.fromList []
                    }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "y MMM d"
                , long = "y MMMM d"
                , full = "y MMMM d, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "جنوري"
                    , feb = "فيبروري"
                    , mar = "مارچ"
                    , apr = "اپريل"
                    , may = "مئي"
                    , jun = "جون"
                    , jul = "جولاءِ"
                    , aug = "آگسٽ"
                    , sep = "سيپٽمبر"
                    , oct = "آڪٽوبر"
                    , nov = "نومبر"
                    , dec = "ڊسمبر"
                    }
                , wide =
                    { jan = "جنوري"
                    , feb = "فيبروري"
                    , mar = "مارچ"
                    , apr = "اپريل"
                    , may = "مئي"
                    , jun = "جون"
                    , jul = "جولاءِ"
                    , aug = "آگسٽ"
                    , sep = "سيپٽمبر"
                    , oct = "آڪٽوبر"
                    , nov = "نومبر"
                    , dec = "ڊسمبر"
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
                    { jan = "جنوري"
                    , feb = "فيبروري"
                    , mar = "مارچ"
                    , apr = "اپريل"
                    , may = "مئي"
                    , jun = "جون"
                    , jul = "جولاءِ"
                    , aug = "آگسٽ"
                    , sep = "سيپٽمبر"
                    , oct = "آڪٽوبر"
                    , nov = "نومبر"
                    , dec = "ڊسمبر"
                    }
                , wide =
                    { jan = "جنوري"
                    , feb = "فيبروري"
                    , mar = "مارچ"
                    , apr = "اپريل"
                    , may = "مئي"
                    , jun = "جون"
                    , jul = "جولاءِ"
                    , aug = "آگسٽ"
                    , sep = "سيپٽمبر"
                    , oct = "آڪٽوبر"
                    , nov = "نومبر"
                    , dec = "ڊسمبر"
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
                    { sun = "آچر"
                    , mon = "سومر"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خميس"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                , wide =
                    { sun = "آچر"
                    , mon = "سومر"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خميس"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                , narrow =
                    { sun = "آچر"
                    , mon = "سو"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خم"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "آچر"
                    , mon = "سومر"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خميس"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                , wide =
                    { sun = "آچر"
                    , mon = "سومر"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خميس"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                , narrow =
                    { sun = "آچر"
                    , mon = "سو"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خم"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "CD" }
                , wide = { bc = "قبل مسيح", ad = "عيسوي کان پهرين" }
                , narrow = { bc = "BC", ad = "CD" }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
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
                , ( "GyMd", "M/d/y GGGGG" )
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
                , ( "MMMMW-count-one", "ھفتو W جو MMMM" )
                , ( "MMMMW-count-other", "ھفتو W جو MMMM" )
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
                , ( "yw-count-one", "ھفتو w جو Y" )
                , ( "yw-count-other", "ھفتو w جو Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd_Arab : Internal.Locale.Locale
sd_Arab =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sd"
            , script = Just "Arab"
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "صبح، منجهند"
                    , pm = "شام، منجهند"
                    , dayPeriods = Dict.fromList []
                    }
                , wide =
                    { am = "صبح، منجهند"
                    , pm = "منجهند، شام"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "صبح، منجهند"
                    , pm = "منجهند، شام"
                    , dayPeriods = Dict.fromList []
                    }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "y MMM d"
                , long = "y MMMM d"
                , full = "y MMMM d, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "جنوري"
                    , feb = "فيبروري"
                    , mar = "مارچ"
                    , apr = "اپريل"
                    , may = "مئي"
                    , jun = "جون"
                    , jul = "جولاءِ"
                    , aug = "آگسٽ"
                    , sep = "سيپٽمبر"
                    , oct = "آڪٽوبر"
                    , nov = "نومبر"
                    , dec = "ڊسمبر"
                    }
                , wide =
                    { jan = "جنوري"
                    , feb = "فيبروري"
                    , mar = "مارچ"
                    , apr = "اپريل"
                    , may = "مئي"
                    , jun = "جون"
                    , jul = "جولاءِ"
                    , aug = "آگسٽ"
                    , sep = "سيپٽمبر"
                    , oct = "آڪٽوبر"
                    , nov = "نومبر"
                    , dec = "ڊسمبر"
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
                    { jan = "جنوري"
                    , feb = "فيبروري"
                    , mar = "مارچ"
                    , apr = "اپريل"
                    , may = "مئي"
                    , jun = "جون"
                    , jul = "جولاءِ"
                    , aug = "آگسٽ"
                    , sep = "سيپٽمبر"
                    , oct = "آڪٽوبر"
                    , nov = "نومبر"
                    , dec = "ڊسمبر"
                    }
                , wide =
                    { jan = "جنوري"
                    , feb = "فيبروري"
                    , mar = "مارچ"
                    , apr = "اپريل"
                    , may = "مئي"
                    , jun = "جون"
                    , jul = "جولاءِ"
                    , aug = "آگسٽ"
                    , sep = "سيپٽمبر"
                    , oct = "آڪٽوبر"
                    , nov = "نومبر"
                    , dec = "ڊسمبر"
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
                    { sun = "آچر"
                    , mon = "سومر"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خميس"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                , wide =
                    { sun = "آچر"
                    , mon = "سومر"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خميس"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                , narrow =
                    { sun = "آچر"
                    , mon = "سو"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خم"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "آچر"
                    , mon = "سومر"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خميس"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                , wide =
                    { sun = "آچر"
                    , mon = "سومر"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خميس"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                , narrow =
                    { sun = "آچر"
                    , mon = "سو"
                    , tue = "اڱارو"
                    , wed = "اربع"
                    , thu = "خم"
                    , fri = "جمعو"
                    , sat = "ڇنڇر"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "CD" }
                , wide = { bc = "قبل مسيح", ad = "عيسوي کان پهرين" }
                , narrow = { bc = "BC", ad = "CD" }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
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
                , ( "GyMd", "M/d/y GGGGG" )
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
                , ( "MMMMW-count-one", "ھفتو W جو MMMM" )
                , ( "MMMMW-count-other", "ھفتو W جو MMMM" )
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
                , ( "yw-count-one", "ھفتو w جو Y" )
                , ( "yw-count-other", "ھفتو w جو Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
