module Generated.Mr exposing (mr)

{-|

@docs mr

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
        [ ( "mr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
mr : Internal.Locale.Locale
mr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "mr"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "दुपार" )
                            , ( "evening1", "संध्याकाळ" )
                            , ( "midnight", "मध्यरात्र" )
                            , ( "morning1", "पहाट" )
                            , ( "morning2", "सकाळ" )
                            , ( "night1", "रात्र" )
                            , ( "noon", "मध्यान्ह" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "दुपार" )
                            , ( "evening1", "संध्याकाळ" )
                            , ( "midnight", "मध्यरात्र" )
                            , ( "morning1", "पहाट" )
                            , ( "morning2", "सकाळ" )
                            , ( "night1", "रात्र" )
                            , ( "noon", "मध्यान्ह" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "दु" )
                            , ( "evening1", "सं" )
                            , ( "midnight", "म.रा." )
                            , ( "morning1", "प" )
                            , ( "morning2", "स" )
                            , ( "night1", "रा" )
                            , ( "noon", "दु" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE, d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "जाने"
                    , feb = "फेब्रु"
                    , mar = "मार्च"
                    , apr = "एप्रि"
                    , may = "मे"
                    , jun = "जून"
                    , jul = "जुलै"
                    , aug = "ऑग"
                    , sep = "सप्टें"
                    , oct = "ऑक्टो"
                    , nov = "नोव्हें"
                    , dec = "डिसें"
                    }
                , wide =
                    { jan = "जानेवारी"
                    , feb = "फेब्रुवारी"
                    , mar = "मार्च"
                    , apr = "एप्रिल"
                    , may = "मे"
                    , jun = "जून"
                    , jul = "जुलै"
                    , aug = "ऑगस्ट"
                    , sep = "सप्टेंबर"
                    , oct = "ऑक्टोबर"
                    , nov = "नोव्हेंबर"
                    , dec = "डिसेंबर"
                    }
                , narrow =
                    { jan = "जा"
                    , feb = "फे"
                    , mar = "मा"
                    , apr = "ए"
                    , may = "मे"
                    , jun = "जू"
                    , jul = "जु"
                    , aug = "ऑ"
                    , sep = "स"
                    , oct = "ऑ"
                    , nov = "नो"
                    , dec = "डि"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "जाने"
                    , feb = "फेब्रु"
                    , mar = "मार्च"
                    , apr = "एप्रि"
                    , may = "मे"
                    , jun = "जून"
                    , jul = "जुलै"
                    , aug = "ऑग"
                    , sep = "सप्टें"
                    , oct = "ऑक्टो"
                    , nov = "नोव्हें"
                    , dec = "डिसें"
                    }
                , wide =
                    { jan = "जानेवारी"
                    , feb = "फेब्रुवारी"
                    , mar = "मार्च"
                    , apr = "एप्रिल"
                    , may = "मे"
                    , jun = "जून"
                    , jul = "जुलै"
                    , aug = "ऑगस्ट"
                    , sep = "सप्टेंबर"
                    , oct = "ऑक्टोबर"
                    , nov = "नोव्हेंबर"
                    , dec = "डिसेंबर"
                    }
                , narrow =
                    { jan = "जा"
                    , feb = "फे"
                    , mar = "मा"
                    , apr = "ए"
                    , may = "मे"
                    , jun = "जू"
                    , jul = "जु"
                    , aug = "ऑ"
                    , sep = "स"
                    , oct = "ऑ"
                    , nov = "नो"
                    , dec = "डि"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "रवि"
                    , mon = "सोम"
                    , tue = "मंगळ"
                    , wed = "बुध"
                    , thu = "गुरु"
                    , fri = "शुक्र"
                    , sat = "शनि"
                    }
                , wide =
                    { sun = "रविवार"
                    , mon = "सोमवार"
                    , tue = "मंगळवार"
                    , wed = "बुधवार"
                    , thu = "गुरुवार"
                    , fri = "शुक्रवार"
                    , sat = "शनिवार"
                    }
                , narrow =
                    { sun = "र"
                    , mon = "सो"
                    , tue = "मं"
                    , wed = "बु"
                    , thu = "गु"
                    , fri = "शु"
                    , sat = "श"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "रवि"
                    , mon = "सोम"
                    , tue = "मंगळ"
                    , wed = "बुध"
                    , thu = "गुरु"
                    , fri = "शुक्र"
                    , sat = "शनि"
                    }
                , wide =
                    { sun = "रविवार"
                    , mon = "सोमवार"
                    , tue = "मंगळवार"
                    , wed = "बुधवार"
                    , thu = "गुरुवार"
                    , fri = "शुक्रवार"
                    , sat = "शनिवार"
                    }
                , narrow =
                    { sun = "र"
                    , mon = "सो"
                    , tue = "मं"
                    , wed = "बु"
                    , thu = "गु"
                    , fri = "शु"
                    , sat = "श"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ई. स. पू.", ad = "इ. स." }
                , wide = { bc = "ईसवीसनपूर्व", ad = "ईसवीसन" }
                , narrow = { bc = "ई. स. पू.", ad = "इ. स." }
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
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG d/M/y" )
                , ( "GyMMM", "MMM G y" )
                , ( "GyMMMd", "d MMM, G y" )
                , ( "GyMMMEd", "E, d MMM, G y" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM चा W रा आठवडा" )
                , ( "MMMMW-count-other", "MMMM चा W रा आठवडा" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "E, d, MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y चा w वा आठवडा" )
                , ( "yw-count-other", "Y चा w वा आठवडा" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
