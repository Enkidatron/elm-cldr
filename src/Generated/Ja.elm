module Generated.Ja exposing (ja)

import Cldr.Format.Options as Opts
import Dict
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Tagged exposing (Tagged(..))


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
    Internal.Locale.Locale
        { languageId = Lang (Tagged.tag "ja") Nothing Nothing Nothing
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
        , dayPeriodRuleSet = ja_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Day Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                ]
            , full =
                [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                , Sym.Literal "時"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal "分"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal "秒 "
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
                    [ Sym.Symbol (Sym.FlexibleDayPeriod Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From0 Sym.MinimumDigits)
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
                    , Sym.Symbol (Sym.Hour12From0 Sym.MinimumDigits)
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
                    , Sym.Symbol (Sym.Hour12From0 Sym.MinimumDigits)
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
                    [ Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From0 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ")"
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
                    [ Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From0 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ")"
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
                    , Sym.Literal "日("
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal ")"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Nothing
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
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
                    [ Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From0 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ")"
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
                    [ Sym.Symbol (Sym.Time (Sym.Hour24From0 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ")"
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
                    [ Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Symbol (Sym.Time (Sym.Hour12From0 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ")"
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
                    [ Sym.Symbol (Sym.Time (Sym.Hour24From0 Sym.MinimumDigits))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Minute Sym.TwoDigit))
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Time (Sym.Second Sym.TwoDigit))
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ")"
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
                    , Sym.Literal "日("
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal ")"
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
                    [ Sym.Symbol (Sym.Era Sym.Abbreviated)
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "年"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
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
                    , Sym.Symbol (Sym.Hour12From0 Sym.MinimumDigits)
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
                    , Sym.Symbol (Sym.Hour12From0 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
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
                    , Sym.Symbol (Sym.Hour12From0 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
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
                    , Sym.Symbol (Sym.Hour12From0 Sym.MinimumDigits)
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
                    , second = Just Opts.Numeric
                    , fractionalSecondDigits = Nothing
                    , zone = Just Opts.ShortName
                    , hour12 = Just Opts.Hour24
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Symbol (Sym.Hour12From0 Sym.MinimumDigits)
                    , Sym.Literal ":"
                    , Sym.Symbol (Sym.Minute Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
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
                    , Sym.Literal "("
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal ")"
                    ]
                }
            , Internal.Locale.DateAF
                { options =
                    { era = Nothing
                    , year = Nothing
                    , month = Just (Opts.Number Opts.Numeric)
                    , day = Just Opts.Numeric
                    , weekday = Just Opts.Long
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
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
                    , Sym.Literal "日("
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal ")"
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "月"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "日"
                    , Sym.Symbol (Sym.Weekday Sym.Wide)
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
                    , Sym.Literal "("
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal ")"
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
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    , Sym.Literal "日("
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
                    , Sym.Literal ")"
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


ja_dayPeriodRules : List Internal.DayPeriodRule.DayPeriodRule
ja_dayPeriodRules =
    [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
    , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 19, 0 ) "evening1"
    , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
    , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
    , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 23, 0 ) "night1"
    , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 4, 0 ) "night2"
    , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
    ]
