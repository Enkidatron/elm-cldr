module Generated.Ne exposing (ne, ne_IN)

{-|

@docs ne, ne_IN

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.Structures


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ne"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : yy/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ne : Internal.Locale.Locale
ne =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ne"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "पूर्वाह्न"
                    , pm = "अपराह्न"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "अपरान्ह" )
                            , ( "afternoon2", "साँझ" )
                            , ( "evening1", "बेलुकी" )
                            , ( "midnight", "मध्यरात" )
                            , ( "morning1", "बिहान" )
                            , ( "night1", "रात" )
                            , ( "noon", "मध्यान्ह" )
                            ]
                    }
                , wide =
                    { am = "पूर्वाह्न"
                    , pm = "अपराह्न"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "अपरान्ह" )
                            , ( "afternoon2", "साँझ" )
                            , ( "evening1", "बेलुकी" )
                            , ( "midnight", "मध्यरात" )
                            , ( "morning1", "बिहान" )
                            , ( "night1", "रात" )
                            , ( "noon", "मध्यान्ह" )
                            ]
                    }
                , narrow =
                    { am = "पूर्वाह्न"
                    , pm = "अपराह्न"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "अपरान्ह" )
                            , ( "afternoon2", "साँझ" )
                            , ( "evening1", "बेलुकी" )
                            , ( "midnight", "मध्यरात" )
                            , ( "morning1", "बिहान" )
                            , ( "night1", "रात" )
                            , ( "noon", "मध्यान्ह" )
                            ]
                    }
                }
            , datePatterns =
                { short = "yy/M/d"
                , medium = "y MMM d"
                , long = "y MMMM d"
                , full = "y MMMM d, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "जनवरी"
                    , feb = "फेब्रुअरी"
                    , mar = "मार्च"
                    , apr = "अप्रिल"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुलाई"
                    , aug = "अगस्ट"
                    , sep = "सेप्टेम्बर"
                    , oct = "अक्टोबर"
                    , nov = "नोभेम्बर"
                    , dec = "डिसेम्बर"
                    }
                , wide =
                    { jan = "जनवरी"
                    , feb = "फेब्रुअरी"
                    , mar = "मार्च"
                    , apr = "अप्रिल"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुलाई"
                    , aug = "अगस्ट"
                    , sep = "सेप्टेम्बर"
                    , oct = "अक्टोबर"
                    , nov = "नोभेम्बर"
                    , dec = "डिसेम्बर"
                    }
                , narrow =
                    { jan = "जन"
                    , feb = "फेब"
                    , mar = "मार्च"
                    , apr = "अप्र"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुल"
                    , aug = "अग"
                    , sep = "सेप"
                    , oct = "अक्टो"
                    , nov = "नोभे"
                    , dec = "डिसे"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "जनवरी"
                    , feb = "फेब्रुअरी"
                    , mar = "मार्च"
                    , apr = "अप्रिल"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुलाई"
                    , aug = "अगस्ट"
                    , sep = "सेप्टेम्बर"
                    , oct = "अक्टोबर"
                    , nov = "नोभेम्बर"
                    , dec = "डिसेम्बर"
                    }
                , wide =
                    { jan = "जनवरी"
                    , feb = "फेब्रुअरी"
                    , mar = "मार्च"
                    , apr = "अप्रिल"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुलाई"
                    , aug = "अगस्ट"
                    , sep = "सेप्टेम्बर"
                    , oct = "अक्टोबर"
                    , nov = "नोभेम्बर"
                    , dec = "डिसेम्बर"
                    }
                , narrow =
                    { jan = "जन"
                    , feb = "फेेब"
                    , mar = "मार्च"
                    , apr = "अप्र"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुल"
                    , aug = "अग"
                    , sep = "सेप"
                    , oct = "अक्टो"
                    , nov = "नोभे"
                    , dec = "डिसे"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "आइत"
                    , mon = "सोम"
                    , tue = "मङ्गल"
                    , wed = "बुध"
                    , thu = "बिहि"
                    , fri = "शुक्र"
                    , sat = "शनि"
                    }
                , wide =
                    { sun = "आइतबार"
                    , mon = "सोमबार"
                    , tue = "मङ्गलबार"
                    , wed = "बुधबार"
                    , thu = "बिहिबार"
                    , fri = "शुक्रबार"
                    , sat = "शनिबार"
                    }
                , narrow =
                    { sun = "आ"
                    , mon = "सो"
                    , tue = "म"
                    , wed = "बु"
                    , thu = "बि"
                    , fri = "शु"
                    , sat = "श"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "आइत"
                    , mon = "सोम"
                    , tue = "मङ्गल"
                    , wed = "बुध"
                    , thu = "बिहि"
                    , fri = "शुक्र"
                    , sat = "शनि"
                    }
                , wide =
                    { sun = "आइतबार"
                    , mon = "सोमबार"
                    , tue = "मङ्गलबार"
                    , wed = "बुधबार"
                    , thu = "बिहिबार"
                    , fri = "शुक्रबार"
                    , sat = "शनिबार"
                    }
                , narrow =
                    { sun = "आ"
                    , mon = "सो"
                    , tue = "म"
                    , wed = "बु"
                    , thu = "बि"
                    , fri = "शु"
                    , sat = "श"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ईसा पूर्व", ad = "सन्" }
                , wide = { bc = "ईसा पूर्व", ad = "सन्" }
                , narrow = { bc = "ईसा पूर्व", ad = "सन्" }
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
                , ( "Ed", "d E" )
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
                , ( "MMMMW-count-one", "MMMM को W हप्ता" )
                , ( "MMMMW-count-other", "MMMM को W हप्ता" )
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
                , ( "yw-count-one", "Y को w हप्ता" )
                , ( "yw-count-other", "Y को w हप्ता" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : yy/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ne_IN : Internal.Locale.Locale
ne_IN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ne"
            , script = Nothing
            , territory = Just "IN"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "पूर्वाह्न"
                    , pm = "अपराह्न"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "अपरान्ह" )
                            , ( "afternoon2", "साँझ" )
                            , ( "evening1", "बेलुकी" )
                            , ( "midnight", "मध्यरात" )
                            , ( "morning1", "बिहान" )
                            , ( "night1", "रात" )
                            , ( "noon", "मध्यान्ह" )
                            ]
                    }
                , wide =
                    { am = "पूर्वाह्न"
                    , pm = "अपराह्न"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "अपरान्ह" )
                            , ( "afternoon2", "साँझ" )
                            , ( "evening1", "बेलुकी" )
                            , ( "midnight", "मध्यरात" )
                            , ( "morning1", "बिहान" )
                            , ( "night1", "रात" )
                            , ( "noon", "मध्यान्ह" )
                            ]
                    }
                , narrow =
                    { am = "पूर्वाह्न"
                    , pm = "अपराह्न"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "अपरान्ह" )
                            , ( "afternoon2", "साँझ" )
                            , ( "evening1", "बेलुकी" )
                            , ( "midnight", "मध्यरात" )
                            , ( "morning1", "बिहान" )
                            , ( "night1", "रात" )
                            , ( "noon", "मध्यान्ह" )
                            ]
                    }
                }
            , datePatterns =
                { short = "yy/M/d"
                , medium = "y MMM d"
                , long = "y MMMM d"
                , full = "y MMMM d, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "जनवरी"
                    , feb = "फेब्रुअरी"
                    , mar = "मार्च"
                    , apr = "अप्रिल"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुलाई"
                    , aug = "अगस्ट"
                    , sep = "सेप्टेम्बर"
                    , oct = "अक्टोबर"
                    , nov = "नोभेम्बर"
                    , dec = "डिसेम्बर"
                    }
                , wide =
                    { jan = "जनवरी"
                    , feb = "फेब्रुअरी"
                    , mar = "मार्च"
                    , apr = "अप्रिल"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुलाई"
                    , aug = "अगस्ट"
                    , sep = "सेप्टेम्बर"
                    , oct = "अक्टोबर"
                    , nov = "नोभेम्बर"
                    , dec = "डिसेम्बर"
                    }
                , narrow =
                    { jan = "जन"
                    , feb = "फेब"
                    , mar = "मार्च"
                    , apr = "अप्र"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुल"
                    , aug = "अग"
                    , sep = "सेप"
                    , oct = "अक्टो"
                    , nov = "नोभे"
                    , dec = "डिसे"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "जनवरी"
                    , feb = "फेब्रुअरी"
                    , mar = "मार्च"
                    , apr = "अप्रिल"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुलाई"
                    , aug = "अगस्ट"
                    , sep = "सेप्टेम्बर"
                    , oct = "अक्टोबर"
                    , nov = "नोभेम्बर"
                    , dec = "डिसेम्बर"
                    }
                , wide =
                    { jan = "जनवरी"
                    , feb = "फेब्रुअरी"
                    , mar = "मार्च"
                    , apr = "अप्रिल"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुलाई"
                    , aug = "अगस्ट"
                    , sep = "सेप्टेम्बर"
                    , oct = "अक्टोबर"
                    , nov = "नोभेम्बर"
                    , dec = "डिसेम्बर"
                    }
                , narrow =
                    { jan = "जन"
                    , feb = "फेेब"
                    , mar = "मार्च"
                    , apr = "अप्र"
                    , may = "मे"
                    , jun = "जुन"
                    , jul = "जुल"
                    , aug = "अग"
                    , sep = "सेप"
                    , oct = "अक्टो"
                    , nov = "नोभे"
                    , dec = "डिसे"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "आइत"
                    , mon = "सोम"
                    , tue = "मङ्गल"
                    , wed = "बुध"
                    , thu = "बिहि"
                    , fri = "शुक्र"
                    , sat = "शनि"
                    }
                , wide =
                    { sun = "आइतबार"
                    , mon = "सोमबार"
                    , tue = "मङ्गलबार"
                    , wed = "बुधबार"
                    , thu = "बिहिबार"
                    , fri = "शुक्रबार"
                    , sat = "शनिबार"
                    }
                , narrow =
                    { sun = "आ"
                    , mon = "सो"
                    , tue = "म"
                    , wed = "बु"
                    , thu = "बि"
                    , fri = "शु"
                    , sat = "श"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "आइत"
                    , mon = "सोम"
                    , tue = "मङ्गल"
                    , wed = "बुध"
                    , thu = "बिहि"
                    , fri = "शुक्र"
                    , sat = "शनि"
                    }
                , wide =
                    { sun = "आइतबार"
                    , mon = "सोमबार"
                    , tue = "मङ्गलबार"
                    , wed = "बुधबार"
                    , thu = "बिहिबार"
                    , fri = "शुक्रबार"
                    , sat = "शनिबार"
                    }
                , narrow =
                    { sun = "आ"
                    , mon = "सो"
                    , tue = "म"
                    , wed = "बु"
                    , thu = "बि"
                    , fri = "शु"
                    , sat = "श"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ईसा पूर्व", ad = "सन्" }
                , wide = { bc = "ईसा पूर्व", ad = "सन्" }
                , narrow = { bc = "ईसा पूर्व", ad = "सन्" }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
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
                , ( "Ed", "d E" )
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
                , ( "MMMMW-count-one", "MMMM को W हप्ता" )
                , ( "MMMMW-count-other", "MMMM को W हप्ता" )
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
                , ( "yw-count-one", "Y को w हप्ता" )
                , ( "yw-count-other", "Y को w हप्ता" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
