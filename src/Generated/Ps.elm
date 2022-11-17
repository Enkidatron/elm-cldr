module Generated.Ps exposing (ps, ps_PK)

{-|

@docs ps, ps_PK

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.Structures


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : y/M/d
  - Medium : y MMM d
  - Long : د y د MMMM d
  - Full : EEEE د y د MMMM d

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
ps : Internal.Locale.Locale
ps =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ps"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "غ.م.", pm = "غ.و.", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "غ.م.", pm = "غ.و.", dayPeriods = Dict.fromList [] }
                , narrow =
                    { am = "غ.م.", pm = "غ.و.", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "y/M/d"
                , medium = "y MMM d"
                , long = "د y د MMMM d"
                , full = "EEEE د y د MMMM d"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "جنوري"
                    , feb = "فبروري"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مۍ"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اګست"
                    , sep = "سېپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , wide =
                    { jan = "جنوري"
                    , feb = "فبروري"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مۍ"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اګست"
                    , sep = "سېپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , narrow =
                    { jan = "ج"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "ا"
                    , may = "م"
                    , jun = "ج"
                    , jul = "ج"
                    , aug = "ا"
                    , sep = "س"
                    , oct = "ا"
                    , nov = "ن"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "جنوري"
                    , feb = "فبروري"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مۍ"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اګست"
                    , sep = "سپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , wide =
                    { jan = "جنوري"
                    , feb = "فېبروري"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مۍ"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اګست"
                    , sep = "سپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
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
                    { sun = "يونۍ"
                    , mon = "دونۍ"
                    , tue = "درېنۍ"
                    , wed = "څلرنۍ"
                    , thu = "پينځنۍ"
                    , fri = "جمعه"
                    , sat = "اونۍ"
                    }
                , wide =
                    { sun = "يونۍ"
                    , mon = "دونۍ"
                    , tue = "درېنۍ"
                    , wed = "څلرنۍ"
                    , thu = "پينځنۍ"
                    , fri = "جمعه"
                    , sat = "اونۍ"
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
                    { sun = "يونۍ"
                    , mon = "دونۍ"
                    , tue = "درېنۍ"
                    , wed = "څلرنۍ"
                    , thu = "پينځنۍ"
                    , fri = "جمعه"
                    , sat = "اونۍ"
                    }
                , wide =
                    { sun = "يونۍ"
                    , mon = "دونۍ"
                    , tue = "درېنۍ"
                    , wed = "څلرنۍ"
                    , thu = "پينځنۍ"
                    , fri = "جمعه"
                    , sat = "اونۍ"
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
                { abbreviated = { bc = "له میلاد وړاندې", ad = "م." }
                , wide =
                    { bc = "له میلاد څخه وړاندې", ad = "له میلاد څخه وروسته" }
                , narrow = { bc = "له میلاد وړاندې", ad = "م." }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss (z)"
                , full = "H:mm:ss (zzzz)"
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
                , ( "MMMEd", "E, MMM d" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-one", "اونۍ‘ W د MMMM‘" )
                , ( "MMMMW-count-other", "اونۍ W د MMMM" )
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
                , ( "yw-count-one", "اونۍ w د Y" )
                , ( "yw-count-other", "اونۍ w د Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : y/M/d
  - Medium : y MMM d
  - Long : د y د MMMM d
  - Full : EEEE د y د MMMM d

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ps_PK : Internal.Locale.Locale
ps_PK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ps"
            , script = Nothing
            , territory = Just "PK"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "غ.م.", pm = "غ.و.", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "غ.م.", pm = "غ.و.", dayPeriods = Dict.fromList [] }
                , narrow =
                    { am = "غ.م.", pm = "غ.و.", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "y/M/d"
                , medium = "y MMM d"
                , long = "د y د MMMM d"
                , full = "EEEE د y د MMMM d"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "جنوري"
                    , feb = "فبروري"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مۍ"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اګست"
                    , sep = "سېپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , wide =
                    { jan = "جنوري"
                    , feb = "فبروري"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مۍ"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اګست"
                    , sep = "سېپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , narrow =
                    { jan = "ج"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "ا"
                    , may = "م"
                    , jun = "ج"
                    , jul = "ج"
                    , aug = "ا"
                    , sep = "س"
                    , oct = "ا"
                    , nov = "ن"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "جنوري"
                    , feb = "فبروري"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مۍ"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اګست"
                    , sep = "سپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , wide =
                    { jan = "جنوري"
                    , feb = "فېبروري"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مۍ"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اګست"
                    , sep = "سپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
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
                    { sun = "يونۍ"
                    , mon = "دونۍ"
                    , tue = "درېنۍ"
                    , wed = "څلرنۍ"
                    , thu = "پينځنۍ"
                    , fri = "جمعه"
                    , sat = "اونۍ"
                    }
                , wide =
                    { sun = "يونۍ"
                    , mon = "دونۍ"
                    , tue = "درېنۍ"
                    , wed = "څلرنۍ"
                    , thu = "پينځنۍ"
                    , fri = "جمعه"
                    , sat = "اونۍ"
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
                    { sun = "يونۍ"
                    , mon = "دونۍ"
                    , tue = "درېنۍ"
                    , wed = "څلرنۍ"
                    , thu = "پينځنۍ"
                    , fri = "جمعه"
                    , sat = "اونۍ"
                    }
                , wide =
                    { sun = "يونۍ"
                    , mon = "دونۍ"
                    , tue = "درېنۍ"
                    , wed = "څلرنۍ"
                    , thu = "پينځنۍ"
                    , fri = "جمعه"
                    , sat = "اونۍ"
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
                { abbreviated = { bc = "له میلاد وړاندې", ad = "م." }
                , wide =
                    { bc = "له میلاد څخه وړاندې", ad = "له میلاد څخه وروسته" }
                , narrow = { bc = "له میلاد وړاندې", ad = "م." }
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
                , ( "MMMEd", "E, MMM d" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-one", "اونۍ‘ W د MMMM‘" )
                , ( "MMMMW-count-other", "اونۍ W د MMMM" )
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
                , ( "yw-count-one", "اونۍ w د Y" )
                , ( "yw-count-other", "اونۍ w د Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
