module Generated.Zh exposing (zh, zh_Hans, zh_Hans_HK, zh_Hans_MO, zh_Hans_SG, zh_Hant, zh_Hant_HK, zh_Hant_MO)

import Cldr.Format.Options as Opts
import DateFormat exposing (..)
import Dict
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.Locale exposing (DateTimeToken(..), Internal, LanguageId(..), normalize)
import Tagged exposing (Tagged(..))


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
    Internal.Locale.Locale
        { languageId = Lang (Tagged.tag "zh") Nothing Nothing Nothing
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
        , dayPeriodRuleSet = zh_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                , Sym.Symbol (Sym.Weekday Sym.Wide)
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
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , full =
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "日" ]
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Hour24From0 Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
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
                    [ Sym.Symbol (Sym.Era Sym.Narrow)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
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
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "年" ]
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    ]
                }
            ]
        , hour12ByDefault = False
        }


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
    Internal.Locale.Locale
        { languageId =
            Lang (Tagged.tag "zh") (Just (Tagged.tag "Hans")) Nothing Nothing
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
        , dayPeriodRuleSet = zh_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                , Sym.Symbol (Sym.Weekday Sym.Wide)
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
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , full =
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "日" ]
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Hour24From0 Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
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
                    [ Sym.Symbol (Sym.Era Sym.Narrow)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
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
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "年" ]
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    ]
                }
            ]
        , hour12ByDefault = False
        }


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
    Internal.Locale.Locale
        { languageId =
            Lang
                (Tagged.tag "zh")
                (Just (Tagged.tag "Hans"))
                (Just (Tagged.tag "HK"))
                Nothing
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
        , dayPeriodRuleSet = zh_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Year Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                , Sym.Symbol (Sym.Weekday Sym.Wide)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , full =
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "日" ]
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Hour24From0 Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
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
                    [ Sym.Symbol (Sym.Era Sym.Narrow)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "时"
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.TwoDigit
                    , minute = Just Opts.TwoDigit
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
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
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    , Sym.Literal ", "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.TwoDigit)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Long)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "年" ]
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "（"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal "）"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    ]
                }
            ]
        , hour12ByDefault = True
        }


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
    Internal.Locale.Locale
        { languageId =
            Lang
                (Tagged.tag "zh")
                (Just (Tagged.tag "Hans"))
                (Just (Tagged.tag "MO"))
                Nothing
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
        , dayPeriodRuleSet = zh_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Year Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                , Sym.Symbol (Sym.Weekday Sym.Wide)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , full =
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "日" ]
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Hour24From0 Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
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
                    [ Sym.Symbol (Sym.Era Sym.Narrow)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
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
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    , Sym.Literal ", "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.TwoDigit)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Long)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "年" ]
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日，"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    ]
                }
            ]
        , hour12ByDefault = True
        }


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
    Internal.Locale.Locale
        { languageId =
            Lang
                (Tagged.tag "zh")
                (Just (Tagged.tag "Hans"))
                (Just (Tagged.tag "SG"))
                Nothing
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
        , dayPeriodRuleSet = zh_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Day Sym.TwoDigit)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Year Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                , Sym.Symbol (Sym.Weekday Sym.Wide)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , full =
                [ Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "日" ]
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Hour24From0 Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
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
                    [ Sym.Symbol (Sym.Era Sym.Narrow)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "时"
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
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
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
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "-"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Text Opts.Long)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "年" ]
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日，"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    ]
                }
            ]
        , hour12ByDefault = True
        }


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
    Internal.Locale.Locale
        { languageId =
            Lang (Tagged.tag "zh") (Just (Tagged.tag "Hant")) Nothing Nothing
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
        , dayPeriodRuleSet = zh_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日 "
                , Sym.Symbol (Sym.Weekday Sym.Wide)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " ["
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                , Sym.Literal "]"
                ]
            , full =
                [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " ["
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                , Sym.Literal "]"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "時"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "日" ]
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日 "
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "時"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "時"
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
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "（"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal "）"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日 "
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "年" ]
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "（"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal "）"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日 "
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日 "
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    ]
                }
            ]
        , hour12ByDefault = True
        }


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
    Internal.Locale.Locale
        { languageId =
            Lang
                (Tagged.tag "zh")
                (Just (Tagged.tag "Hant"))
                (Just (Tagged.tag "HK"))
                Nothing
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
        , dayPeriodRuleSet = zh_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                , Sym.Symbol (Sym.Weekday Sym.Wide)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " ["
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                , Sym.Literal "]"
                ]
            , full =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " ["
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                , Sym.Literal "]"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "時"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "日" ]
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "時"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "時"
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
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "（"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal "）"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.TwoDigit)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "年" ]
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "（"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal "）"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日 "
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    ]
                }
            ]
        , hour12ByDefault = True
        }


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
    Internal.Locale.Locale
        { languageId =
            Lang
                (Tagged.tag "zh")
                (Just (Tagged.tag "Hant"))
                (Just (Tagged.tag "MO"))
                Nothing
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
        , dayPeriodRuleSet = zh_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "年"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "月"
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "日"
                , Sym.Symbol (Sym.Weekday Sym.Wide)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " ["
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                , Sym.Literal "]"
                ]
            , full =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " ["
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                , Sym.Literal "]"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "時"
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "日" ]
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From1 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "時"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "時"
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
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Second Sym.TwoDigit)
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    , Sym.Literal " ["
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal "]"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "（"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal "）"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Just Opts.TwoDigit
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.TwoDigit)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "年" ]
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "（"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal "）"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日 "
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Just Opts.Numeric
                    , month = Just (Opts.Number Opts.TwoDigit)
                    , day = Nothing
                    , weekday = Nothing
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    ]
                }
            ]
        , hour12ByDefault = True
        }


zh_dayPeriodRules : List Internal.DayPeriodRule.DayPeriodRule
zh_dayPeriodRules =
    [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
    , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 19, 0 ) "afternoon2"
    , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "evening1"
    , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
    , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 8, 0 ) "morning1"
    , Internal.DayPeriodRule.FromBefore ( 8, 0 ) ( 12, 0 ) "morning2"
    , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
    ]
