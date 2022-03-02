module Generated.Ka exposing (ka)

import Cldr.Format.Options as Opts
import DateFormat exposing (..)
import Dict
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.Locale exposing (DateTimeToken(..), Internal, LanguageId(..), normalize)
import Tagged exposing (Tagged(..))


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM. y
  - Long : d MMMM, y
  - Full : EEEE, dd MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ka : Internal.Locale.Locale
ka =
    Internal.Locale.Locale
        { languageId = Lang (Tagged.tag "ka") Nothing Nothing Nothing
        , monthFormatNames =
            { abbreviated =
                { jan = "იან"
                , feb = "თებ"
                , mar = "მარ"
                , apr = "აპრ"
                , may = "მაი"
                , jun = "ივნ"
                , jul = "ივლ"
                , aug = "აგვ"
                , sep = "სექ"
                , oct = "ოქტ"
                , nov = "ნოე"
                , dec = "დეკ"
                }
            , wide =
                { jan = "იანვარი"
                , feb = "თებერვალი"
                , mar = "მარტი"
                , apr = "აპრილი"
                , may = "მაისი"
                , jun = "ივნისი"
                , jul = "ივლისი"
                , aug = "აგვისტო"
                , sep = "სექტემბერი"
                , oct = "ოქტომბერი"
                , nov = "ნოემბერი"
                , dec = "დეკემბერი"
                }
            , narrow =
                { jan = "ი"
                , feb = "თ"
                , mar = "მ"
                , apr = "ა"
                , may = "მ"
                , jun = "ი"
                , jul = "ი"
                , aug = "ა"
                , sep = "ს"
                , oct = "ო"
                , nov = "ნ"
                , dec = "დ"
                }
            }
        , monthStandaloneNames =
            { abbreviated =
                { jan = "იან"
                , feb = "თებ"
                , mar = "მარ"
                , apr = "აპრ"
                , may = "მაი"
                , jun = "ივნ"
                , jul = "ივლ"
                , aug = "აგვ"
                , sep = "სექ"
                , oct = "ოქტ"
                , nov = "ნოე"
                , dec = "დეკ"
                }
            , wide =
                { jan = "იანვარი"
                , feb = "თებერვალი"
                , mar = "მარტი"
                , apr = "აპრილი"
                , may = "მაისი"
                , jun = "ივნისი"
                , jul = "ივლისი"
                , aug = "აგვისტო"
                , sep = "სექტემბერი"
                , oct = "ოქტომბერი"
                , nov = "ნოემბერი"
                , dec = "დეკემბერი"
                }
            , narrow =
                { jan = "ი"
                , feb = "თ"
                , mar = "მ"
                , apr = "ა"
                , may = "მ"
                , jun = "ი"
                , jul = "ი"
                , aug = "ა"
                , sep = "ს"
                , oct = "ო"
                , nov = "ნ"
                , dec = "დ"
                }
            }
        , weekdayFormatNames =
            { abbreviated =
                { sun = "კვი"
                , mon = "ორშ"
                , tue = "სამ"
                , wed = "ოთხ"
                , thu = "ხუთ"
                , fri = "პარ"
                , sat = "შაბ"
                }
            , wide =
                { sun = "კვირა"
                , mon = "ორშაბათი"
                , tue = "სამშაბათი"
                , wed = "ოთხშაბათი"
                , thu = "ხუთშაბათი"
                , fri = "პარასკევი"
                , sat = "შაბათი"
                }
            , narrow =
                { sun = "კ"
                , mon = "ო"
                , tue = "ს"
                , wed = "ო"
                , thu = "ხ"
                , fri = "პ"
                , sat = "შ"
                }
            }
        , weekdayStandaloneNames =
            { abbreviated =
                { sun = "კვი"
                , mon = "ორშ"
                , tue = "სამ"
                , wed = "ოთხ"
                , thu = "ხუთ"
                , fri = "პარ"
                , sat = "შაბ"
                }
            , wide =
                { sun = "კვირა"
                , mon = "ორშაბათი"
                , tue = "სამშაბათი"
                , wed = "ოთხშაბათი"
                , thu = "ხუთშაბათი"
                , fri = "პარასკევი"
                , sat = "შაბათი"
                }
            , narrow =
                { sun = "კ"
                , mon = "ო"
                , tue = "ს"
                , wed = "ო"
                , thu = "ხ"
                , fri = "პ"
                , sat = "შ"
                }
            }
        , eraNames =
            { abbreviated = { bc = "ძვ. წ.", ad = "ახ. წ." }
            , wide = { bc = "ძველი წელთაღრიცხვით", ad = "ახალი წელთაღრიცხვით" }
            , narrow = { bc = "ძვ. წ.", ad = "ახ. წ." }
            }
        , periodNames =
            { abbreviated =
                { am = "AM"
                , pm = "PM"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "ნაშუადღ." )
                        , ( "evening1", "საღ." )
                        , ( "midnight", "შუაღამეს" )
                        , ( "morning1", "დილ." )
                        , ( "night1", "ღამ." )
                        , ( "noon", "შუადღ." )
                        ]
                }
            , wide =
                { am = "AM"
                , pm = "PM"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "ნაშუადღევს" )
                        , ( "evening1", "საღამოს" )
                        , ( "midnight", "შუაღამეს" )
                        , ( "morning1", "დილით" )
                        , ( "night1", "ღამით" )
                        , ( "noon", "შუადღეს" )
                        ]
                }
            , narrow =
                { am = "a"
                , pm = "p"
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "ნაშუადღ." )
                        , ( "evening1", "საღ." )
                        , ( "midnight", "შუაღამეს" )
                        , ( "morning1", "დილ." )
                        , ( "night1", "ღამ." )
                        , ( "noon", "შუადღ." )
                        ]
                }
            }
        , dayPeriodRuleSet = ka_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Day Sym.TwoDigit)
                , Sym.Literal "."
                , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                , Sym.Literal "."
                , Sym.Symbol (Sym.Year Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                , Sym.Literal ". "
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
                , Sym.Symbol (Sym.Day Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                , Sym.Literal ", "
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
                [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                ]
            , full =
                [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " "
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                ]
            }
        , dateTimeTokens =
            { short = [ DateGoesHere, Text ", ", TimeGoesHere ]
            , medium = [ DateGoesHere, Text ", ", TimeGoesHere ]
            , long = [ DateGoesHere, Text ", ", TimeGoesHere ]
            , full = [ DateGoesHere, Text ", ", TimeGoesHere ]
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
                    , Sym.Literal ", "
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
                    , Sym.Literal ", "
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
                    , Sym.Literal ", "
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
                    , Sym.Literal ", "
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
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
                    , Sym.Literal "."
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "."
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
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
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Era Sym.Abbreviated)
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
                    , Sym.Literal "."
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
                    , Sym.Literal "."
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
                    , Sym.Literal "."
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
                    , Sym.Literal "."
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "."
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
                    , Sym.Literal "."
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.MinimumDigits))
                    , Sym.Literal "."
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
                    , Sym.Literal ". "
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
                    , Sym.Literal ". "
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
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal ". "
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
                    , Sym.Literal ", "
                    , Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    ]
                }
            ]
        , hour12ByDefault = False
        }


ka_dayPeriodRules : List Internal.DayPeriodRule.DayPeriodRule
ka_dayPeriodRules =
    [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
    , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
    , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
    , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
    , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 5, 0 ) "night1"
    , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
    ]
