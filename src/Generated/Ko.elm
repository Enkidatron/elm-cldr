module Generated.Ko exposing (ko, ko_KP)

import Cldr.Format.Options as Opts
import DateFormat exposing (..)
import Dict
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.Locale exposing (DateTimeToken(..), Internal, LanguageId(..), normalize)
import Tagged exposing (Tagged(..))


{-| Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 M월 d일
  - Full : y년 M월 d일 EEEE

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h시 m분 s초 z
  - Full : a h시 m분 s초 zzzz

-}
ko : Internal.Locale.Locale
ko =
    Internal.Locale.Locale
        { languageId = Lang (Tagged.tag "ko") Nothing Nothing Nothing
        , monthFormatNames =
            { abbreviated =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            , wide =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            , narrow =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            }
        , monthStandaloneNames =
            { abbreviated =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            , wide =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            , narrow =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            }
        , weekdayFormatNames =
            { abbreviated =
                { sun = "일"
                , mon = "월"
                , tue = "화"
                , wed = "수"
                , thu = "목"
                , fri = "금"
                , sat = "토"
                }
            , wide =
                { sun = "일요일"
                , mon = "월요일"
                , tue = "화요일"
                , wed = "수요일"
                , thu = "목요일"
                , fri = "금요일"
                , sat = "토요일"
                }
            , narrow =
                { sun = "일"
                , mon = "월"
                , tue = "화"
                , wed = "수"
                , thu = "목"
                , fri = "금"
                , sat = "토"
                }
            }
        , weekdayStandaloneNames =
            { abbreviated =
                { sun = "일"
                , mon = "월"
                , tue = "화"
                , wed = "수"
                , thu = "목"
                , fri = "금"
                , sat = "토"
                }
            , wide =
                { sun = "일요일"
                , mon = "월요일"
                , tue = "화요일"
                , wed = "수요일"
                , thu = "목요일"
                , fri = "금요일"
                , sat = "토요일"
                }
            , narrow =
                { sun = "일"
                , mon = "월"
                , tue = "화"
                , wed = "수"
                , thu = "목"
                , fri = "금"
                , sat = "토"
                }
            }
        , eraNames =
            { abbreviated = { bc = "BC", ad = "AD" }
            , wide = { bc = "기원전", ad = "서기" }
            , narrow = { bc = "BC", ad = "AD" }
            }
        , periodNames =
            { abbreviated =
                { am = "AM"
                , pm = "PM"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "오후" )
                        , ( "evening1", "저녁" )
                        , ( "midnight", "자정" )
                        , ( "morning1", "새벽" )
                        , ( "morning2", "오전" )
                        , ( "night1", "밤" )
                        , ( "noon", "정오" )
                        ]
                }
            , wide =
                { am = "오전"
                , pm = "오후"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "오후" )
                        , ( "evening1", "저녁" )
                        , ( "midnight", "자정" )
                        , ( "morning1", "새벽" )
                        , ( "morning2", "오전" )
                        , ( "night1", "밤" )
                        , ( "noon", "정오" )
                        ]
                }
            , narrow =
                { am = "AM"
                , pm = "PM"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "오후" )
                        , ( "evening1", "저녁" )
                        , ( "midnight", "자정" )
                        , ( "morning1", "새벽" )
                        , ( "morning2", "오전" )
                        , ( "night1", "밤" )
                        , ( "noon", "정오" )
                        ]
                }
            }
        , dayPeriodRuleSet = ko_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Year Sym.TwoDigit)
                , Sym.Literal ". "
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal ". "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "."
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal ". "
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal ". "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "."
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "년 "
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "월 "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "일"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "년 "
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "월 "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "일 "
                , Sym.Symbol (Sym.Weekday Sym.Wide)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal "시 "
                , Sym.Symbol (Sym.Minute Sym.MinimumDigits)
                , Sym.Literal "분 "
                , Sym.Symbol (Sym.Second Sym.MinimumDigits)
                , Sym.Literal "초 "
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                ]
            , full =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal "시 "
                , Sym.Symbol (Sym.Minute Sym.MinimumDigits)
                , Sym.Literal "분 "
                , Sym.Symbol (Sym.Second Sym.MinimumDigits)
                , Sym.Literal "초 "
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "시"
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
                    , Sym.Literal " "
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
                    , Sym.Literal " "
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "일" ]
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Literal " "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Literal " "
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
                    , Sym.Literal "일 ("
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
                    , Sym.Literal "일 "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Literal " "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Literal " "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
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
                    , Sym.Literal "년"
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일"
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 ("
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 "
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "시"
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
                    , Sym.Literal "시"
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.TwoDigit
                    , minute = Just Opts.TwoDigit
                    , second = Just Opts.TwoDigit
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
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Literal " "
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
                    , Sym.Literal " "
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
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "시 "
                    , Sym.Symbol (Sym.Minute Sym.MinimumDigits)
                    , Sym.Literal "분 "
                    , Sym.Symbol (Sym.Second Sym.MinimumDigits)
                    , Sym.Literal "초"
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    , Sym.Literal "시 "
                    , Sym.Symbol (Sym.Minute Sym.MinimumDigits)
                    , Sym.Literal "분 "
                    , Sym.Symbol (Sym.Second Sym.MinimumDigits)
                    , Sym.Literal "초 "
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "월"
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "."
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". ("
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". "
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일"
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 ("
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 "
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "년" ]
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "."
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "."
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". ("
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". "
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "."
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일"
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 ("
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 "
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    ]
                }
            ]
        , hour12ByDefault = True
        }


{-| Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 M월 d일
  - Full : y년 M월 d일 EEEE

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h시 m분 s초 z
  - Full : a h시 m분 s초 zzzz

-}
ko_KP : Internal.Locale.Locale
ko_KP =
    Internal.Locale.Locale
        { languageId =
            Lang (Tagged.tag "ko") Nothing (Just (Tagged.tag "KP")) Nothing
        , monthFormatNames =
            { abbreviated =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            , wide =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            , narrow =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            }
        , monthStandaloneNames =
            { abbreviated =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            , wide =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            , narrow =
                { jan = "1월"
                , feb = "2월"
                , mar = "3월"
                , apr = "4월"
                , may = "5월"
                , jun = "6월"
                , jul = "7월"
                , aug = "8월"
                , sep = "9월"
                , oct = "10월"
                , nov = "11월"
                , dec = "12월"
                }
            }
        , weekdayFormatNames =
            { abbreviated =
                { sun = "일"
                , mon = "월"
                , tue = "화"
                , wed = "수"
                , thu = "목"
                , fri = "금"
                , sat = "토"
                }
            , wide =
                { sun = "일요일"
                , mon = "월요일"
                , tue = "화요일"
                , wed = "수요일"
                , thu = "목요일"
                , fri = "금요일"
                , sat = "토요일"
                }
            , narrow =
                { sun = "일"
                , mon = "월"
                , tue = "화"
                , wed = "수"
                , thu = "목"
                , fri = "금"
                , sat = "토"
                }
            }
        , weekdayStandaloneNames =
            { abbreviated =
                { sun = "일"
                , mon = "월"
                , tue = "화"
                , wed = "수"
                , thu = "목"
                , fri = "금"
                , sat = "토"
                }
            , wide =
                { sun = "일요일"
                , mon = "월요일"
                , tue = "화요일"
                , wed = "수요일"
                , thu = "목요일"
                , fri = "금요일"
                , sat = "토요일"
                }
            , narrow =
                { sun = "일"
                , mon = "월"
                , tue = "화"
                , wed = "수"
                , thu = "목"
                , fri = "금"
                , sat = "토"
                }
            }
        , eraNames =
            { abbreviated = { bc = "BC", ad = "AD" }
            , wide = { bc = "기원전", ad = "서기" }
            , narrow = { bc = "BC", ad = "AD" }
            }
        , periodNames =
            { abbreviated =
                { am = "AM"
                , pm = "PM"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "오후" )
                        , ( "evening1", "저녁" )
                        , ( "midnight", "자정" )
                        , ( "morning1", "새벽" )
                        , ( "morning2", "오전" )
                        , ( "night1", "밤" )
                        , ( "noon", "정오" )
                        ]
                }
            , wide =
                { am = "오전"
                , pm = "오후"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "오후" )
                        , ( "evening1", "저녁" )
                        , ( "midnight", "자정" )
                        , ( "morning1", "새벽" )
                        , ( "morning2", "오전" )
                        , ( "night1", "밤" )
                        , ( "noon", "정오" )
                        ]
                }
            , narrow =
                { am = "AM"
                , pm = "PM"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "오후" )
                        , ( "evening1", "저녁" )
                        , ( "midnight", "자정" )
                        , ( "morning1", "새벽" )
                        , ( "morning2", "오전" )
                        , ( "night1", "밤" )
                        , ( "noon", "정오" )
                        ]
                }
            }
        , dayPeriodRuleSet = ko_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Year Sym.TwoDigit)
                , Sym.Literal ". "
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal ". "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "."
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal ". "
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal ". "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "."
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "년 "
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "월 "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "일"
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "년 "
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "월 "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "일 "
                , Sym.Symbol (Sym.Weekday Sym.Wide)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                ]
            , long =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal "시 "
                , Sym.Symbol (Sym.Minute Sym.MinimumDigits)
                , Sym.Literal "분 "
                , Sym.Symbol (Sym.Second Sym.MinimumDigits)
                , Sym.Literal "초 "
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                ]
            , full =
                [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal "시 "
                , Sym.Symbol (Sym.Minute Sym.MinimumDigits)
                , Sym.Literal "분 "
                , Sym.Symbol (Sym.Second Sym.MinimumDigits)
                , Sym.Literal "초 "
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "시"
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
                    , Sym.Literal " "
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
                    , Sym.Literal " "
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits), Sym.Literal "일" ]
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Literal " "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
                    , Sym.Symbol
                        (Sym.Time (Sym.FlexibleDayPeriod Sym.Abbreviated))
                    , Sym.Literal " "
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
                    , Sym.Literal "일 ("
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
                    , Sym.Literal "일 "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Literal " "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
                    , Sym.Symbol (Sym.Time (Sym.Period Sym.Abbreviated))
                    , Sym.Literal " "
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
                    [ Sym.Literal "("
                    , Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal ") "
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
                    , Sym.Literal "년"
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일"
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 ("
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 "
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                    , Sym.Literal "시"
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
                    , Sym.Literal "시"
                    ]
                }
            , Internal.Locale.TimeAF
                { options =
                    { period = Nothing
                    , dayPeriod = Nothing
                    , hour = Just Opts.TwoDigit
                    , minute = Just Opts.TwoDigit
                    , second = Just Opts.TwoDigit
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
                    , second = Nothing
                    , fractionalSecondDigits = Nothing
                    , zone = Nothing
                    , hour12 = Just Opts.Hour12
                    }
                , formatSymbols =
                    [ Sym.Symbol (Sym.Period Sym.Abbreviated)
                    , Sym.Literal " "
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
                    , Sym.Literal " "
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
                    [ Sym.Symbol (Sym.Hour24From0 Sym.MinimumDigits)
                    , Sym.Literal "시 "
                    , Sym.Symbol (Sym.Minute Sym.MinimumDigits)
                    , Sym.Literal "분 "
                    , Sym.Symbol (Sym.Second Sym.MinimumDigits)
                    , Sym.Literal "초"
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    , Sym.Literal "시 "
                    , Sym.Symbol (Sym.Minute Sym.MinimumDigits)
                    , Sym.Literal "분 "
                    , Sym.Symbol (Sym.Second Sym.MinimumDigits)
                    , Sym.Literal "초 "
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "월"
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "."
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". ("
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". "
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일"
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 ("
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 "
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits), Sym.Literal "년" ]
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "."
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "."
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". ("
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". "
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "."
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일"
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 ("
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "일 "
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
                    , Sym.Literal "년 "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    ]
                }
            ]
        , hour12ByDefault = True
        }


ko_dayPeriodRules : List Internal.DayPeriodRule.DayPeriodRule
ko_dayPeriodRules =
    [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
    , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
    , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
    , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 6, 0 ) "morning1"
    , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
    , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 3, 0 ) "night1"
    , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
    ]
