module Generated.Alt.Fa exposing (fa, fa_AF)

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
        [ ( "fa"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 1, 0 ) ( 4, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 1, 0 ) "night2"
            ]
          )
        ]


{-| Date format strings:

  - Short : y/M/d
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
fa : Internal.Locale.Locale
fa =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fa"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ق.ظ."
                    , pm = "ب.ظ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهر" )
                            , ( "afternoon2", "عصر" )
                            , ( "morning1", "بامداد" )
                            , ( "morning2", "صبح" )
                            , ( "night1", "شب" )
                            , ( "night2", "نیمه\u{200C}شب" )
                            ]
                    }
                , wide =
                    { am = "قبل\u{200C}ازظهر"
                    , pm = "بعدازظهر"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "بعدازظهر" )
                            , ( "afternoon2", "عصر" )
                            , ( "morning1", "بامداد" )
                            , ( "morning2", "صبح" )
                            , ( "night1", "شب" )
                            , ( "night2", "نیمه\u{200C}شب" )
                            ]
                    }
                , narrow =
                    { am = "ق"
                    , pm = "ب"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظ" )
                            , ( "afternoon2", "ع" )
                            , ( "morning1", "ب" )
                            , ( "morning2", "ص" )
                            , ( "night1", "ش" )
                            , ( "night2", "ن" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y/M/d"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ژانویه"
                    , feb = "فوریه"
                    , mar = "مارس"
                    , apr = "آوریل"
                    , may = "مه"
                    , jun = "ژوئن"
                    , jul = "ژوئیه"
                    , aug = "اوت"
                    , sep = "سپتامبر"
                    , oct = "اکتبر"
                    , nov = "نوامبر"
                    , dec = "دسامبر"
                    }
                , wide =
                    { jan = "ژانویهٔ"
                    , feb = "فوریهٔ"
                    , mar = "مارس"
                    , apr = "آوریل"
                    , may = "مهٔ"
                    , jun = "ژوئن"
                    , jul = "ژوئیهٔ"
                    , aug = "اوت"
                    , sep = "سپتامبر"
                    , oct = "اکتبر"
                    , nov = "نوامبر"
                    , dec = "دسامبر"
                    }
                , narrow =
                    { jan = "ژ"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "آ"
                    , may = "م"
                    , jun = "ژ"
                    , jul = "ژ"
                    , aug = "ا"
                    , sep = "س"
                    , oct = "ا"
                    , nov = "ن"
                    , dec = "د"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ژانویه"
                    , feb = "فوریه"
                    , mar = "مارس"
                    , apr = "آوریل"
                    , may = "مه"
                    , jun = "ژوئن"
                    , jul = "ژوئیه"
                    , aug = "اوت"
                    , sep = "سپتامبر"
                    , oct = "اکتبر"
                    , nov = "نوامبر"
                    , dec = "دسامبر"
                    }
                , wide =
                    { jan = "ژانویه"
                    , feb = "فوریه"
                    , mar = "مارس"
                    , apr = "آوریل"
                    , may = "مه"
                    , jun = "ژوئن"
                    , jul = "ژوئیه"
                    , aug = "اوت"
                    , sep = "سپتامبر"
                    , oct = "اکتبر"
                    , nov = "نوامبر"
                    , dec = "دسامبر"
                    }
                , narrow =
                    { jan = "ژ"
                    , feb = "ف"
                    , mar = "م"
                    , apr = "آ"
                    , may = "م"
                    , jun = "ژ"
                    , jul = "ژ"
                    , aug = "ا"
                    , sep = "س"
                    , oct = "ا"
                    , nov = "ن"
                    , dec = "د"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "یکشنبه"
                    , mon = "دوشنبه"
                    , tue = "سه\u{200C}شنبه"
                    , wed = "چهارشنبه"
                    , thu = "پنجشنبه"
                    , fri = "جمعه"
                    , sat = "شنبه"
                    }
                , wide =
                    { sun = "یکشنبه"
                    , mon = "دوشنبه"
                    , tue = "سه\u{200C}شنبه"
                    , wed = "چهارشنبه"
                    , thu = "پنجشنبه"
                    , fri = "جمعه"
                    , sat = "شنبه"
                    }
                , narrow =
                    { sun = "ی"
                    , mon = "د"
                    , tue = "س"
                    , wed = "چ"
                    , thu = "پ"
                    , fri = "ج"
                    , sat = "ش"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "یکشنبه"
                    , mon = "دوشنبه"
                    , tue = "سه\u{200C}شنبه"
                    , wed = "چهارشنبه"
                    , thu = "پنجشنبه"
                    , fri = "جمعه"
                    , sat = "شنبه"
                    }
                , wide =
                    { sun = "یکشنبه"
                    , mon = "دوشنبه"
                    , tue = "سه\u{200C}شنبه"
                    , wed = "چهارشنبه"
                    , thu = "پنجشنبه"
                    , fri = "جمعه"
                    , sat = "شنبه"
                    }
                , narrow =
                    { sun = "ی"
                    , mon = "د"
                    , tue = "س"
                    , wed = "چ"
                    , thu = "پ"
                    , fri = "ج"
                    , sat = "ش"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م.", ad = "م." }
                , wide = { bc = "قبل از میلاد", ad = "میلادی" }
                , narrow = { bc = "ق", ad = "م" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss (z)"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1}،\u{200F} {0}"
                , medium = "{1}،\u{200F} {0}"
                , long = "{1}، ساعت {0}"
                , full = "{1}، ساعت {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E H:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "y/M/d GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "HHmmZ", "HH:mm (Z)" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "L" )
                , ( "Md", "M/d" )
                , ( "MEd", "E M/d" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d LLL" )
                , ( "MMMEd", "E d LLL" )
                , ( "MMMMd", "d LLLL" )
                , ( "MMMMEd", "E d LLLL" )
                , ( "MMMMW-count-one", "هفتهٔ Wم LLLL" )
                , ( "MMMMW-count-other", "هفتهٔ Wم LLLL" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "m:ss" )
                , ( "y", "y" )
                , ( "yM", "y/M" )
                , ( "yMd", "y/M/d" )
                , ( "yMEd", "E y/M/d" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yMMMMEEEEd", "EEEE d MMMM y" )
                , ( "yQQQ", "QQQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "هفتهٔ wم Y" )
                , ( "yw-count-other", "هفتهٔ wم Y" )
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
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
fa_AF : Internal.Locale.Locale
fa_AF =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fa"
            , script = Nothing
            , territory = Just "AF"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ق.ظ."
                    , pm = "ب.ظ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهر" )
                            , ( "afternoon2", "بعدازچاشت" )
                            , ( "morning1", "بامداد" )
                            , ( "morning2", "صبح" )
                            , ( "night1", "شب" )
                            , ( "night2", "نیمه\u{200C}شب" )
                            ]
                    }
                , wide =
                    { am = "قبل\u{200C}ازظهر"
                    , pm = "بعدازظهر"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظهر" )
                            , ( "afternoon2", "بعدازچاشت" )
                            , ( "morning1", "بامداد" )
                            , ( "morning2", "صبح" )
                            , ( "night1", "شب" )
                            , ( "night2", "نیمه\u{200C}شب" )
                            ]
                    }
                , narrow =
                    { am = "ق"
                    , pm = "ب"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ظ" )
                            , ( "afternoon2", "ع" )
                            , ( "morning1", "ب" )
                            , ( "morning2", "ص" )
                            , ( "night1", "ش" )
                            , ( "night2", "ن" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y/M/d"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "جنو"
                    , feb = "فبروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "می"
                    , jun = "جون"
                    , jul = "جول"
                    , aug = "اگست"
                    , sep = "سپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسم"
                    }
                , wide =
                    { jan = "جنوری"
                    , feb = "فبروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "می"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اگست"
                    , sep = "سپتمبر"
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
                    { jan = "جنوری"
                    , feb = "فبروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "می"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اگست"
                    , sep = "سپتمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , wide =
                    { jan = "جنوری"
                    , feb = "فبروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "می"
                    , jun = "جون"
                    , jul = "جولای"
                    , aug = "اگست"
                    , sep = "سپتمبر"
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
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "یکشنبه"
                    , mon = "دوشنبه"
                    , tue = "سه\u{200C}شنبه"
                    , wed = "چهارشنبه"
                    , thu = "پنجشنبه"
                    , fri = "جمعه"
                    , sat = "شنبه"
                    }
                , wide =
                    { sun = "یکشنبه"
                    , mon = "دوشنبه"
                    , tue = "سه\u{200C}شنبه"
                    , wed = "چهارشنبه"
                    , thu = "پنجشنبه"
                    , fri = "جمعه"
                    , sat = "شنبه"
                    }
                , narrow =
                    { sun = "ی"
                    , mon = "د"
                    , tue = "س"
                    , wed = "چ"
                    , thu = "پ"
                    , fri = "ج"
                    , sat = "ش"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "یکشنبه"
                    , mon = "دوشنبه"
                    , tue = "سه\u{200C}شنبه"
                    , wed = "چهارشنبه"
                    , thu = "پنجشنبه"
                    , fri = "جمعه"
                    , sat = "شنبه"
                    }
                , wide =
                    { sun = "یکشنبه"
                    , mon = "دوشنبه"
                    , tue = "سه\u{200C}شنبه"
                    , wed = "چهارشنبه"
                    , thu = "پنجشنبه"
                    , fri = "جمعه"
                    , sat = "شنبه"
                    }
                , narrow =
                    { sun = "ی"
                    , mon = "د"
                    , tue = "س"
                    , wed = "چ"
                    , thu = "پ"
                    , fri = "ج"
                    , sat = "ش"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ق.م.", ad = "م." }
                , wide = { bc = "قبل از میلاد", ad = "میلادی" }
                , narrow = { bc = "ق", ad = "م" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss (z)"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1}،\u{200F} {0}"
                , medium = "{1}،\u{200F} {0}"
                , long = "{1}، ساعت {0}"
                , full = "{1}، ساعت {0}"
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
                , ( "Gy", "y G" )
                , ( "GyMd", "y/M/d GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "MMM d, y G" )
                , ( "GyMMMEd", "E, MMM d, y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "HHmmZ", "HH:mm (Z)" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "L" )
                , ( "Md", "M/d" )
                , ( "MEd", "E, M/d" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "E, MMM d" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMEd", "E d LLLL" )
                , ( "MMMMW-count-one", "هفتهٔ Wم LLLL" )
                , ( "MMMMW-count-other", "هفتهٔ Wم LLLL" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "m:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "M/d/y" )
                , ( "yMEd", "E, M/d/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "MMM d, y" )
                , ( "yMMMEd", "E, MMM d, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yMMMMEEEEd", "EEEE d MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "هفتهٔ wم Y" )
                , ( "yw-count-other", "هفتهٔ wم Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
