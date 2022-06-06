module Generated.Si exposing (si)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "si"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 1, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 1, 0 ) "night2"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
si : Internal.Locale.Locale
si =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "si"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "පෙ.ව."
                    , pm = "ප.ව."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "දවල්" )
                            , ( "evening1", "හවස" )
                            , ( "midnight", "මැදියම" )
                            , ( "morning1", "පාන්දර" )
                            , ( "morning2", "උදේ" )
                            , ( "night1", "රෑ" )
                            , ( "night2", "මැදියමට පසු" )
                            , ( "noon", "මධ්\u{200D}යාහ්නය" )
                            ]
                    }
                , wide =
                    { am = "පෙ.ව."
                    , pm = "ප.ව."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "දවල්" )
                            , ( "evening1", "හවස" )
                            , ( "midnight", "මැදියම" )
                            , ( "morning1", "පාන්දර" )
                            , ( "morning2", "උදේ" )
                            , ( "night1", "රෑ" )
                            , ( "night2", "මැදියමට පසු" )
                            , ( "noon", "මධ්\u{200D}යාහ්නය" )
                            ]
                    }
                , narrow =
                    { am = "පෙ"
                    , pm = "ප"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ද" )
                            , ( "evening1", "හ" )
                            , ( "midnight", "මැ" )
                            , ( "morning1", "පා" )
                            , ( "morning2", "උ" )
                            , ( "night1", "රෑ" )
                            , ( "night2", "මැ" )
                            , ( "noon", "ම" )
                            ]
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
                    { jan = "ජන"
                    , feb = "පෙබ"
                    , mar = "මාර්තු"
                    , apr = "අප්\u{200D}රේල්"
                    , may = "මැයි"
                    , jun = "ජූනි"
                    , jul = "ජූලි"
                    , aug = "අගෝ"
                    , sep = "සැප්"
                    , oct = "ඔක්"
                    , nov = "නොවැ"
                    , dec = "දෙසැ"
                    }
                , wide =
                    { jan = "ජනවාරි"
                    , feb = "පෙබරවාරි"
                    , mar = "මාර්තු"
                    , apr = "අප්\u{200D}රේල්"
                    , may = "මැයි"
                    , jun = "ජූනි"
                    , jul = "ජූලි"
                    , aug = "අගෝස්තු"
                    , sep = "සැප්තැම්බර්"
                    , oct = "ඔක්තෝබර්"
                    , nov = "නොවැම්බර්"
                    , dec = "දෙසැම්බර්"
                    }
                , narrow =
                    { jan = "ජ"
                    , feb = "පෙ"
                    , mar = "මා"
                    , apr = "අ"
                    , may = "මැ"
                    , jun = "ජූ"
                    , jul = "ජූ"
                    , aug = "අ"
                    , sep = "සැ"
                    , oct = "ඔ"
                    , nov = "නෙ"
                    , dec = "දෙ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ජන"
                    , feb = "පෙබ"
                    , mar = "මාර්"
                    , apr = "අප්\u{200D}රේල්"
                    , may = "මැයි"
                    , jun = "ජූනි"
                    , jul = "ජූලි"
                    , aug = "අගෝ"
                    , sep = "සැප්"
                    , oct = "ඔක්"
                    , nov = "නොවැ"
                    , dec = "දෙසැ"
                    }
                , wide =
                    { jan = "ජනවාරි"
                    , feb = "පෙබරවාරි"
                    , mar = "මාර්තු"
                    , apr = "අප්\u{200D}රේල්"
                    , may = "මැයි"
                    , jun = "ජූනි"
                    , jul = "ජූලි"
                    , aug = "අගෝස්තු"
                    , sep = "සැප්තැම්බර්"
                    , oct = "ඔක්තෝබර්"
                    , nov = "නොවැම්බර්"
                    , dec = "දෙසැම්බර්"
                    }
                , narrow =
                    { jan = "ජ"
                    , feb = "පෙ"
                    , mar = "මා"
                    , apr = "අ"
                    , may = "මැ"
                    , jun = "ජූ"
                    , jul = "ජූ"
                    , aug = "අ"
                    , sep = "සැ"
                    , oct = "ඔ"
                    , nov = "නෙ"
                    , dec = "දෙ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ඉරිදා"
                    , mon = "සඳුදා"
                    , tue = "අඟහ"
                    , wed = "බදාදා"
                    , thu = "බ්\u{200D}රහස්"
                    , fri = "සිකු"
                    , sat = "සෙන"
                    }
                , wide =
                    { sun = "ඉරිදා"
                    , mon = "සඳුදා"
                    , tue = "අඟහරුවාදා"
                    , wed = "බදාදා"
                    , thu = "බ්\u{200D}රහස්පතින්දා"
                    , fri = "සිකුරාදා"
                    , sat = "සෙනසුරාදා"
                    }
                , narrow =
                    { sun = "ඉ"
                    , mon = "ස"
                    , tue = "අ"
                    , wed = "බ"
                    , thu = "බ්\u{200D}ර"
                    , fri = "සි"
                    , sat = "සෙ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ඉරිදා"
                    , mon = "සඳුදා"
                    , tue = "අඟහ"
                    , wed = "බදාදා"
                    , thu = "බ්\u{200D}රහස්"
                    , fri = "සිකු"
                    , sat = "සෙන"
                    }
                , wide =
                    { sun = "ඉරිදා"
                    , mon = "සඳුදා"
                    , tue = "අඟහරුවාදා"
                    , wed = "බදාදා"
                    , thu = "බ්\u{200D}රහස්පතින්දා"
                    , fri = "සිකුරාදා"
                    , sat = "සෙනසුරාදා"
                    }
                , narrow =
                    { sun = "ඉ"
                    , mon = "ස"
                    , tue = "අ"
                    , wed = "බ"
                    , thu = "බ්\u{200D}ර"
                    , fri = "සි"
                    , sat = "සෙ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ක්\u{200D}රි.පූ.", ad = "ක්\u{200D}රි.ව." }
                , wide = { bc = "ක්\u{200D}රිස්තු පූර්ව", ad = "ක්\u{200D}රිස්තු වර්ෂ" }
                , narrow = { bc = "ක්\u{200D}රි.පූ.", ad = "ක්\u{200D}රි.ව." }
                }
            , timePatterns =
                { short = "HH.mm"
                , medium = "HH.mm.ss"
                , long = "HH.mm.ss z"
                , full = "HH.mm.ss zzzz"
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
                , ( "Ehm", "E a h.mm" )
                , ( "EHm", "E HH.mm" )
                , ( "Ehms", "E a h.mm.ss" )
                , ( "EHms", "E HH.mm.ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "a h" )
                , ( "H", "HH" )
                , ( "hm", "a h.mm" )
                , ( "Hm", "HH.mm" )
                , ( "hms", "a h.mm.ss" )
                , ( "Hms", "HH.mm.ss" )
                , ( "hmsv", "h.mm.ss a v" )
                , ( "Hmsv", "HH.mm.ss v" )
                , ( "hmv", "h.mm a v" )
                , ( "Hmv", "HH.mm v" )
                , ( "M", "L" )
                , ( "Md", "M-d" )
                , ( "MEd", "M-d, E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "MMM d E" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-one", "MMMM සතිය W" )
                , ( "MMMMW-count-other", "MMMM සතිය W" )
                , ( "ms", "mm.ss" )
                , ( "y", "y" )
                , ( "yM", "y-M" )
                , ( "yMd", "y-M-d" )
                , ( "yMEd", "y-M-d, E" )
                , ( "yMMM", "y MMM" )
                , ( "yMMMd", "y MMM d" )
                , ( "yMMMEd", "y MMM d, E" )
                , ( "yMMMM", "y MMMM" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-one", "Y සතිය w" )
                , ( "yw-count-other", "Y සතිය w" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
