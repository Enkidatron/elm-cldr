module Generated.Bg exposing (bg)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "bg"
          , [ Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 11, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 11, 0 ) ( 14, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.MM.yy 'г'.
  - Medium : d.MM.y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : H:mm 'ч'.
  - Medium : H:mm:ss 'ч'.
  - Long : H:mm:ss 'ч'. z
  - Full : H:mm:ss 'ч'. zzzz

-}
bg : Internal.Locale.Locale
bg =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "bg"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "следобед" )
                            , ( "evening1", "вечерта" )
                            , ( "midnight", "полунощ" )
                            , ( "morning1", "сутринта" )
                            , ( "morning2", "на обяд" )
                            , ( "night1", "през нощта" )
                            ]
                    }
                , wide =
                    { am = "пр.об."
                    , pm = "сл.об."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "следобед" )
                            , ( "evening1", "вечерта" )
                            , ( "midnight", "полунощ" )
                            , ( "morning1", "сутринта" )
                            , ( "morning2", "на обяд" )
                            , ( "night1", "през нощта" )
                            ]
                    }
                , narrow =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "следобед" )
                            , ( "evening1", "вечерта" )
                            , ( "midnight", "полунощ" )
                            , ( "morning1", "сутринта" )
                            , ( "morning2", "на обяд" )
                            , ( "night1", "през нощта" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.MM.yy 'г'."
                , medium = "d.MM.y 'г'."
                , long = "d MMMM y 'г'."
                , full = "EEEE, d MMMM y 'г'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "яну"
                    , feb = "фев"
                    , mar = "март"
                    , apr = "апр"
                    , may = "май"
                    , jun = "юни"
                    , jul = "юли"
                    , aug = "авг"
                    , sep = "сеп"
                    , oct = "окт"
                    , nov = "ное"
                    , dec = "дек"
                    }
                , wide =
                    { jan = "януари"
                    , feb = "февруари"
                    , mar = "март"
                    , apr = "април"
                    , may = "май"
                    , jun = "юни"
                    , jul = "юли"
                    , aug = "август"
                    , sep = "септември"
                    , oct = "октомври"
                    , nov = "ноември"
                    , dec = "декември"
                    }
                , narrow =
                    { jan = "я"
                    , feb = "ф"
                    , mar = "м"
                    , apr = "а"
                    , may = "м"
                    , jun = "ю"
                    , jul = "ю"
                    , aug = "а"
                    , sep = "с"
                    , oct = "о"
                    , nov = "н"
                    , dec = "д"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "яну"
                    , feb = "фев"
                    , mar = "март"
                    , apr = "апр"
                    , may = "май"
                    , jun = "юни"
                    , jul = "юли"
                    , aug = "авг"
                    , sep = "сеп"
                    , oct = "окт"
                    , nov = "ное"
                    , dec = "дек"
                    }
                , wide =
                    { jan = "януари"
                    , feb = "февруари"
                    , mar = "март"
                    , apr = "април"
                    , may = "май"
                    , jun = "юни"
                    , jul = "юли"
                    , aug = "август"
                    , sep = "септември"
                    , oct = "октомври"
                    , nov = "ноември"
                    , dec = "декември"
                    }
                , narrow =
                    { jan = "я"
                    , feb = "ф"
                    , mar = "м"
                    , apr = "а"
                    , may = "м"
                    , jun = "ю"
                    , jul = "ю"
                    , aug = "а"
                    , sep = "с"
                    , oct = "о"
                    , nov = "н"
                    , dec = "д"
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
                    { sun = "неделя"
                    , mon = "понеделник"
                    , tue = "вторник"
                    , wed = "сряда"
                    , thu = "четвъртък"
                    , fri = "петък"
                    , sat = "събота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "в"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
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
                    { sun = "неделя"
                    , mon = "понеделник"
                    , tue = "вторник"
                    , wed = "сряда"
                    , thu = "четвъртък"
                    , fri = "петък"
                    , sat = "събота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "в"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "пр.Хр.", ad = "сл.Хр." }
                , wide = { bc = "преди Христа", ad = "след Христа" }
                , narrow = { bc = "пр.Хр.", ad = "сл.Хр." }
                }
            , timePatterns =
                { short = "H:mm 'ч'."
                , medium = "H:mm:ss 'ч'."
                , long = "H:mm:ss 'ч'. z"
                , full = "H:mm:ss 'ч'. zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h 'ч'. B" )
                , ( "Bhm", "h:mm 'ч'. B" )
                , ( "Bhms", "h:mm:ss 'ч'. B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E, h:mm 'ч'. B" )
                , ( "EBhms", "E, h:mm:ss 'ч'. B" )
                , ( "Ed", "E, d" )
                , ( "Ehm", "E, h:mm 'ч'. a" )
                , ( "EHm", "E, HH:mm 'ч'." )
                , ( "Ehms", "E, h:mm:ss 'ч'. a" )
                , ( "EHms", "E, HH:mm:ss 'ч'." )
                , ( "Gy", "y 'г'. G" )
                , ( "GyMd", "dd.MM.y 'г'. GGGGG" )
                , ( "GyMMM", "MM.y 'г'. G" )
                , ( "GyMMMd", "d.MM.y 'г'. G" )
                , ( "GyMMMEd", "E, d.MM.y 'г'. G" )
                , ( "GyMMMM", "MMMM y 'г'. G" )
                , ( "GyMMMMd", "d MMMM y 'г'. G" )
                , ( "GyMMMMEd", "E, d MMMM y 'г'. G" )
                , ( "h", "h 'ч'. a" )
                , ( "H", "HH 'ч'." )
                , ( "hm", "h:mm 'ч'. a" )
                , ( "Hm", "HH:mm 'ч'." )
                , ( "hms", "h:mm:ss 'ч'. a" )
                , ( "Hms", "HH:mm:ss 'ч'." )
                , ( "hmsv", "h:mm:ss 'ч'. a v" )
                , ( "Hmsv", "HH:mm:ss 'ч'. v" )
                , ( "hmv", "h:mm 'ч'. a v" )
                , ( "Hmv", "HH:mm 'ч'. v" )
                , ( "M", "L" )
                , ( "Md", "d.MM" )
                , ( "MEd", "E, d.MM" )
                , ( "MMM", "MM" )
                , ( "MMMd", "d.MM" )
                , ( "MMMEd", "E, d.MM" )
                , ( "MMMM", "LLLL" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMdd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'седмица' W 'от' MMMM" )
                , ( "MMMMW-count-other", "'седмица' W 'от' MMMM" )
                , ( "ms", "m:ss" )
                , ( "y", "y 'г'." )
                , ( "yM", "MM.y 'г'." )
                , ( "yMd", "d.MM.y 'г'." )
                , ( "yMEd", "E, d.MM.y 'г'." )
                , ( "yMMM", "MM.y 'г'." )
                , ( "yMMMd", "d.MM.y 'г'." )
                , ( "yMMMEd", "E, d.MM.y 'г'." )
                , ( "yMMMM", "MMMM y 'г'." )
                , ( "yMMMMd", "d MMMM y 'г'." )
                , ( "yMMMMEd", "E, d MMMM y 'г'." )
                , ( "yQQQ", "QQQ y 'г'." )
                , ( "yQQQQ", "QQQQ y 'г'." )
                , ( "yw-count-one", "'седмица' w 'от' Y 'г'." )
                , ( "yw-count-other", "'седмица' w 'от' Y 'г'." )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
