module Generated.Th exposing (th)

import Cldr.Format.Options as Opts
import Dict
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Tagged exposing (Tagged(..))


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
    Internal.Locale.Locale
        { languageId = Lang (Tagged.tag "th") Nothing Nothing Nothing
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
        , dayPeriodRuleSet = th_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Year Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                , Sym.Literal " "
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            , long =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                , Sym.Literal " "
                , Sym.Symbol (Sym.Era Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            , full =
                [ Sym.Symbol (Sym.Weekday Sym.Wide)
                , Sym.Literal "ที่ "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                , Sym.Literal " "
                , Sym.Symbol (Sym.Era Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                , Sym.Literal " นาฬิกา "
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal " นาที "
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " วินาที "
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                ]
            , full =
                [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                , Sym.Literal " นาฬิกา "
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal " นาที "
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " วินาที "
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                ]
            }
        , dateTimeTokens =
            { short = [ DateGoesHere, Text " ", TimeGoesHere ]
            , medium = [ DateGoesHere, Text " ", TimeGoesHere ]
            , long = [ DateGoesHere, Text " ", TimeGoesHere ]
            , full = [ DateGoesHere, Text " ", TimeGoesHere ]
            }
        , availableFormats =
            [ Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Just Opts.Short
                    , hour = Just Opts.Numeric
                    , minute = Nothing
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Just Opts.Short
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Just Opts.Short
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Just Opts.Numeric
                    , weekday = Nothing
                    }
                , formatSymbols = [ Sym.Symbol (Sym.Day Sym.MinimumDigits) ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Nothing
                    , weekday = Just Opts.Short
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.WeekdayStandalone Sym.Abbreviated) ]
                }
            , Internal.Locale.DateTimeAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Nothing
                    , weekday = Just Opts.Short
                    , period = Nothing
                    , dayPeriod = Just Opts.Short
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal " "
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    ]
                }
            , Internal.Locale.DateTimeAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Nothing
                    , weekday = Just Opts.Short
                    , period = Nothing
                    , dayPeriod = Just Opts.Short
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
                    , Sym.Literal " "
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Short
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateTimeAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Nothing
                    , weekday = Just Opts.Short
                    , period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    ]
                }
            , Internal.Locale.DateTimeAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Nothing
                    , weekday = Just Opts.Short
                    , period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Time (Sym.Hour24From0 Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal " น."
                    ]
                }
            , Internal.Locale.DateTimeAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Nothing
                    , weekday = Just Opts.Short
                    , period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    ]
                }
            , Internal.Locale.DateTimeAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Nothing
                    , weekday = Just Opts.Short
                    , period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Time (Sym.Hour24From0 Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Just Opts.Short
                    , year = Just Opts.Numeric
                    , month = Nothing
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Just Opts.Short
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Era Sym.Narrow)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Just Opts.Short
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Short)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Just Opts.Short
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Short)
                    , day = Just Opts.Numeric
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Just Opts.Short
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Short)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Short
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Just Opts.Short
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Short)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Wide)
                    , Sym.Literal "ที่ "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Nothing
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Nothing
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols = [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit) ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal " น."
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal " น. "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.Numeric
                    , minute = Just Opts.Numeric
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol
                        (Sym.MonthStandalone (Sym.Number Sym.MinimumDigits))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Short
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Short)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol
                        (Sym.MonthStandalone (Sym.Text Sym.Abbreviated))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Short)
                    , day = Just Opts.Numeric
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Short)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Short
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Short)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Wide)
                    , Sym.Literal "ที่ "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Long)
                    , day = Just Opts.Numeric
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Long)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Short
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Long)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Wide)
                    , Sym.Literal "ที่ "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Nothing
                    , minute = Just Opts.TwoDigit
                    , second = Just Opts.TwoDigit
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Nothing
                    , minute = Just Opts.Numeric
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Nothing
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols = [ Sym.Symbol (Sym.Year Sym.MinimumDigits) ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Short
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Short)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Short)
                    , day = Just Opts.Numeric
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Short)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Short
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Short)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Wide)
                    , Sym.Literal "ที่ "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Long)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Long)
                    , day = Just Opts.Numeric
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Long)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Short
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Text Opts.Long)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Weekday Sym.Wide)
                    , Sym.Literal "ที่ "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            ]
        , hour12ByDefault = False
        }


th_dayPeriodRules : List Internal.DayPeriodRule.DayPeriodRule
th_dayPeriodRules =
    [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
    , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 16, 0 ) "afternoon2"
    , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "evening1"
    , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening2"
    , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
    , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
    , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
    , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
    ]
