module Generated.Ur exposing (ur, ur_IN)

{-|

@docs ur, ur_IN

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
        [ ( "ur"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM، y
  - Long : d MMMM، y
  - Full : EEEE، d MMMM، y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ur : Internal.Locale.Locale
ur =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ur"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "دوپہر" )
                            , ( "afternoon2", "سہ پہر" )
                            , ( "evening1", "شام" )
                            , ( "midnight", "آدھی رات" )
                            , ( "morning1", "صبح" )
                            , ( "night1", "رات" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "دوپہر میں" )
                            , ( "afternoon2", "سہ پہر" )
                            , ( "evening1", "شام میں" )
                            , ( "midnight", "آدھی رات" )
                            , ( "morning1", "صبح میں" )
                            , ( "night1", "رات میں" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "دوپہر" )
                            , ( "afternoon2", "سہ پہر" )
                            , ( "evening1", "شام" )
                            , ( "midnight", "آدھی رات" )
                            , ( "morning1", "صبح" )
                            , ( "night1", "رات" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM، y"
                , long = "d MMMM، y"
                , full = "EEEE، d MMMM، y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "جنوری"
                    , feb = "فروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مئی"
                    , jun = "جون"
                    , jul = "جولائی"
                    , aug = "اگست"
                    , sep = "ستمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , wide =
                    { jan = "جنوری"
                    , feb = "فروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مئی"
                    , jun = "جون"
                    , jul = "جولائی"
                    , aug = "اگست"
                    , sep = "ستمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
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
                    { jan = "جنوری"
                    , feb = "فروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مئی"
                    , jun = "جون"
                    , jul = "جولائی"
                    , aug = "اگست"
                    , sep = "ستمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , wide =
                    { jan = "جنوری"
                    , feb = "فروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مئی"
                    , jun = "جون"
                    , jul = "جولائی"
                    , aug = "اگست"
                    , sep = "ستمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
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
                    { sun = "اتوار"
                    , mon = "پیر"
                    , tue = "منگل"
                    , wed = "بدھ"
                    , thu = "جمعرات"
                    , fri = "جمعہ"
                    , sat = "ہفتہ"
                    }
                , wide =
                    { sun = "اتوار"
                    , mon = "پیر"
                    , tue = "منگل"
                    , wed = "بدھ"
                    , thu = "جمعرات"
                    , fri = "جمعہ"
                    , sat = "ہفتہ"
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
                    { sun = "اتوار"
                    , mon = "پیر"
                    , tue = "منگل"
                    , wed = "بدھ"
                    , thu = "جمعرات"
                    , fri = "جمعہ"
                    , sat = "ہفتہ"
                    }
                , wide =
                    { sun = "اتوار"
                    , mon = "پیر"
                    , tue = "منگل"
                    , wed = "بدھ"
                    , thu = "جمعرات"
                    , fri = "جمعہ"
                    , sat = "ہفتہ"
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
                { abbreviated = { bc = "قبل مسیح", ad = "عیسوی" }
                , wide = { bc = "قبل مسیح", ad = "عیسوی" }
                , narrow = { bc = "قبل مسیح", ad = "عیسوی" }
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
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM، y G" )
                , ( "GyMMMEd", "E، d MMM، y G" )
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
                , ( "Md", "d/M" )
                , ( "MEd", "E، d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM کا ہفتہ W" )
                , ( "MMMMW-count-other", "MMMM کا ہفتہ W" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E، d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM، y" )
                , ( "yMMMEd", "E، d MMM، y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y کا w ہفتہ" )
                , ( "yw-count-other", "Y کا w ہفتہ" )
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

  - Short : d/M/yy
  - Medium : d MMM، y
  - Long : d MMMM، y
  - Full : EEEE، d MMMM، y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ur_IN : Internal.Locale.Locale
ur_IN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ur"
            , script = Nothing
            , territory = Just "IN"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "دوپہر" )
                            , ( "afternoon2", "سہ پہر" )
                            , ( "evening1", "شام" )
                            , ( "midnight", "آدھی رات" )
                            , ( "morning1", "صبح" )
                            , ( "night1", "رات" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "دوپہر میں" )
                            , ( "afternoon2", "سہ پہر" )
                            , ( "evening1", "شام میں" )
                            , ( "midnight", "آدھی رات" )
                            , ( "morning1", "صبح میں" )
                            , ( "night1", "رات میں" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "دوپہر" )
                            , ( "afternoon2", "سہ پہر" )
                            , ( "evening1", "شام" )
                            , ( "midnight", "آدھی رات" )
                            , ( "morning1", "صبح" )
                            , ( "night1", "رات" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM، y"
                , long = "d MMMM، y"
                , full = "EEEE، d MMMM، y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "جنوری"
                    , feb = "فروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مئی"
                    , jun = "جون"
                    , jul = "جولائی"
                    , aug = "اگست"
                    , sep = "ستمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , wide =
                    { jan = "جنوری"
                    , feb = "فروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مئی"
                    , jun = "جون"
                    , jul = "جولائی"
                    , aug = "اگست"
                    , sep = "ستمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
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
                    { jan = "جنوری"
                    , feb = "فروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مئی"
                    , jun = "جون"
                    , jul = "جولائی"
                    , aug = "اگست"
                    , sep = "ستمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
                    }
                , wide =
                    { jan = "جنوری"
                    , feb = "فروری"
                    , mar = "مارچ"
                    , apr = "اپریل"
                    , may = "مئی"
                    , jun = "جون"
                    , jul = "جولائی"
                    , aug = "اگست"
                    , sep = "ستمبر"
                    , oct = "اکتوبر"
                    , nov = "نومبر"
                    , dec = "دسمبر"
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
                    { sun = "اتوار"
                    , mon = "پیر"
                    , tue = "منگل"
                    , wed = "بدھ"
                    , thu = "جمعرات"
                    , fri = "جمعہ"
                    , sat = "ہفتہ"
                    }
                , wide =
                    { sun = "اتوار"
                    , mon = "پیر"
                    , tue = "منگل"
                    , wed = "بدھ"
                    , thu = "جمعرات"
                    , fri = "جمعہ"
                    , sat = "ہفتہ"
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
                    { sun = "اتوار"
                    , mon = "پیر"
                    , tue = "منگل"
                    , wed = "بدھ"
                    , thu = "جمعرات"
                    , fri = "جمعہ"
                    , sat = "ہفتہ"
                    }
                , wide =
                    { sun = "اتوار"
                    , mon = "پیر"
                    , tue = "منگل"
                    , wed = "بدھ"
                    , thu = "جمعرات"
                    , fri = "جمعہ"
                    , sat = "ہفتہ"
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
                { abbreviated = { bc = "قبل مسیح", ad = "عیسوی" }
                , wide = { bc = "قبل مسیح", ad = "عیسوی" }
                , narrow = { bc = "قبل مسیح", ad = "عیسوی" }
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
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM، y G" )
                , ( "GyMMMEd", "E، d MMM، y G" )
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
                , ( "Md", "d/M" )
                , ( "MEd", "E، d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E، d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM کا ہفتہ W" )
                , ( "MMMMW-count-other", "MMMM کا ہفتہ W" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E، d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM، y" )
                , ( "yMMMEd", "E، d MMM، y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y کا w ہفتہ" )
                , ( "yw-count-other", "Y کا w ہفتہ" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
