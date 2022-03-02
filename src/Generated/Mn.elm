module Generated.Mn exposing (mn)

import Cldr.Format.Options as Opts
import DateFormat exposing (..)
import Dict
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.Locale exposing (DateTimeToken(..), Internal, LanguageId(..), normalize)
import Tagged exposing (Tagged(..))


{-| Date format strings:

  - Short : y.MM.dd
  - Medium : y 'оны' MMM'ын' d
  - Long : y 'оны' MMMM'ын' d
  - Full : y 'оны' MMMM'ын' d, EEEE 'гараг'

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss (z)
  - Full : HH:mm:ss (zzzz)

-}
mn : Internal.Locale.Locale
mn =
    Internal.Locale.Locale
        { languageId = Lang (Tagged.tag "mn") Nothing Nothing Nothing
        , monthFormatNames =
            { abbreviated =
                { jan = "1-р сар"
                , feb = "2-р сар"
                , mar = "3-р сар"
                , apr = "4-р сар"
                , may = "5-р сар"
                , jun = "6-р сар"
                , jul = "7-р сар"
                , aug = "8-р сар"
                , sep = "9-р сар"
                , oct = "10-р сар"
                , nov = "11-р сар"
                , dec = "12-р сар"
                }
            , wide =
                { jan = "нэгдүгээр сар"
                , feb = "хоёрдугаар сар"
                , mar = "гуравдугаар сар"
                , apr = "дөрөвдүгээр сар"
                , may = "тавдугаар сар"
                , jun = "зургаадугаар сар"
                , jul = "долоодугаар сар"
                , aug = "наймдугаар сар"
                , sep = "есдүгээр сар"
                , oct = "аравдугаар сар"
                , nov = "арван нэгдүгээр сар"
                , dec = "арван хоёрдугаар сар"
                }
            , narrow =
                { jan = "I"
                , feb = "II"
                , mar = "III"
                , apr = "IV"
                , may = "V"
                , jun = "VI"
                , jul = "VII"
                , aug = "VIII"
                , sep = "IX"
                , oct = "X"
                , nov = "XI"
                , dec = "XII"
                }
            }
        , monthStandaloneNames =
            { abbreviated =
                { jan = "1-р сар"
                , feb = "2-р сар"
                , mar = "3-р сар"
                , apr = "4-р сар"
                , may = "5-р сар"
                , jun = "6-р сар"
                , jul = "7-р сар"
                , aug = "8-р сар"
                , sep = "9-р сар"
                , oct = "10-р сар"
                , nov = "11-р сар"
                , dec = "12-р сар"
                }
            , wide =
                { jan = "Нэгдүгээр сар"
                , feb = "Хоёрдугаар сар"
                , mar = "Гуравдугаар сар"
                , apr = "Дөрөвдүгээр сар"
                , may = "Тавдугаар сар"
                , jun = "Зургаадугаар сар"
                , jul = "Долоодугаар сар"
                , aug = "Наймдугаар сар"
                , sep = "Есдүгээр сар"
                , oct = "Аравдугаар сар"
                , nov = "Арван нэгдүгээр сар"
                , dec = "Арван хоёрдугаар сар"
                }
            , narrow =
                { jan = "I"
                , feb = "II"
                , mar = "III"
                , apr = "IV"
                , may = "V"
                , jun = "VI"
                , jul = "VII"
                , aug = "VIII"
                , sep = "IX"
                , oct = "X"
                , nov = "XI"
                , dec = "XII"
                }
            }
        , weekdayFormatNames =
            { abbreviated =
                { sun = "Ня"
                , mon = "Да"
                , tue = "Мя"
                , wed = "Лх"
                , thu = "Пү"
                , fri = "Ба"
                , sat = "Бя"
                }
            , wide =
                { sun = "ням"
                , mon = "даваа"
                , tue = "мягмар"
                , wed = "лхагва"
                , thu = "пүрэв"
                , fri = "баасан"
                , sat = "бямба"
                }
            , narrow =
                { sun = "Ня"
                , mon = "Да"
                , tue = "Мя"
                , wed = "Лх"
                , thu = "Пү"
                , fri = "Ба"
                , sat = "Бя"
                }
            }
        , weekdayStandaloneNames =
            { abbreviated =
                { sun = "Ня"
                , mon = "Да"
                , tue = "Мя"
                , wed = "Лх"
                , thu = "Пү"
                , fri = "Ба"
                , sat = "Бя"
                }
            , wide =
                { sun = "Ням"
                , mon = "Даваа"
                , tue = "Мягмар"
                , wed = "Лхагва"
                , thu = "Пүрэв"
                , fri = "Баасан"
                , sat = "Бямба"
                }
            , narrow =
                { sun = "Ня"
                , mon = "Да"
                , tue = "Мя"
                , wed = "Лх"
                , thu = "Пү"
                , fri = "Ба"
                , sat = "Бя"
                }
            }
        , eraNames =
            { abbreviated = { bc = "МЭӨ", ad = "МЭ" }
            , wide = { bc = "манай эриний өмнөх", ad = "манай эриний" }
            , narrow = { bc = "МЭӨ", ad = "МЭ" }
            }
        , periodNames =
            { abbreviated =
                { am = "ү.ө."
                , pm = "ү.х."
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "өдөр" )
                        , ( "evening1", "орой" )
                        , ( "midnight", "шөнө дунд" )
                        , ( "morning1", "өглөө" )
                        , ( "night1", "шөнө" )
                        , ( "noon", "үд дунд" )
                        ]
                }
            , wide =
                { am = "ү.ө."
                , pm = "ү.х."
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "өдөр" )
                        , ( "evening1", "орой" )
                        , ( "midnight", "шөнө дунд" )
                        , ( "morning1", "өглөө" )
                        , ( "night1", "шөнө" )
                        , ( "noon", "үд дунд" )
                        ]
                }
            , narrow =
                { am = "ү.ө."
                , pm = "ү.х."
                , dayPeriods =
                    Dict.fromList
                        [ ( "afternoon1", "өдөр" )
                        , ( "evening1", "орой" )
                        , ( "midnight", "шөнө дунд" )
                        , ( "morning1", "өглөө" )
                        , ( "night1", "шөнө" )
                        , ( "noon", "үд дунд" )
                        ]
                }
            }
        , dayPeriodRuleSet = mn_dayPeriodRules
        , dateSymbols =
            { short =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal "."
                , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                , Sym.Literal "."
                , Sym.Symbol (Sym.Day Sym.TwoDigit)
                ]
            , medium =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal " "
                , Sym.Literal "оны"
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                , Sym.Literal "ын"
                , Sym.Literal " "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                ]
            , long =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal " "
                , Sym.Literal "оны"
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                , Sym.Literal "ын"
                , Sym.Literal " "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                ]
            , full =
                [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                , Sym.Literal " "
                , Sym.Literal "оны"
                , Sym.Literal " "
                , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                , Sym.Literal "ын"
                , Sym.Literal " "
                , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                , Sym.Literal ", "
                , Sym.Symbol (Sym.Weekday Sym.Wide)
                , Sym.Literal " "
                , Sym.Literal "гараг"
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
                , Sym.Literal " ("
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Short)
                , Sym.Literal ")"
                ]
            , full =
                [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Minute Sym.TwoDigit)
                , Sym.Literal ":"
                , Sym.Symbol (Sym.Second Sym.TwoDigit)
                , Sym.Literal " ("
                , Sym.Symbol (Sym.ZoneNonLocationFormat Sym.Long)
                , Sym.Literal ")"
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
                    , Sym.Literal " "
                    , Sym.Literal "ц"
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
                    , Sym.Literal ". "
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
                    , Sym.Literal ". "
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
                    [ Sym.Symbol (Sym.Day Sym.TwoDigit)
                    , Sym.Literal ". "
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
                    , Sym.Literal ". "
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
                    , Sym.Literal ". "
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
                    , Sym.Literal ". "
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
                    , Sym.Literal ". "
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
                    , Sym.Literal "оны"
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
                    , Sym.Literal "оны"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal "ын"
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
                    , Sym.Literal "оны"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal "ын"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". "
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
                    , Sym.Literal "ц"
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
                , formatSymbols =
                    [ Sym.Symbol (Sym.Hour24From0 Sym.TwoDigit)
                    , Sym.Literal " "
                    , Sym.Literal "ц"
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
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal ")"
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
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal ")"
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
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal ")"
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
                    , Sym.Literal " ("
                    , Sym.Symbol (Sym.ZoneGenericNonLocationFormat Sym.Short)
                    , Sym.Literal ")"
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
                    [ Sym.Symbol (Sym.MonthStandalone (Sym.Text Sym.Narrow)) ]
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Narrow))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Narrow))
                    , Sym.Literal "/"
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Literal "ын"
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal "ын"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". "
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
                    [ Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    , Sym.Literal "ын"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    [ Sym.Symbol (Sym.Year Sym.MinimumDigits)
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Narrow))
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
                    , Sym.Literal "."
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "."
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
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
                    , Sym.Literal "."
                    , Sym.Symbol (Sym.Month (Sym.Number Sym.TwoDigit))
                    , Sym.Literal "."
                    , Sym.Symbol (Sym.Day Sym.TwoDigit)
                    , Sym.Literal ". "
                    , Sym.Symbol (Sym.Weekday Sym.Abbreviated)
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
                    , Sym.Literal " "
                    , Sym.Literal "оны"
                    , Sym.Literal " "
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
                    , Sym.Literal " "
                    , Sym.Literal "оны"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal "ын"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
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
                    , Sym.Literal " "
                    , Sym.Literal "оны"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Abbreviated))
                    , Sym.Literal "ын"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Day Sym.MinimumDigits)
                    , Sym.Literal ". "
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
                    , Sym.Literal " "
                    , Sym.Literal "оны"
                    , Sym.Literal " "
                    , Sym.Symbol (Sym.Month (Sym.Text Sym.Wide))
                    ]
                }
            ]
        , hour12ByDefault = False
        }


mn_dayPeriodRules : List Internal.DayPeriodRule.DayPeriodRule
mn_dayPeriodRules =
    [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
    , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
    , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
    , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
    , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
    , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
    ]
