module Generated.Mr exposing (mr)

import Cldr.Format.Options as Opts
import Dict
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Tagged exposing (Tagged(..))


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
mr : Internal.Locale.Locale
mr =
    Internal.Locale.Locale
        { languageId = Lang (Tagged.tag "mr") Nothing Nothing Nothing
        , monthFormatNames =
            { abbreviated =
                { jan = "जाने"
                , feb = "फेब्रु"
                , mar = "मार्च"
                , apr = "एप्रि"
                , may = "मे"
                , jun = "जून"
                , jul = "जुलै"
                , aug = "ऑग"
                , sep = "सप्टें"
                , oct = "ऑक्टो"
                , nov = "नोव्हें"
                , dec = "डिसें"
                }
            , wide =
                { jan = "जानेवारी"
                , feb = "फेब्रुवारी"
                , mar = "मार्च"
                , apr = "एप्रिल"
                , may = "मे"
                , jun = "जून"
                , jul = "जुलै"
                , aug = "ऑगस्ट"
                , sep = "सप्टेंबर"
                , oct = "ऑक्टोबर"
                , nov = "नोव्हेंबर"
                , dec = "डिसेंबर"
                }
            , narrow =
                { jan = "जा"
                , feb = "फे"
                , mar = "मा"
                , apr = "ए"
                , may = "मे"
                , jun = "जू"
                , jul = "जु"
                , aug = "ऑ"
                , sep = "स"
                , oct = "ऑ"
                , nov = "नो"
                , dec = "डि"
                }
            }
        , monthStandaloneNames =
            { abbreviated =
                { jan = "जाने"
                , feb = "फेब्रु"
                , mar = "मार्च"
                , apr = "एप्रि"
                , may = "मे"
                , jun = "जून"
                , jul = "जुलै"
                , aug = "ऑग"
                , sep = "सप्टें"
                , oct = "ऑक्टो"
                , nov = "नोव्हें"
                , dec = "डिसें"
                }
            , wide =
                { jan = "जानेवारी"
                , feb = "फेब्रुवारी"
                , mar = "मार्च"
                , apr = "एप्रिल"
                , may = "मे"
                , jun = "जून"
                , jul = "जुलै"
                , aug = "ऑगस्ट"
                , sep = "सप्टेंबर"
                , oct = "ऑक्टोबर"
                , nov = "नोव्हेंबर"
                , dec = "डिसेंबर"
                }
            , narrow =
                { jan = "जा"
                , feb = "फे"
                , mar = "मा"
                , apr = "ए"
                , may = "मे"
                , jun = "जू"
                , jul = "जु"
                , aug = "ऑ"
                , sep = "स"
                , oct = "ऑ"
                , nov = "नो"
                , dec = "डि"
                }
            }
        , weekdayFormatNames =
            { abbreviated =
                { sun = "रवि"
                , mon = "सोम"
                , tue = "मंगळ"
                , wed = "बुध"
                , thu = "गुरु"
                , fri = "शुक्र"
                , sat = "शनि"
                }
            , wide =
                { sun = "रविवार"
                , mon = "सोमवार"
                , tue = "मंगळवार"
                , wed = "बुधवार"
                , thu = "गुरुवार"
                , fri = "शुक्रवार"
                , sat = "शनिवार"
                }
            , narrow =
                { sun = "र"
                , mon = "सो"
                , tue = "मं"
                , wed = "बु"
                , thu = "गु"
                , fri = "शु"
                , sat = "श"
                }
            }
        , weekdayStandaloneNames =
            { abbreviated =
                { sun = "रवि"
                , mon = "सोम"
                , tue = "मंगळ"
                , wed = "बुध"
                , thu = "गुरु"
                , fri = "शुक्र"
                , sat = "शनि"
                }
            , wide =
                { sun = "रविवार"
                , mon = "सोमवार"
                , tue = "मंगळवार"
                , wed = "बुधवार"
                , thu = "गुरुवार"
                , fri = "शुक्रवार"
                , sat = "शनिवार"
                }
            , narrow =
                { sun = "र"
                , mon = "सो"
                , tue = "मं"
                , wed = "बु"
                , thu = "गु"
                , fri = "शु"
                , sat = "श"
                }
            }
        , eraNames =
            { abbreviated = { bc = "इ. स. पू.", ad = "इ. स." }
            , wide = { bc = "ईसवीसनपूर्व", ad = "ईसवीसन" }
            , narrow = { bc = "इ. स. पू.", ad = "इ. स." }
            }
        , periodNames =
            { abbreviated =
                { am = "AM"
                , pm = "PM"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "दुपार" )
                        , ( "evening1", "संध्याकाळ" )
                        , ( "evening2", "सायंकाळ" )
                        , ( "midnight", "मध्यरात्र" )
                        , ( "morning1", "पहाट" )
                        , ( "morning2", "सकाळ" )
                        , ( "night1", "रात्र" )
                        , ( "noon", "मध्यान्ह" )
                        ]
                }
            , wide =
                { am = "AM"
                , pm = "PM"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "दुपार" )
                        , ( "evening1", "संध्याकाळ" )
                        , ( "evening2", "सायंकाळ" )
                        , ( "midnight", "मध्यरात्र" )
                        , ( "morning1", "पहाट" )
                        , ( "morning2", "सकाळ" )
                        , ( "night1", "रात्र" )
                        , ( "noon", "मध्यान्ह" )
                        ]
                }
            , narrow =
                { am = "a"
                , pm = "p"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "दु" )
                        , ( "evening1", "सं" )
                        , ( "evening2", "सा" )
                        , ( "midnight", "म.रा." )
                        , ( "morning1", "प" )
                        , ( "morning2", "स" )
                        , ( "night1", "रा" )
                        , ( "noon", "दु" )
                        ]
                }
            }
        , dayPeriodRuleSet = mr_dayPeriodRules
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
                , Sym.Literal ", "
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            , long =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                , Sym.Literal ", "
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            , full =
                [ Sym.Symbol (Sym.Weekday Sym.Wide)
                , Sym.Literal ", "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                , Sym.Literal ", "
                , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                ]
            }
        , timeSymbols =
            { short =
                [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                ]
            , medium =
                [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Period Sym.Abbreviated)
                ]
            , long =
                [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
                [ Sym.Symbol (Sym.Hour12From1 Sym.MinimumDigits)
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
            { short = [ DateGoesHere, Text ", ", TimeGoesHere ]
            , medium = [ DateGoesHere, Text ", ", TimeGoesHere ]
            , long = [ DateGoesHere, Text " रोजी ", TimeGoesHere ]
            , full = [ DateGoesHere, Text " रोजी ", TimeGoesHere ]
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
                    [ Sym.Symbol (Sym.Date (Sym.Weekday Sym.Abbreviated))
                    , Sym.Literal " "
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Narrow)
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
                    , Sym.Literal ", "
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
                    , Sym.Literal ", "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal ", "
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
                    [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal ", "
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
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ", "
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
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            ]
        , hour12ByDefault = True
        }


mr_dayPeriodRules : List Internal.DayPeriodRule.DayPeriodRule
mr_dayPeriodRules =
    [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
    , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "evening1"
    , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening2"
    , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
    , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "morning1"
    , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
    , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
    , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
    ]
