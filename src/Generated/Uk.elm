module Generated.Uk exposing (uk)

{-|

@docs uk

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
        [ ( "uk"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y 'р'.
  - Long : d MMMM y 'р'.
  - Full : EEEE, d MMMM y 'р'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
uk : Internal.Locale.Locale
uk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "uk"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "дп"
                    , pm = "пп"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечора" )
                            , ( "midnight", "опівночі" )
                            , ( "morning1", "ранку" )
                            , ( "night1", "ночі" )
                            , ( "noon", "опівдні" )
                            ]
                    }
                , wide =
                    { am = "дп"
                    , pm = "пп"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечора" )
                            , ( "midnight", "опівночі" )
                            , ( "morning1", "ранку" )
                            , ( "night1", "ночі" )
                            , ( "noon", "опівдні" )
                            ]
                    }
                , narrow =
                    { am = "дп"
                    , pm = "пп"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечора" )
                            , ( "midnight", "ночі" )
                            , ( "morning1", "ранку" )
                            , ( "night1", "ночі" )
                            , ( "noon", "дня" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "d MMM y\u{202F}'р'."
                , long = "d MMMM y\u{202F}'р'."
                , full = "EEEE, d MMMM y\u{202F}'р'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "січ."
                    , feb = "лют."
                    , mar = "бер."
                    , apr = "квіт."
                    , may = "трав."
                    , jun = "черв."
                    , jul = "лип."
                    , aug = "серп."
                    , sep = "вер."
                    , oct = "жовт."
                    , nov = "лист."
                    , dec = "груд."
                    }
                , wide =
                    { jan = "січня"
                    , feb = "лютого"
                    , mar = "березня"
                    , apr = "квітня"
                    , may = "травня"
                    , jun = "червня"
                    , jul = "липня"
                    , aug = "серпня"
                    , sep = "вересня"
                    , oct = "жовтня"
                    , nov = "листопада"
                    , dec = "грудня"
                    }
                , narrow =
                    { jan = "с"
                    , feb = "л"
                    , mar = "б"
                    , apr = "к"
                    , may = "т"
                    , jun = "ч"
                    , jul = "л"
                    , aug = "с"
                    , sep = "в"
                    , oct = "ж"
                    , nov = "л"
                    , dec = "г"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "січ."
                    , feb = "лют."
                    , mar = "бер."
                    , apr = "квіт."
                    , may = "трав."
                    , jun = "черв."
                    , jul = "лип."
                    , aug = "серп."
                    , sep = "вер."
                    , oct = "жовт."
                    , nov = "лист."
                    , dec = "груд."
                    }
                , wide =
                    { jan = "січень"
                    , feb = "лютий"
                    , mar = "березень"
                    , apr = "квітень"
                    , may = "травень"
                    , jun = "червень"
                    , jul = "липень"
                    , aug = "серпень"
                    , sep = "вересень"
                    , oct = "жовтень"
                    , nov = "листопад"
                    , dec = "грудень"
                    }
                , narrow =
                    { jan = "С"
                    , feb = "Л"
                    , mar = "Б"
                    , apr = "К"
                    , may = "Т"
                    , jun = "Ч"
                    , jul = "Л"
                    , aug = "С"
                    , sep = "В"
                    , oct = "Ж"
                    , nov = "Л"
                    , dec = "Г"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "нд"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "неділю"
                    , mon = "понеділок"
                    , tue = "вівторок"
                    , wed = "середу"
                    , thu = "четвер"
                    , fri = "пʼятницю"
                    , sat = "суботу"
                    }
                , narrow =
                    { sun = "Н"
                    , mon = "П"
                    , tue = "В"
                    , wed = "С"
                    , thu = "Ч"
                    , fri = "П"
                    , sat = "С"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "нд"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "неділя"
                    , mon = "понеділок"
                    , tue = "вівторок"
                    , wed = "середа"
                    , thu = "четвер"
                    , fri = "пʼятниця"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "Н"
                    , mon = "П"
                    , tue = "В"
                    , wed = "С"
                    , thu = "Ч"
                    , fri = "П"
                    , sat = "С"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "до н. е.", ad = "н. е." }
                , wide = { bc = "до нашої ери", ad = "нашої ери" }
                , narrow = { bc = "до н.е.", ad = "н.е." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "LLL y\u{202F}'р'. G" )
                , ( "GyMMMd", "d MMM y\u{202F}'р'. G" )
                , ( "GyMMMEd", "E, d MMM y\u{202F}'р'. G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "LL" )
                , ( "Md", "dd.MM" )
                , ( "MEd", "E, dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "W-'й' 'тиж'. MMMM" )
                , ( "MMMMW-count-few", "W-'й' 'тиж'. MMMM" )
                , ( "MMMMW-count-many", "W-'й' 'тиж'. MMMM" )
                , ( "MMMMW-count-other", "W-'й' 'тиж'. MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "E, dd.MM.y" )
                , ( "yMMM", "LLL y\u{202F}'р'." )
                , ( "yMMMd", "d MMM y\u{202F}'р'." )
                , ( "yMMMEd", "E, d MMM y\u{202F}'р'." )
                , ( "yMMMM", "LLLL y\u{202F}'р'." )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y\u{202F}'р'." )
                , ( "yw-count-one", "w-'й' 'тиж'. Y 'р'." )
                , ( "yw-count-few", "w-'й' 'тиж'. Y 'р'." )
                , ( "yw-count-many", "w-'й' 'тиж'. Y 'р'." )
                , ( "yw-count-other", "w-'й' 'тиж'. Y 'р'." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
