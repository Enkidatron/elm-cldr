module Generated.Alt.Ar exposing (ar, ar_AE, ar_BH, ar_DJ, ar_DZ, ar_EG, ar_EH, ar_ER, ar_IL, ar_IQ, ar_JO, ar_KM, ar_KW, ar_LB, ar_LY, ar_MA, ar_MR, ar_OM, ar_PS, ar_QA, ar_SA, ar_SD, ar_SO, ar_SS, ar_SY, ar_TD, ar_TN, ar_YE)

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
    Dict.fromList
        [ ( "ar"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 1, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 1, 0 ) ( 3, 0 ) "night2"
            ]
          )
        ]


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar : Internal.Locale.Locale
ar =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_AE : Internal.Locale.Locale
ar_AE =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "AE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_BH : Internal.Locale.Locale
ar_BH =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "BH"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_DJ : Internal.Locale.Locale
ar_DJ =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "DJ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_DZ : Internal.Locale.Locale
ar_DZ =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "DZ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "جانفي"
                    , feb = "فيفري"
                    , mar = "مارس"
                    , apr = "أفريل"
                    , may = "ماي"
                    , jun = "جوان"
                    , jul = "جويلية"
                    , aug = "أوت"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "جانفي"
                    , feb = "فيفري"
                    , mar = "مارس"
                    , apr = "أفريل"
                    , may = "ماي"
                    , jun = "جوان"
                    , jul = "جويلية"
                    , aug = "أوت"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ج"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "م"
                    , jun = "ج"
                    , jul = "ج"
                    , aug = "أ"
                    , sep = "س"
                    , oct = "أ"
                    , nov = "ن"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "جانفي"
                    , feb = "فيفري"
                    , mar = "مارس"
                    , apr = "أفريل"
                    , may = "ماي"
                    , jun = "جوان"
                    , jul = "جويلية"
                    , aug = "أوت"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "جانفي"
                    , feb = "فيفري"
                    , mar = "مارس"
                    , apr = "أفريل"
                    , may = "ماي"
                    , jun = "جوان"
                    , jul = "جويلية"
                    , aug = "أوت"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ج"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "م"
                    , jun = "ج"
                    , jul = "ج"
                    , aug = "أ"
                    , sep = "س"
                    , oct = "أ"
                    , nov = "ن"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_EG : Internal.Locale.Locale
ar_EG =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "EG"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_EH : Internal.Locale.Locale
ar_EH =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "EH"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_ER : Internal.Locale.Locale
ar_ER =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "ER"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
ar_IL : Internal.Locale.Locale
ar_IL =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "IL"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_IQ : Internal.Locale.Locale
ar_IQ =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "IQ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين\u{00A0}الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_JO : Internal.Locale.Locale
ar_JO =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "JO"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ar_KM : Internal.Locale.Locale
ar_KM =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "KM"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_KW : Internal.Locale.Locale
ar_KW =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "KW"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_LB : Internal.Locale.Locale
ar_LB =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "LB"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_LY : Internal.Locale.Locale
ar_LY =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "LY"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ل" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ar_MA : Internal.Locale.Locale
ar_MA =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "MA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "ماي"
                    , jun = "يونيو"
                    , jul = "يوليوز"
                    , aug = "غشت"
                    , sep = "شتنبر"
                    , oct = "أكتوبر"
                    , nov = "نونبر"
                    , dec = "دجنبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "ماي"
                    , jun = "يونيو"
                    , jul = "يوليوز"
                    , aug = "غشت"
                    , sep = "شتنبر"
                    , oct = "أكتوبر"
                    , nov = "نونبر"
                    , dec = "دجنبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "م"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "ش"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "ماي"
                    , jun = "يونيو"
                    , jul = "يوليوز"
                    , aug = "غشت"
                    , sep = "شتنبر"
                    , oct = "أكتوبر"
                    , nov = "نونبر"
                    , dec = "دجنبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "ماي"
                    , jun = "يونيو"
                    , jul = "يوليوز"
                    , aug = "غشت"
                    , sep = "شتنبر"
                    , oct = "أكتوبر"
                    , nov = "نونبر"
                    , dec = "دجنبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "م"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "ش"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_MR : Internal.Locale.Locale
ar_MR =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "MR"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "إبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغشت"
                    , sep = "شتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "دجمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "إبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغشت"
                    , sep = "شتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "دجمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "إ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "ش"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "إبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغشت"
                    , sep = "شتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "دجمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "إبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغشت"
                    , sep = "شتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "دجمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "إ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "ش"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_OM : Internal.Locale.Locale
ar_OM =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "OM"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_PS : Internal.Locale.Locale
ar_PS =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "PS"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_QA : Internal.Locale.Locale
ar_QA =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "QA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SA : Internal.Locale.Locale
ar_SA =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "SA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ل" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SD : Internal.Locale.Locale
ar_SD =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "SD"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SO : Internal.Locale.Locale
ar_SO =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "SO"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SS : Internal.Locale.Locale
ar_SS =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "SS"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SY : Internal.Locale.Locale
ar_SY =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "SY"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , wide =
                    { jan = "كانون الثاني"
                    , feb = "شباط"
                    , mar = "آذار"
                    , apr = "نيسان"
                    , may = "أيار"
                    , jun = "حزيران"
                    , jul = "تموز"
                    , aug = "آب"
                    , sep = "أيلول"
                    , oct = "تشرين الأول"
                    , nov = "تشرين الثاني"
                    , dec = "كانون الأول"
                    }
                , narrow =
                    { jan = "ك"
                    , feb = "ش"
                    , mar = "آ"
                    , apr = "ن"
                    , may = "أ"
                    , jun = "ح"
                    , jul = "ت"
                    , aug = "آ"
                    , sep = "أ"
                    , oct = "ت"
                    , nov = "ت"
                    , dec = "ك"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_TD : Internal.Locale.Locale
ar_TD =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "TD"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_TN : Internal.Locale.Locale
ar_TN =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "TN"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "جانفي"
                    , feb = "فيفري"
                    , mar = "مارس"
                    , apr = "أفريل"
                    , may = "ماي"
                    , jun = "جوان"
                    , jul = "جويلية"
                    , aug = "أوت"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "جانفي"
                    , feb = "فيفري"
                    , mar = "مارس"
                    , apr = "أفريل"
                    , may = "ماي"
                    , jun = "جوان"
                    , jul = "جويلية"
                    , aug = "أوت"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ج"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "م"
                    , jun = "ج"
                    , jul = "ج"
                    , aug = "أ"
                    , sep = "س"
                    , oct = "أ"
                    , nov = "ن"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "جانفي"
                    , feb = "فيفري"
                    , mar = "مارس"
                    , apr = "أفريل"
                    , may = "ماي"
                    , jun = "جوان"
                    , jul = "جويلية"
                    , aug = "أوت"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "جانفي"
                    , feb = "فيفري"
                    , mar = "مارس"
                    , apr = "أفريل"
                    , may = "ماي"
                    , jun = "جوان"
                    , jul = "جويلية"
                    , aug = "أوت"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ج"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "م"
                    , jun = "ج"
                    , jul = "ج"
                    , aug = "أ"
                    , sep = "س"
                    , oct = "أ"
                    , nov = "ن"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
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

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_YE : Internal.Locale.Locale
ar_YE =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ar"
            , script = Nothing
            , territory = Just "YE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "ص" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , wide =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "في الصباح" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "في المساء" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                , narrow =
                    { am = "ص"
                    , pm = "م"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهرًا" )
                            , ( "afternoon2", "بعد الظهر" )
                            , ( "evening1", "مساءً" )
                            , ( "morning1", "فجرًا" )
                            , ( "morning2", "صباحًا" )
                            , ( "night1", "منتصف الليل" )
                            , ( "night2", "ليلاً" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d\u{200F}/M\u{200F}/y"
                , medium = "dd\u{200F}/MM\u{200F}/y"
                , long = "d MMMM y"
                , full = "EEEE، d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , wide =
                    { jan = "يناير"
                    , feb = "فبراير"
                    , mar = "مارس"
                    , apr = "أبريل"
                    , may = "مايو"
                    , jun = "يونيو"
                    , jul = "يوليو"
                    , aug = "أغسطس"
                    , sep = "سبتمبر"
                    , oct = "أكتوبر"
                    , nov = "نوفمبر"
                    , dec = "ديسمبر"
                    }
                , narrow =
                    { jan = "ي"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "أ"
                    , may = "و"
                    , jun = "ن"
                    , jul = "ل"
                    , aug = "غ"
                    , sep = "س"
                    , oct = "ك"
                    , nov = "ب"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , wide =
                    { sun = "الأحد"
                    , mon = "الاثنين"
                    , tue = "الثلاثاء"
                    , wed = "الأربعاء"
                    , thu = "الخميس"
                    , fri = "الجمعة"
                    , sat = "السبت"
                    }
                , narrow =
                    { sun = "ح"
                    , mon = "ن"
                    , tue = "ث"
                    , wed = "ر"
                    , thu = "خ"
                    , fri = "ج"
                    , sat = "س"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م", ad = "م" }
                , wide = { bc = "قبل الميلاد", ad = "ميلادي" }
                , narrow = { bc = "ق.م", ad = "م" }
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
                , long = "{1} في {0}"
                , full = "{1} في {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E، d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E، d MMM y G" )
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
                , ( "Md", "d/\u{200F}M" )
                , ( "MEd", "E، d/\u{200F}M" )
                , ( "MMdd", "dd\u{200F}/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E، d MMMM" )
                , ( "MMMMW-count-zero", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-one", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-two", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-few", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-many", "الأسبوع W من MMMM" )
                , ( "MMMMW-count-other", "الأسبوع W من MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M\u{200F}/y" )
                , ( "yMd", "d\u{200F}/M\u{200F}/y" )
                , ( "yMEd", "E، d/\u{200F}M/\u{200F}y" )
                , ( "yMM", "MM\u{200F}/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E، d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "الأسبوع w من سنة Y" )
                , ( "yw-count-one", "الأسبوع w من سنة Y" )
                , ( "yw-count-two", "الأسبوع w من سنة Y" )
                , ( "yw-count-few", "الأسبوع w من سنة Y" )
                , ( "yw-count-many", "الأسبوع w من سنة Y" )
                , ( "yw-count-other", "الأسبوع w من سنة Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
