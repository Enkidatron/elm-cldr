module Generated.Vi exposing (vi)

{-|

@docs vi

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
        [ ( "vi"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
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

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
vi : Internal.Locale.Locale
vi =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "vi"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "SA"
                    , pm = "CH"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "chiều" )
                            , ( "evening1", "tối" )
                            , ( "midnight", "nửa đêm" )
                            , ( "morning1", "sáng" )
                            , ( "night1", "đêm" )
                            , ( "noon", "TR" )
                            ]
                    }
                , wide =
                    { am = "SA"
                    , pm = "CH"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "chiều" )
                            , ( "evening1", "tối" )
                            , ( "midnight", "nửa đêm" )
                            , ( "morning1", "sáng" )
                            , ( "night1", "đêm" )
                            , ( "noon", "trưa" )
                            ]
                    }
                , narrow =
                    { am = "s"
                    , pm = "c"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "chiều" )
                            , ( "evening1", "tối" )
                            , ( "midnight", "nửa đêm" )
                            , ( "morning1", "sáng" )
                            , ( "night1", "đêm" )
                            , ( "noon", "tr" )
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
                    { jan = "thg 1"
                    , feb = "thg 2"
                    , mar = "thg 3"
                    , apr = "thg 4"
                    , may = "thg 5"
                    , jun = "thg 6"
                    , jul = "thg 7"
                    , aug = "thg 8"
                    , sep = "thg 9"
                    , oct = "thg 10"
                    , nov = "thg 11"
                    , dec = "thg 12"
                    }
                , wide =
                    { jan = "tháng 1"
                    , feb = "tháng 2"
                    , mar = "tháng 3"
                    , apr = "tháng 4"
                    , may = "tháng 5"
                    , jun = "tháng 6"
                    , jul = "tháng 7"
                    , aug = "tháng 8"
                    , sep = "tháng 9"
                    , oct = "tháng 10"
                    , nov = "tháng 11"
                    , dec = "tháng 12"
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
                    { jan = "Tháng 1"
                    , feb = "Tháng 2"
                    , mar = "Tháng 3"
                    , apr = "Tháng 4"
                    , may = "Tháng 5"
                    , jun = "Tháng 6"
                    , jul = "Tháng 7"
                    , aug = "Tháng 8"
                    , sep = "Tháng 9"
                    , oct = "Tháng 10"
                    , nov = "Tháng 11"
                    , dec = "Tháng 12"
                    }
                , wide =
                    { jan = "Tháng 1"
                    , feb = "Tháng 2"
                    , mar = "Tháng 3"
                    , apr = "Tháng 4"
                    , may = "Tháng 5"
                    , jun = "Tháng 6"
                    , jul = "Tháng 7"
                    , aug = "Tháng 8"
                    , sep = "Tháng 9"
                    , oct = "Tháng 10"
                    , nov = "Tháng 11"
                    , dec = "Tháng 12"
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
                    { sun = "CN"
                    , mon = "Th 2"
                    , tue = "Th 3"
                    , wed = "Th 4"
                    , thu = "Th 5"
                    , fri = "Th 6"
                    , sat = "Th 7"
                    }
                , wide =
                    { sun = "Chủ Nhật"
                    , mon = "Thứ Hai"
                    , tue = "Thứ Ba"
                    , wed = "Thứ Tư"
                    , thu = "Thứ Năm"
                    , fri = "Thứ Sáu"
                    , sat = "Thứ Bảy"
                    }
                , narrow =
                    { sun = "CN"
                    , mon = "T2"
                    , tue = "T3"
                    , wed = "T4"
                    , thu = "T5"
                    , fri = "T6"
                    , sat = "T7"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "CN"
                    , mon = "Th 2"
                    , tue = "Th 3"
                    , wed = "Th 4"
                    , thu = "Th 5"
                    , fri = "Th 6"
                    , sat = "Th 7"
                    }
                , wide =
                    { sun = "Chủ Nhật"
                    , mon = "Thứ Hai"
                    , tue = "Thứ Ba"
                    , wed = "Thứ Tư"
                    , thu = "Thứ Năm"
                    , fri = "Thứ Sáu"
                    , sat = "Thứ Bảy"
                    }
                , narrow =
                    { sun = "CN"
                    , mon = "T2"
                    , tue = "T3"
                    , wed = "T4"
                    , thu = "T5"
                    , fri = "T6"
                    , sat = "T7"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "TCN", ad = "SCN" }
                , wide =
                    { bc = "Trước Chúa Giáng Sinh", ad = "Sau Công Nguyên" }
                , narrow = { bc = "TCN", ad = "CN" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{0} {1}"
                , medium = "{0} {1}"
                , long = "{0} {1}"
                , full = "{0} {1}"
                }
            , availableFormats =
                [ ( "Bh", "h 'giờ' B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "h:mm B E" )
                , ( "EBhms", "h:mm:ss B E" )
                , ( "Ed", "E, 'ngày' d" )
                , ( "Ehm", "h:mm\u{202F}a E" )
                , ( "EHm", "HH:mm E" )
                , ( "Ehms", "h:mm:ss\u{202F}a E" )
                , ( "EHms", "HH:mm:ss E" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y G" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM, y G" )
                , ( "GyMMMEd", "E, d MMM, y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH 'giờ'" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-other", "'tuần' W 'của' 'tháng' M" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "'tháng' MM, y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "E, d MMM, y" )
                , ( "yMMMM", "MMMM 'năm' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ 'năm' y" )
                , ( "yw-count-other", "'tuần' w 'của' 'năm' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
