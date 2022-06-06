module Generated.Alt.Th exposing (th)

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
        [ ( "th"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 16, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening2"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM G y
  - Full : EEEEที่ d MMMM G y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H นาฬิกา mm นาที ss วินาที z
  - Full : H นาฬิกา mm นาที ss วินาที zzzz

-}
th : Internal.Locale.Locale
th =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "th"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ก่อนเที่ยง"
                    , pm = "หลังเที่ยง"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ในตอนบ่าย" )
                            , ( "afternoon2", "บ่าย" )
                            , ( "evening1", "ในตอนเย็น" )
                            , ( "evening2", "ค่ำ" )
                            , ( "midnight", "เที่ยงคืน" )
                            , ( "morning1", "ในตอนเช้า" )
                            , ( "night1", "กลางคืน" )
                            , ( "noon", "เที่ยง" )
                            ]
                    }
                , wide =
                    { am = "ก่อนเที่ยง"
                    , pm = "หลังเที่ยง"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ในตอนบ่าย" )
                            , ( "afternoon2", "บ่าย" )
                            , ( "evening1", "ในตอนเย็น" )
                            , ( "evening2", "ค่ำ" )
                            , ( "midnight", "เที่ยงคืน" )
                            , ( "morning1", "ในตอนเช้า" )
                            , ( "night1", "กลางคืน" )
                            , ( "noon", "เที่ยง" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "เที่ยง" )
                            , ( "afternoon2", "บ่าย" )
                            , ( "evening1", "เย็น" )
                            , ( "evening2", "ค่ำ" )
                            , ( "midnight", "เที่ยงคืน" )
                            , ( "morning1", "เช้า" )
                            , ( "night1", "กลางคืน" )
                            , ( "noon", "เที่ยง" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM G y"
                , full = "EEEEที่ d MMMM G y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ม.ค."
                    , feb = "ก.พ."
                    , mar = "มี.ค."
                    , apr = "เม.ย."
                    , may = "พ.ค."
                    , jun = "มิ.ย."
                    , jul = "ก.ค."
                    , aug = "ส.ค."
                    , sep = "ก.ย."
                    , oct = "ต.ค."
                    , nov = "พ.ย."
                    , dec = "ธ.ค."
                    }
                , wide =
                    { jan = "มกราคม"
                    , feb = "กุมภาพันธ์"
                    , mar = "มีนาคม"
                    , apr = "เมษายน"
                    , may = "พฤษภาคม"
                    , jun = "มิถุนายน"
                    , jul = "กรกฎาคม"
                    , aug = "สิงหาคม"
                    , sep = "กันยายน"
                    , oct = "ตุลาคม"
                    , nov = "พฤศจิกายน"
                    , dec = "ธันวาคม"
                    }
                , narrow =
                    { jan = "ม.ค."
                    , feb = "ก.พ."
                    , mar = "มี.ค."
                    , apr = "เม.ย."
                    , may = "พ.ค."
                    , jun = "มิ.ย."
                    , jul = "ก.ค."
                    , aug = "ส.ค."
                    , sep = "ก.ย."
                    , oct = "ต.ค."
                    , nov = "พ.ย."
                    , dec = "ธ.ค."
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ม.ค."
                    , feb = "ก.พ."
                    , mar = "มี.ค."
                    , apr = "เม.ย."
                    , may = "พ.ค."
                    , jun = "มิ.ย."
                    , jul = "ก.ค."
                    , aug = "ส.ค."
                    , sep = "ก.ย."
                    , oct = "ต.ค."
                    , nov = "พ.ย."
                    , dec = "ธ.ค."
                    }
                , wide =
                    { jan = "มกราคม"
                    , feb = "กุมภาพันธ์"
                    , mar = "มีนาคม"
                    , apr = "เมษายน"
                    , may = "พฤษภาคม"
                    , jun = "มิถุนายน"
                    , jul = "กรกฎาคม"
                    , aug = "สิงหาคม"
                    , sep = "กันยายน"
                    , oct = "ตุลาคม"
                    , nov = "พฤศจิกายน"
                    , dec = "ธันวาคม"
                    }
                , narrow =
                    { jan = "ม.ค."
                    , feb = "ก.พ."
                    , mar = "มี.ค."
                    , apr = "เม.ย."
                    , may = "พ.ค."
                    , jun = "มิ.ย."
                    , jul = "ก.ค."
                    , aug = "ส.ค."
                    , sep = "ก.ย."
                    , oct = "ต.ค."
                    , nov = "พ.ย."
                    , dec = "ธ.ค."
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "อา."
                    , mon = "จ."
                    , tue = "อ."
                    , wed = "พ."
                    , thu = "พฤ."
                    , fri = "ศ."
                    , sat = "ส."
                    }
                , wide =
                    { sun = "วันอาทิตย์"
                    , mon = "วันจันทร์"
                    , tue = "วันอังคาร"
                    , wed = "วันพุธ"
                    , thu = "วันพฤหัสบดี"
                    , fri = "วันศุกร์"
                    , sat = "วันเสาร์"
                    }
                , narrow =
                    { sun = "อา"
                    , mon = "จ"
                    , tue = "อ"
                    , wed = "พ"
                    , thu = "พฤ"
                    , fri = "ศ"
                    , sat = "ส"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "อา."
                    , mon = "จ."
                    , tue = "อ."
                    , wed = "พ."
                    , thu = "พฤ."
                    , fri = "ศ."
                    , sat = "ส."
                    }
                , wide =
                    { sun = "วันอาทิตย์"
                    , mon = "วันจันทร์"
                    , tue = "วันอังคาร"
                    , wed = "วันพุธ"
                    , thu = "วันพฤหัสบดี"
                    , fri = "วันศุกร์"
                    , sat = "วันเสาร์"
                    }
                , narrow =
                    { sun = "อา"
                    , mon = "จ"
                    , tue = "อ"
                    , wed = "พ"
                    , thu = "พฤ"
                    , fri = "ศ"
                    , sat = "ส"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ก่อน ค.ศ.", ad = "ค.ศ." }
                , wide = { bc = "ปีก่อนคริสตกาล", ad = "คริสต์ศักราช" }
                , narrow = { bc = "ก่อน ค.ศ.", ad = "ค.ศ." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "H นาฬิกา mm นาที ss วินาที z"
                , full = "H นาฬิกา mm นาที ss วินาที zzzz"
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
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm น." )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "d/M/GGGGG y" )
                , ( "GyMMM", "MMM G y" )
                , ( "GyMMMd", "d MMM G y" )
                , ( "GyMMMEd", "E d MMM G y" )
                , ( "GyMMMEEEEd", "EEEEที่ d MMM G y" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm น." )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm น. a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMEEEEd", "EEEEที่ d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMEEEEd", "EEEEที่ d MMMM" )
                , ( "MMMMW-count-other", "สัปดาห์ที่ W ของเดือนMMMM" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMEEEEd", "EEEEที่ d MMM y" )
                , ( "yMMMM", "MMMM G y" )
                , ( "yMMMMd", "d MMMM G y" )
                , ( "yMMMMEd", "E d MMMM G y" )
                , ( "yMMMMEEEEd", "EEEEที่ d MMMM G y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ G y" )
                , ( "yw-count-other", "สัปดาห์ที่ w ของปี Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
