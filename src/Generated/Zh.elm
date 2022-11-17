module Generated.Zh exposing (zh, zh_Hans, zh_Hans_HK, zh_Hans_MO, zh_Hans_SG, zh_Hant, zh_Hant_HK, zh_Hant_MO)

{-|

@docs zh, zh_Hans, zh_Hans_HK, zh_Hans_MO, zh_Hans_SG, zh_Hant, zh_Hant_HK, zh_Hant_MO

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
        [ ( "zh"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 8, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 8, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
zh : Internal.Locale.Locale
zh =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "zh"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , wide =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "清晨" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , narrow =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y/M/d"
                , medium = "y年M月d日"
                , long = "y年M月d日"
                , full = "y年M月d日EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "公元前", ad = "公元" }
                , wide = { bc = "公元前", ad = "公元" }
                , narrow = { bc = "公元前", ad = "公元" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "z HH:mm:ss"
                , full = "zzzz HH:mm:ss"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "Bh时" )
                , ( "Bhm", "Bh:mm" )
                , ( "Bhms", "Bh:mm:ss" )
                , ( "d", "d日" )
                , ( "E", "ccc" )
                , ( "EBhm", "EBh:mm" )
                , ( "EBhms", "EBh:mm:ss" )
                , ( "Ed", "d日E" )
                , ( "Ehm", "Eah:mm" )
                , ( "EHm", "EHH:mm" )
                , ( "Ehms", "Eah:mm:ss" )
                , ( "EHms", "EHH:mm:ss" )
                , ( "Gy", "Gy年" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "Gy年M月" )
                , ( "GyMMMd", "Gy年M月d日" )
                , ( "GyMMMEd", "Gy年M月d日E" )
                , ( "h", "ah时" )
                , ( "H", "H时" )
                , ( "hm", "ah:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "ah:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "v ah:mm:ss" )
                , ( "Hmsv", "v HH:mm:ss" )
                , ( "hmv", "v ah:mm" )
                , ( "Hmv", "v HH:mm" )
                , ( "M", "M月" )
                , ( "Md", "M/d" )
                , ( "MEd", "M/dE" )
                , ( "MMdd", "MM/dd" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "M月d日" )
                , ( "MMMEd", "M月d日E" )
                , ( "MMMMd", "M月d日" )
                , ( "MMMMW-count-other", "MMMM第W周" )
                , ( "ms", "mm:ss" )
                , ( "y", "y年" )
                , ( "yM", "y年M月" )
                , ( "yMd", "y/M/d" )
                , ( "yMEd", "y/M/dE" )
                , ( "yMEEEEd", "y年M月d日EEEE" )
                , ( "yMM", "y年M月" )
                , ( "yMMM", "y年M月" )
                , ( "yMMMd", "y年M月d日" )
                , ( "yMMMEd", "y年M月d日E" )
                , ( "yMMMM", "y年M月" )
                , ( "yQQQ", "y年第Q季度" )
                , ( "yQQQQ", "y年第Q季度" )
                , ( "yw-count-other", "Y年第w周" )
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

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
zh_Hans : Internal.Locale.Locale
zh_Hans =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "zh"
            , script = Just "Hans"
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , wide =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "清晨" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , narrow =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y/M/d"
                , medium = "y年M月d日"
                , long = "y年M月d日"
                , full = "y年M月d日EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "公元前", ad = "公元" }
                , wide = { bc = "公元前", ad = "公元" }
                , narrow = { bc = "公元前", ad = "公元" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "z HH:mm:ss"
                , full = "zzzz HH:mm:ss"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "Bh时" )
                , ( "Bhm", "Bh:mm" )
                , ( "Bhms", "Bh:mm:ss" )
                , ( "d", "d日" )
                , ( "E", "ccc" )
                , ( "EBhm", "EBh:mm" )
                , ( "EBhms", "EBh:mm:ss" )
                , ( "Ed", "d日E" )
                , ( "Ehm", "Eah:mm" )
                , ( "EHm", "EHH:mm" )
                , ( "Ehms", "Eah:mm:ss" )
                , ( "EHms", "EHH:mm:ss" )
                , ( "Gy", "Gy年" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "Gy年M月" )
                , ( "GyMMMd", "Gy年M月d日" )
                , ( "GyMMMEd", "Gy年M月d日E" )
                , ( "h", "ah时" )
                , ( "H", "H时" )
                , ( "hm", "ah:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "ah:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "v ah:mm:ss" )
                , ( "Hmsv", "v HH:mm:ss" )
                , ( "hmv", "v ah:mm" )
                , ( "Hmv", "v HH:mm" )
                , ( "M", "M月" )
                , ( "Md", "M/d" )
                , ( "MEd", "M/dE" )
                , ( "MMdd", "MM/dd" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "M月d日" )
                , ( "MMMEd", "M月d日E" )
                , ( "MMMMd", "M月d日" )
                , ( "MMMMW-count-other", "MMMM第W周" )
                , ( "ms", "mm:ss" )
                , ( "y", "y年" )
                , ( "yM", "y年M月" )
                , ( "yMd", "y/M/d" )
                , ( "yMEd", "y/M/dE" )
                , ( "yMEEEEd", "y年M月d日EEEE" )
                , ( "yMM", "y年M月" )
                , ( "yMMM", "y年M月" )
                , ( "yMMMd", "y年M月d日" )
                , ( "yMMMEd", "y年M月d日E" )
                , ( "yMMMM", "y年M月" )
                , ( "yQQQ", "y年第Q季度" )
                , ( "yQQQQ", "y年第Q季度" )
                , ( "yw-count-other", "Y年第w周" )
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

  - Short : d/M/yy
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : z ah:mm:ss
  - Full : zzzz ah:mm:ss

-}
zh_Hans_HK : Internal.Locale.Locale
zh_Hans_HK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "zh"
            , script = Just "Hans"
            , territory = Just "HK"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , wide =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "清晨" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , narrow =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "y年M月d日"
                , long = "y年M月d日"
                , full = "y年M月d日EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "公元前", ad = "公元" }
                , wide = { bc = "公元前", ad = "公元" }
                , narrow = { bc = "公元前", ad = "公元" }
                }
            , timePatterns =
                { short = "ah:mm"
                , medium = "ah:mm:ss"
                , long = "z ah:mm:ss"
                , full = "zzzz ah:mm:ss"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "Bh时" )
                , ( "Bhm", "Bh:mm" )
                , ( "Bhms", "Bh:mm:ss" )
                , ( "d", "d日" )
                , ( "E", "ccc" )
                , ( "EBhm", "EBh:mm" )
                , ( "EBhms", "EBh:mm:ss" )
                , ( "Ed", "d日E" )
                , ( "Ehm", "Eah:mm" )
                , ( "EHm", "EHH:mm" )
                , ( "Ehms", "Eah:mm:ss" )
                , ( "EHms", "EHH:mm:ss" )
                , ( "Gy", "Gy年" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "Gy年M月" )
                , ( "GyMMMd", "Gy年M月d日" )
                , ( "GyMMMEd", "Gy年M月d日E" )
                , ( "h", "ah时" )
                , ( "H", "H时" )
                , ( "HHmm", "HH:mm" )
                , ( "hm", "ah:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "ah:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "v ah:mm:ss" )
                , ( "Hmsv", "v HH:mm:ss" )
                , ( "hmv", "v ah:mm" )
                , ( "Hmv", "v HH:mm" )
                , ( "M", "M月" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "M月d日" )
                , ( "MMMEd", "M月d日E" )
                , ( "MMMMd", "M月d日" )
                , ( "MMMMdd", "M月d日" )
                , ( "MMMMW-count-other", "MMMM第W周" )
                , ( "ms", "mm:ss" )
                , ( "y", "y年" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "d/M/y（E）" )
                , ( "yMEEEEd", "y年M月d日EEEE" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "y年M月" )
                , ( "yMMMd", "y年M月d日" )
                , ( "yMMMEd", "y年M月d日E" )
                , ( "yMMMM", "y年M月" )
                , ( "yQQQ", "y年第Q季度" )
                , ( "yQQQQ", "y年第Q季度" )
                , ( "yw-count-other", "Y年第w周" )
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
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : z ah:mm:ss
  - Full : zzzz ah:mm:ss

-}
zh_Hans_MO : Internal.Locale.Locale
zh_Hans_MO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "zh"
            , script = Just "Hans"
            , territory = Just "MO"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , wide =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "清晨" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , narrow =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "y年M月d日"
                , long = "y年M月d日"
                , full = "y年M月d日EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "公元前", ad = "公元" }
                , wide = { bc = "公元前", ad = "公元" }
                , narrow = { bc = "公元前", ad = "公元" }
                }
            , timePatterns =
                { short = "ah:mm"
                , medium = "ah:mm:ss"
                , long = "z ah:mm:ss"
                , full = "zzzz ah:mm:ss"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "Bh时" )
                , ( "Bhm", "Bh:mm" )
                , ( "Bhms", "Bh:mm:ss" )
                , ( "d", "d日" )
                , ( "E", "ccc" )
                , ( "EBhm", "EBh:mm" )
                , ( "EBhms", "EBh:mm:ss" )
                , ( "Ed", "d日E" )
                , ( "Ehm", "Eah:mm" )
                , ( "EHm", "EHH:mm" )
                , ( "Ehms", "Eah:mm:ss" )
                , ( "EHms", "EHH:mm:ss" )
                , ( "Gy", "Gy年" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "Gy年M月" )
                , ( "GyMMMd", "Gy年M月d日" )
                , ( "GyMMMEd", "Gy年M月d日E" )
                , ( "h", "ah时" )
                , ( "H", "H时" )
                , ( "hm", "ah:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "ah:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "v ah:mm:ss" )
                , ( "Hmsv", "v HH:mm:ss" )
                , ( "hmv", "v ah:mm" )
                , ( "Hmv", "v HH:mm" )
                , ( "M", "M月" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "M月d日" )
                , ( "MMMEd", "M月d日E" )
                , ( "MMMMd", "M月d日" )
                , ( "MMMMdd", "M月d日" )
                , ( "MMMMW-count-other", "MMMM第W周" )
                , ( "ms", "mm:ss" )
                , ( "y", "y年" )
                , ( "yM", "y年M月" )
                , ( "yMd", "y年M月d日" )
                , ( "yMEd", "y年M月d日，E" )
                , ( "yMEEEEd", "y年M月d日EEEE" )
                , ( "yMM", "y年M月" )
                , ( "yMMM", "y年M月" )
                , ( "yMMMd", "y年M月d日" )
                , ( "yMMMEd", "y年M月d日E" )
                , ( "yMMMM", "y年M月" )
                , ( "yQQQ", "y年第Q季度" )
                , ( "yQQQQ", "y年第Q季度" )
                , ( "yw-count-other", "Y年第w周" )
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

  - Short : dd/MM/yy
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : z ah:mm:ss
  - Full : zzzz ah:mm:ss

-}
zh_Hans_SG : Internal.Locale.Locale
zh_Hans_SG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "zh"
            , script = Just "Hans"
            , territory = Just "SG"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , wide =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "清晨" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , narrow =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "y年M月d日"
                , long = "y年M月d日"
                , full = "y年M月d日EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "一月"
                    , feb = "二月"
                    , mar = "三月"
                    , apr = "四月"
                    , may = "五月"
                    , jun = "六月"
                    , jul = "七月"
                    , aug = "八月"
                    , sep = "九月"
                    , oct = "十月"
                    , nov = "十一月"
                    , dec = "十二月"
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
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "周日"
                    , mon = "周一"
                    , tue = "周二"
                    , wed = "周三"
                    , thu = "周四"
                    , fri = "周五"
                    , sat = "周六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "公元前", ad = "公元" }
                , wide = { bc = "公元前", ad = "公元" }
                , narrow = { bc = "公元前", ad = "公元" }
                }
            , timePatterns =
                { short = "ah:mm"
                , medium = "ah:mm:ss"
                , long = "z ah:mm:ss"
                , full = "zzzz ah:mm:ss"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "Bh时" )
                , ( "Bhm", "Bh:mm" )
                , ( "Bhms", "Bh:mm:ss" )
                , ( "d", "d日" )
                , ( "E", "ccc" )
                , ( "EBhm", "EBh:mm" )
                , ( "EBhms", "EBh:mm:ss" )
                , ( "Ed", "d日E" )
                , ( "Ehm", "Eah:mm" )
                , ( "EHm", "EHH:mm" )
                , ( "Ehms", "Eah:mm:ss" )
                , ( "EHms", "EHH:mm:ss" )
                , ( "Gy", "Gy年" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "Gy年M月" )
                , ( "GyMMMd", "Gy年M月d日" )
                , ( "GyMMMEd", "Gy年M月d日E" )
                , ( "h", "ah时" )
                , ( "H", "H时" )
                , ( "hm", "ah:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "ah:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "v ah:mm:ss" )
                , ( "Hmsv", "v HH:mm:ss" )
                , ( "hmv", "v ah:mm" )
                , ( "Hmv", "v HH:mm" )
                , ( "M", "M月" )
                , ( "Md", "M-d" )
                , ( "MEd", "M-dE" )
                , ( "MMdd", "MM-dd" )
                , ( "MMM", "M月" )
                , ( "MMMd", "M月d日" )
                , ( "MMMEd", "M月d日E" )
                , ( "MMMMd", "M月d日" )
                , ( "MMMMdd", "M月d日" )
                , ( "MMMMW-count-other", "MMMM第W周" )
                , ( "ms", "mm:ss" )
                , ( "y", "y年" )
                , ( "yM", "y年M月" )
                , ( "yMd", "y年M月d日" )
                , ( "yMEd", "y年M月d日，E" )
                , ( "yMEEEEd", "y年M月d日EEEE" )
                , ( "yMM", "y年M月" )
                , ( "yMMM", "y年M月" )
                , ( "yMMMd", "y年M月d日" )
                , ( "yMMMEd", "y年M月d日E" )
                , ( "yMMMM", "y年M月" )
                , ( "yQQQ", "y年第Q季度" )
                , ( "yQQQQ", "y年第Q季度" )
                , ( "yw-count-other", "Y年第w周" )
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

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日 EEEE

Time format strings:

  - Short : Bh:mm
  - Medium : Bh:mm:ss
  - Long : Bh:mm:ss [z]
  - Full : Bh:mm:ss [zzzz]

-}
zh_Hant : Internal.Locale.Locale
zh_Hant =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "zh"
            , script = Just "Hant"
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "清晨" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , wide =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "清晨" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , narrow =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "清晨" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y/M/d"
                , medium = "y年M月d日"
                , long = "y年M月d日"
                , full = "y年M月d日 EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
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
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
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
                    { sun = "週日"
                    , mon = "週一"
                    , tue = "週二"
                    , wed = "週三"
                    , thu = "週四"
                    , fri = "週五"
                    , sat = "週六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "週日"
                    , mon = "週一"
                    , tue = "週二"
                    , wed = "週三"
                    , thu = "週四"
                    , fri = "週五"
                    , sat = "週六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "西元前", ad = "西元" }
                , wide = { bc = "西元前", ad = "西元" }
                , narrow = { bc = "西元前", ad = "西元" }
                }
            , timePatterns =
                { short = "Bh:mm"
                , medium = "Bh:mm:ss"
                , long = "Bh:mm:ss [z]"
                , full = "Bh:mm:ss [zzzz]"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "Bh時" )
                , ( "Bhm", "Bh:mm" )
                , ( "Bhms", "Bh:mm:ss" )
                , ( "d", "d日" )
                , ( "E", "ccc" )
                , ( "EBhm", "E Bh:mm" )
                , ( "EBhms", "E Bh:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E Bh:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E Bh:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "Gy年" )
                , ( "GyMd", "G y/M/d" )
                , ( "GyMMM", "Gy年M月" )
                , ( "GyMMMd", "Gy年M月d日" )
                , ( "GyMMMEd", "Gy年M月d日 E" )
                , ( "h", "Bh時" )
                , ( "H", "H時" )
                , ( "hm", "Bh:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "Bh:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "Bh:mm:ss [v]" )
                , ( "Hmsv", "HH:mm:ss [v]" )
                , ( "hmv", "Bh:mm [v]" )
                , ( "Hmv", "HH:mm [v]" )
                , ( "M", "M月" )
                , ( "Md", "M/d" )
                , ( "MEd", "M/d（E）" )
                , ( "MMdd", "MM/dd" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "M月d日" )
                , ( "MMMEd", "M月d日 E" )
                , ( "MMMMd", "M月d日" )
                , ( "MMMMW-count-other", "MMMM的第W週" )
                , ( "ms", "mm:ss" )
                , ( "y", "y年" )
                , ( "yM", "y/M" )
                , ( "yMd", "y/M/d" )
                , ( "yMEd", "y/M/d（E）" )
                , ( "yMEEEEd", "y年M月d日 EEEE" )
                , ( "yMM", "y/MM" )
                , ( "yMMM", "y年M月" )
                , ( "yMMMd", "y年M月d日" )
                , ( "yMMMEd", "y年M月d日 E" )
                , ( "yMMMM", "y年M月" )
                , ( "yQQQ", "y年QQQ" )
                , ( "yQQQQ", "y年QQQQ" )
                , ( "yw-count-other", "Y年的第w週" )
                ]
            , timeSkeletons =
                { short = "Bhmm"
                , medium = "Bhmmss"
                , long = "Bhmmssz"
                , full = "Bhmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
zh_Hant_HK : Internal.Locale.Locale
zh_Hant_HK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "zh"
            , script = Just "Hant"
            , territory = Just "HK"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , wide =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , narrow =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/y"
                , medium = "y年M月d日"
                , long = "y年M月d日"
                , full = "y年M月d日EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
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
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
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
                    { sun = "週日"
                    , mon = "週一"
                    , tue = "週二"
                    , wed = "週三"
                    , thu = "週四"
                    , fri = "週五"
                    , sat = "週六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "週日"
                    , mon = "週一"
                    , tue = "週二"
                    , wed = "週三"
                    , thu = "週四"
                    , fri = "週五"
                    , sat = "週六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "公元前", ad = "公元" }
                , wide = { bc = "公元前", ad = "公元" }
                , narrow = { bc = "公元前", ad = "公元" }
                }
            , timePatterns =
                { short = "ah:mm"
                , medium = "ah:mm:ss"
                , long = "ah:mm:ss [z]"
                , full = "ah:mm:ss [zzzz]"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "Bh時" )
                , ( "Bhm", "Bh:mm" )
                , ( "Bhms", "Bh:mm:ss" )
                , ( "d", "d日" )
                , ( "E", "ccc" )
                , ( "EBhm", "E Bh:mm" )
                , ( "EBhms", "E Bh:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E ah:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E ah:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "Gy年" )
                , ( "GyMd", "G y/M/d" )
                , ( "GyMMM", "Gy年M月" )
                , ( "GyMMMd", "Gy年M月d日" )
                , ( "GyMMMEd", "Gy年M月d日E" )
                , ( "h", "ah時" )
                , ( "H", "H時" )
                , ( "hm", "ah:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "ah:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "ah:mm:ss [v]" )
                , ( "Hmsv", "HH:mm:ss [v]" )
                , ( "hmv", "ah:mm [v]" )
                , ( "Hmv", "HH:mm [v]" )
                , ( "M", "M月" )
                , ( "Md", "d/M" )
                , ( "MEd", "d/M（E）" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "M月d日" )
                , ( "MMMEd", "M月d日E" )
                , ( "MMMMd", "M月d日" )
                , ( "MMMMW-count-other", "M月第W週" )
                , ( "ms", "mm:ss" )
                , ( "y", "y年" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "d/M/y（E）" )
                , ( "yMEEEEd", "y年M月d日 EEEE" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "y年M月" )
                , ( "yMMMd", "y年M月d日" )
                , ( "yMMMEd", "y年M月d日E" )
                , ( "yMMMM", "y年M月" )
                , ( "yQQQ", "y年QQQ" )
                , ( "yQQQQ", "y年QQQQ" )
                , ( "yw-count-other", "Y年第w週" )
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

  - Short : d/M/y
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
zh_Hant_MO : Internal.Locale.Locale
zh_Hant_MO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "zh"
            , script = Just "Hant"
            , territory = Just "MO"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , wide =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                , narrow =
                    { am = "上午"
                    , pm = "下午"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "中午" )
                            , ( "afternoon2", "下午" )
                            , ( "evening1", "晚上" )
                            , ( "midnight", "午夜" )
                            , ( "morning1", "早上" )
                            , ( "morning2", "上午" )
                            , ( "night1", "凌晨" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/y"
                , medium = "y年M月d日"
                , long = "y年M月d日"
                , full = "y年M月d日EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
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
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
                    }
                , wide =
                    { jan = "1月"
                    , feb = "2月"
                    , mar = "3月"
                    , apr = "4月"
                    , may = "5月"
                    , jun = "6月"
                    , jul = "7月"
                    , aug = "8月"
                    , sep = "9月"
                    , oct = "10月"
                    , nov = "11月"
                    , dec = "12月"
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
                    { sun = "週日"
                    , mon = "週一"
                    , tue = "週二"
                    , wed = "週三"
                    , thu = "週四"
                    , fri = "週五"
                    , sat = "週六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "週日"
                    , mon = "週一"
                    , tue = "週二"
                    , wed = "週三"
                    , thu = "週四"
                    , fri = "週五"
                    , sat = "週六"
                    }
                , wide =
                    { sun = "星期日"
                    , mon = "星期一"
                    , tue = "星期二"
                    , wed = "星期三"
                    , thu = "星期四"
                    , fri = "星期五"
                    , sat = "星期六"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "一"
                    , tue = "二"
                    , wed = "三"
                    , thu = "四"
                    , fri = "五"
                    , sat = "六"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "公元前", ad = "公元" }
                , wide = { bc = "公元前", ad = "公元" }
                , narrow = { bc = "公元前", ad = "公元" }
                }
            , timePatterns =
                { short = "ah:mm"
                , medium = "ah:mm:ss"
                , long = "ah:mm:ss [z]"
                , full = "ah:mm:ss [zzzz]"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "Bh時" )
                , ( "Bhm", "Bh:mm" )
                , ( "Bhms", "Bh:mm:ss" )
                , ( "d", "d日" )
                , ( "E", "ccc" )
                , ( "EBhm", "E Bh:mm" )
                , ( "EBhms", "E Bh:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E ah:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E ah:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "Gy年" )
                , ( "GyMd", "G y/M/d" )
                , ( "GyMMM", "Gy年M月" )
                , ( "GyMMMd", "Gy年M月d日" )
                , ( "GyMMMEd", "Gy年M月d日E" )
                , ( "h", "ah時" )
                , ( "H", "H時" )
                , ( "hm", "ah:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "ah:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "ah:mm:ss [v]" )
                , ( "Hmsv", "HH:mm:ss [v]" )
                , ( "hmv", "ah:mm [v]" )
                , ( "Hmv", "HH:mm [v]" )
                , ( "M", "M月" )
                , ( "Md", "d/M" )
                , ( "MEd", "d/M（E）" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "M月d日" )
                , ( "MMMEd", "M月d日E" )
                , ( "MMMMd", "M月d日" )
                , ( "MMMMW-count-other", "M月第W週" )
                , ( "ms", "mm:ss" )
                , ( "y", "y年" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "d/M/y（E）" )
                , ( "yMEEEEd", "y年M月d日 EEEE" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "y年M月" )
                , ( "yMMMd", "y年M月d日" )
                , ( "yMMMEd", "y年M月d日E" )
                , ( "yMMMM", "y年M月" )
                , ( "yQQQ", "y年QQQ" )
                , ( "yQQQQ", "y年QQQQ" )
                , ( "yw-count-other", "Y年第w週" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
