module Generated.As exposing (locale_as)

{-|

@docs locale_as

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

  - Short : d-M-y
  - Medium : dd-MM-y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h.mm
  - Medium : a h.mm.ss
  - Long : a h.mm.ss z
  - Full : a h.mm.ss zzzz

-}
locale_as : Internal.Locale.Locale
locale_as =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "as"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "পূৰ্বাহ্ন"
                    , pm = "অপৰাহ্ন"
                    , dayPeriods = Dict.fromList []
                    }
                , wide =
                    { am = "পূৰ্বাহ্ন"
                    , pm = "অপৰাহ্ন"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "পূৰ্বাহ্ন"
                    , pm = "অপৰাহ্ন"
                    , dayPeriods = Dict.fromList []
                    }
                }
            , datePatterns =
                { short = "d-M-y"
                , medium = "dd-MM-y"
                , long = "d MMMM, y"
                , full = "EEEE, d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "জানু"
                    , feb = "ফেব্ৰু"
                    , mar = "মাৰ্চ"
                    , apr = "এপ্ৰিল"
                    , may = "মে’"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগ"
                    , sep = "ছেপ্তে"
                    , oct = "অক্টো"
                    , nov = "নৱে"
                    , dec = "ডিচে"
                    }
                , wide =
                    { jan = "জানুৱাৰী"
                    , feb = "ফেব্ৰুৱাৰী"
                    , mar = "মাৰ্চ"
                    , apr = "এপ্ৰিল"
                    , may = "মে’"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগষ্ট"
                    , sep = "ছেপ্তেম্বৰ"
                    , oct = "অক্টোবৰ"
                    , nov = "নৱেম্বৰ"
                    , dec = "ডিচেম্বৰ"
                    }
                , narrow =
                    { jan = "জ"
                    , feb = "ফ"
                    , mar = "ম"
                    , apr = "এ"
                    , may = "ম"
                    , jun = "জ"
                    , jul = "জ"
                    , aug = "আ"
                    , sep = "ছ"
                    , oct = "অ"
                    , nov = "ন"
                    , dec = "ড"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "জানু"
                    , feb = "ফেব্ৰু"
                    , mar = "মাৰ্চ"
                    , apr = "এপ্ৰিল"
                    , may = "মে’"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগ"
                    , sep = "ছেপ্তে"
                    , oct = "অক্টো"
                    , nov = "নৱে"
                    , dec = "ডিচে"
                    }
                , wide =
                    { jan = "জানুৱাৰী"
                    , feb = "ফেব্ৰুৱাৰী"
                    , mar = "মাৰ্চ"
                    , apr = "এপ্ৰিল"
                    , may = "মে’"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগষ্ট"
                    , sep = "ছেপ্তেম্বৰ"
                    , oct = "অক্টোবৰ"
                    , nov = "নৱেম্বৰ"
                    , dec = "ডিচেম্বৰ"
                    }
                , narrow =
                    { jan = "জ"
                    , feb = "ফ"
                    , mar = "ম"
                    , apr = "এ"
                    , may = "ম"
                    , jun = "জ"
                    , jul = "জ"
                    , aug = "আ"
                    , sep = "ছ"
                    , oct = "অ"
                    , nov = "ন"
                    , dec = "ড"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "দেও"
                    , mon = "সোম"
                    , tue = "মঙ্গল"
                    , wed = "বুধ"
                    , thu = "বৃহ"
                    , fri = "শুক্ৰ"
                    , sat = "শনি"
                    }
                , wide =
                    { sun = "দেওবাৰ"
                    , mon = "সোমবাৰ"
                    , tue = "মঙ্গলবাৰ"
                    , wed = "বুধবাৰ"
                    , thu = "বৃহস্পতিবাৰ"
                    , fri = "শুক্ৰবাৰ"
                    , sat = "শনিবাৰ"
                    }
                , narrow =
                    { sun = "দ"
                    , mon = "স"
                    , tue = "ম"
                    , wed = "ব"
                    , thu = "ব"
                    , fri = "শ"
                    , sat = "শ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "দেও"
                    , mon = "সোম"
                    , tue = "মঙ্গল"
                    , wed = "বুধ"
                    , thu = "বৃহ"
                    , fri = "শুক্ৰ"
                    , sat = "শনি"
                    }
                , wide =
                    { sun = "দেওবাৰ"
                    , mon = "সোমবাৰ"
                    , tue = "মঙ্গলবাৰ"
                    , wed = "বুধবাৰ"
                    , thu = "বৃহস্পতিবাৰ"
                    , fri = "শুক্ৰবাৰ"
                    , sat = "শনিবাৰ"
                    }
                , narrow =
                    { sun = "দ"
                    , mon = "স"
                    , tue = "ম"
                    , wed = "ব"
                    , thu = "ব"
                    , fri = "শ"
                    , sat = "শ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "খ্ৰীঃ পূঃ", ad = "খ্ৰীঃ" }
                , wide = { bc = "খ্ৰীষ্টপূৰ্ব", ad = "খ্ৰীষ্টাব্দ" }
                , narrow = { bc = "খ্ৰীঃ পূঃ", ad = "খ্ৰীঃ" }
                }
            , timePatterns =
                { short = "a h.mm"
                , medium = "a h.mm.ss"
                , long = "a h.mm.ss z"
                , full = "a h.mm.ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E a h:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E a h:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "a h" )
                , ( "H", "HH" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd-MM" )
                , ( "MEd", "E, dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMMৰ সপ্তাহ W" )
                , ( "MMMMW-count-other", "MMMMৰ সপ্তাহ W" )
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
                , ( "yw-count-one", "Yৰ সপ্তাহ w" )
                , ( "yw-count-other", "Yৰ সপ্তাহ w" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
