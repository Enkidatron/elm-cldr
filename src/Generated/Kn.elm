module Generated.Kn exposing (kn)

import Cldr.Format.Options as Opts
import DateFormat exposing (..)
import Dict
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.Locale exposing (DateTimeToken(..), Internal, LanguageId(..), normalize)
import Tagged exposing (Tagged(..))


{-| Date format strings:

  - Short : d/M/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : hh:mm a
  - Medium : hh:mm:ss a
  - Long : hh:mm:ss a z
  - Full : hh:mm:ss a zzzz

-}
kn : Internal.Locale.Locale
kn =
    Internal.Locale.Locale
        { languageId = Lang (Tagged.tag "kn") Nothing Nothing Nothing
        , monthFormatNames =
            { abbreviated =
                { jan = "ಜನವರಿ"
                , feb = "ಫೆಬ್ರವರಿ"
                , mar = "ಮಾರ್ಚ್"
                , apr = "ಏಪ್ರಿ"
                , may = "ಮೇ"
                , jun = "ಜೂನ್"
                , jul = "ಜುಲೈ"
                , aug = "ಆಗ"
                , sep = "ಸೆಪ್ಟೆಂ"
                , oct = "ಅಕ್ಟೋ"
                , nov = "ನವೆಂ"
                , dec = "ಡಿಸೆಂ"
                }
            , wide =
                { jan = "ಜನವರಿ"
                , feb = "ಫೆಬ್ರವರಿ"
                , mar = "ಮಾರ್ಚ್"
                , apr = "ಏಪ್ರಿಲ್"
                , may = "ಮೇ"
                , jun = "ಜೂನ್"
                , jul = "ಜುಲೈ"
                , aug = "ಆಗಸ್ಟ್"
                , sep = "ಸೆಪ್ಟೆಂಬರ್"
                , oct = "ಅಕ್ಟೋಬರ್"
                , nov = "ನವೆಂಬರ್"
                , dec = "ಡಿಸೆಂಬರ್"
                }
            , narrow =
                { jan = "ಜ"
                , feb = "ಫೆ"
                , mar = "ಮಾ"
                , apr = "ಏ"
                , may = "ಮೇ"
                , jun = "ಜೂ"
                , jul = "ಜು"
                , aug = "ಆ"
                , sep = "ಸೆ"
                , oct = "ಅ"
                , nov = "ನ"
                , dec = "ಡಿ"
                }
            }
        , monthStandaloneNames =
            { abbreviated =
                { jan = "ಜನ"
                , feb = "ಫೆಬ್ರ"
                , mar = "ಮಾರ್ಚ್"
                , apr = "ಏಪ್ರಿ"
                , may = "ಮೇ"
                , jun = "ಜೂನ್"
                , jul = "ಜುಲೈ"
                , aug = "ಆಗ"
                , sep = "ಸೆಪ್ಟೆಂ"
                , oct = "ಅಕ್ಟೋ"
                , nov = "ನವೆಂ"
                , dec = "ಡಿಸೆಂ"
                }
            , wide =
                { jan = "ಜನವರಿ"
                , feb = "ಫೆಬ್ರವರಿ"
                , mar = "ಮಾರ್ಚ್"
                , apr = "ಏಪ್ರಿಲ್"
                , may = "ಮೇ"
                , jun = "ಜೂನ್"
                , jul = "ಜುಲೈ"
                , aug = "ಆಗಸ್ಟ್"
                , sep = "ಸೆಪ್ಟೆಂಬರ್"
                , oct = "ಅಕ್ಟೋಬರ್"
                , nov = "ನವೆಂಬರ್"
                , dec = "ಡಿಸೆಂಬರ್"
                }
            , narrow =
                { jan = "ಜ"
                , feb = "ಫೆ"
                , mar = "ಮಾ"
                , apr = "ಏ"
                , may = "ಮೇ"
                , jun = "ಜೂ"
                , jul = "ಜು"
                , aug = "ಆ"
                , sep = "ಸೆ"
                , oct = "ಅ"
                , nov = "ನ"
                , dec = "ಡಿ"
                }
            }
        , weekdayFormatNames =
            { abbreviated =
                { sun = "ಭಾನು"
                , mon = "ಸೋಮ"
                , tue = "ಮಂಗಳ"
                , wed = "ಬುಧ"
                , thu = "ಗುರು"
                , fri = "ಶುಕ್ರ"
                , sat = "ಶನಿ"
                }
            , wide =
                { sun = "ಭಾನುವಾರ"
                , mon = "ಸೋಮವಾರ"
                , tue = "ಮಂಗಳವಾರ"
                , wed = "ಬುಧವಾರ"
                , thu = "ಗುರುವಾರ"
                , fri = "ಶುಕ್ರವಾರ"
                , sat = "ಶನಿವಾರ"
                }
            , narrow =
                { sun = "ಭಾ"
                , mon = "ಸೋ"
                , tue = "ಮಂ"
                , wed = "ಬು"
                , thu = "ಗು"
                , fri = "ಶು"
                , sat = "ಶ"
                }
            }
        , weekdayStandaloneNames =
            { abbreviated =
                { sun = "ಭಾನು"
                , mon = "ಸೋಮ"
                , tue = "ಮಂಗಳ"
                , wed = "ಬುಧ"
                , thu = "ಗುರು"
                , fri = "ಶುಕ್ರ"
                , sat = "ಶನಿ"
                }
            , wide =
                { sun = "ಭಾನುವಾರ"
                , mon = "ಸೋಮವಾರ"
                , tue = "ಮಂಗಳವಾರ"
                , wed = "ಬುಧವಾರ"
                , thu = "ಗುರುವಾರ"
                , fri = "ಶುಕ್ರವಾರ"
                , sat = "ಶನಿವಾರ"
                }
            , narrow =
                { sun = "ಭಾ"
                , mon = "ಸೋ"
                , tue = "ಮಂ"
                , wed = "ಬು"
                , thu = "ಗು"
                , fri = "ಶು"
                , sat = "ಶ"
                }
            }
        , eraNames =
            { abbreviated = { bc = "ಕ್ರಿ.ಪೂ", ad = "ಕ್ರಿ.ಶ" }
            , wide = { bc = "ಕ್ರಿಸ್ತ ಪೂರ್ವ", ad = "ಕ್ರಿಸ್ತ ಶಕ" }
            , narrow = { bc = "ಕ್ರಿ.ಪೂ", ad = "ಕ್ರಿ.ಶ" }
            }
        , periodNames =
            { abbreviated =
                { am = "ಪೂರ್ವಾಹ್ನ"
                , pm = "ಅಪರಾಹ್ನ"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "ಮಧ್ಯಾಹ್ನ" )
                        , ( "evening1", "ಸಂಜೆ" )
                        , ( "midnight", "ಮಧ್ಯ ರಾತ್ರಿ" )
                        , ( "morning1", "ಬೆಳಗ್ಗೆ" )
                        , ( "night1", "ರಾತ್ರಿ" )
                        ]
                }
            , wide =
                { am = "ಪೂರ್ವಾಹ್ನ"
                , pm = "ಅಪರಾಹ್ನ"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "ಮಧ್ಯಾಹ್ನ" )
                        , ( "evening1", "ಸಂಜೆ" )
                        , ( "midnight", "ಮಧ್ಯ ರಾತ್ರಿ" )
                        , ( "morning1", "ಬೆಳಗ್ಗೆ" )
                        , ( "night1", "ರಾತ್ರಿ" )
                        ]
                }
            , narrow =
                { am = "ಪೂ"
                , pm = "ಅ"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "ಮಧ್ಯಾಹ್ನ" )
                        , ( "evening1", "ಸಂಜೆ" )
                        , ( "midnight", "ಮಧ್ಯರಾತ್ರಿ" )
                        , ( "morning1", "ಬೆಳಗ್ಗೆ" )
                        , ( "night1", "ರಾತ್ರಿ" )
                        ]
                }
            }
        , dayPeriodRuleSet = kn_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                , Sym.Literal "/"
                , Sym.Symbol (Sym.Year Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                , Sym.Literal " "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal ", "
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            , long =
                [ Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                , Sym.Literal " "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal ", "
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            , full =
                [ Sym.Symbol (Sym.Weekday Sym.Wide)
                , Sym.Literal ", "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                , Sym.Literal " "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal ", "
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Hour12From1 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                ]
            , medium =
                [ Sym.Symbol (Sym.Hour12From1 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                ]
            , long =
                [ Sym.Symbol (Sym.Hour12From1 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                ]
            , full =
                [ Sym.Symbol (Sym.Hour12From1 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                , Sym.Literal " "
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal " "
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ", "
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal ", "
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
                    [ Sym.Symbol (Sym.Day Sym.TwoDigit)
                    , Sym.Literal "-"
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    , Sym.Literal ", "
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
                    , Sym.Literal ", "
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
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
                    , Sym.Literal "-"
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ","
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
                    , Sym.Literal ", "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ", "
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            ]
        , hour12ByDefault = True
        }


kn_dayPeriodRules : List Internal.DayPeriodRule.DayPeriodRule
kn_dayPeriodRules =
    [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
    , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
    , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
    , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
    , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
    ]
