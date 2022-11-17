module Generated.Ja exposing (ja)

{-|

@docs ja

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
        [ ( "ja"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 23, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 4, 0 ) "night2"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : y/MM/dd
  - Medium : y/MM/dd
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H時mm分ss秒 zzzz

-}
ja : Internal.Locale.Locale
ja =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ja"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "午前"
                    , pm = "午後"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "昼" )
                            , ( "evening1", "夕方" )
                            , ( "midnight", "真夜中" )
                            , ( "morning1", "朝" )
                            , ( "night1", "夜" )
                            , ( "night2", "夜中" )
                            , ( "noon", "正午" )
                            ]
                    }
                , wide =
                    { am = "午前"
                    , pm = "午後"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "昼" )
                            , ( "evening1", "夕方" )
                            , ( "midnight", "真夜中" )
                            , ( "morning1", "朝" )
                            , ( "night1", "夜" )
                            , ( "night2", "夜中" )
                            , ( "noon", "正午" )
                            ]
                    }
                , narrow =
                    { am = "午前"
                    , pm = "午後"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "昼" )
                            , ( "evening1", "夕方" )
                            , ( "midnight", "真夜中" )
                            , ( "morning1", "朝" )
                            , ( "night1", "夜" )
                            , ( "night2", "夜中" )
                            , ( "noon", "正午" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y/MM/dd"
                , medium = "y/MM/dd"
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
                    { sun = "日"
                    , mon = "月"
                    , tue = "火"
                    , wed = "水"
                    , thu = "木"
                    , fri = "金"
                    , sat = "土"
                    }
                , wide =
                    { sun = "日曜日"
                    , mon = "月曜日"
                    , tue = "火曜日"
                    , wed = "水曜日"
                    , thu = "木曜日"
                    , fri = "金曜日"
                    , sat = "土曜日"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "月"
                    , tue = "火"
                    , wed = "水"
                    , thu = "木"
                    , fri = "金"
                    , sat = "土"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "日"
                    , mon = "月"
                    , tue = "火"
                    , wed = "水"
                    , thu = "木"
                    , fri = "金"
                    , sat = "土"
                    }
                , wide =
                    { sun = "日曜日"
                    , mon = "月曜日"
                    , tue = "火曜日"
                    , wed = "水曜日"
                    , thu = "木曜日"
                    , fri = "金曜日"
                    , sat = "土曜日"
                    }
                , narrow =
                    { sun = "日"
                    , mon = "月"
                    , tue = "火"
                    , wed = "水"
                    , thu = "木"
                    , fri = "金"
                    , sat = "土"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "紀元前", ad = "西暦" }
                , wide = { bc = "紀元前", ad = "西暦" }
                , narrow = { bc = "BC", ad = "AD" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H時mm分ss秒 zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "BK時" )
                , ( "Bhm", "BK:mm" )
                , ( "Bhms", "BK:mm:ss" )
                , ( "d", "d日" )
                , ( "E", "ccc" )
                , ( "EBhm", "BK:mm (E)" )
                , ( "EBhms", "BK:mm:ss (E)" )
                , ( "Ed", "d日(E)" )
                , ( "EEEEd", "d日EEEE" )
                , ( "Ehm", "aK:mm (E)" )
                , ( "EHm", "H:mm (E)" )
                , ( "Ehms", "aK:mm:ss (E)" )
                , ( "EHms", "H:mm:ss (E)" )
                , ( "Gy", "Gy年" )
                , ( "GyMd", "Gy/M/d" )
                , ( "GyMMM", "Gy年M月" )
                , ( "GyMMMd", "Gy年M月d日" )
                , ( "GyMMMEd", "Gy年M月d日(E)" )
                , ( "GyMMMEEEEd", "Gy年M月d日EEEE" )
                , ( "h", "aK時" )
                , ( "H", "H時" )
                , ( "hm", "aK:mm" )
                , ( "Hm", "H:mm" )
                , ( "hms", "aK:mm:ss" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "aK:mm:ss v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmv", "aK:mm v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "M月" )
                , ( "Md", "M/d" )
                , ( "MEd", "M/d(E)" )
                , ( "MEEEEd", "M/dEEEE" )
                , ( "MMM", "M月" )
                , ( "MMMd", "M月d日" )
                , ( "MMMEd", "M月d日(E)" )
                , ( "MMMEEEEd", "M月d日EEEE" )
                , ( "MMMMd", "M月d日" )
                , ( "MMMMW-count-other", "M月第W週" )
                , ( "ms", "mm:ss" )
                , ( "y", "y年" )
                , ( "yM", "y/M" )
                , ( "yMd", "y/M/d" )
                , ( "yMEd", "y/M/d(E)" )
                , ( "yMEEEEd", "y/M/dEEEE" )
                , ( "yMM", "y/MM" )
                , ( "yMMM", "y年M月" )
                , ( "yMMMd", "y年M月d日" )
                , ( "yMMMEd", "y年M月d日(E)" )
                , ( "yMMMEEEEd", "y年M月d日EEEE" )
                , ( "yMMMM", "y年M月" )
                , ( "yQQQ", "y/QQQ" )
                , ( "yQQQQ", "y年QQQQ" )
                , ( "yw-count-other", "Y年第w週" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
