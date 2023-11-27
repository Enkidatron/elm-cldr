module Generated.Ru exposing (ru, ru_BY, ru_KG, ru_KZ, ru_MD, ru_UA)

{-|

@docs ru, ru_BY, ru_KG, ru_KZ, ru_MD, ru_UA

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
        [ ( "ru"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru : Internal.Locale.Locale
ru =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ru"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полночь" )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полдень" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "веч." )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d MMM y\u{202F}'г'."
                , long = "d MMMM y\u{202F}'г'."
                , full = "EEEE, d MMMM y\u{202F}'г'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "мар."
                    , apr = "апр."
                    , may = "мая"
                    , jun = "июн."
                    , jul = "июл."
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "января"
                    , feb = "февраля"
                    , mar = "марта"
                    , apr = "апреля"
                    , may = "мая"
                    , jun = "июня"
                    , jul = "июля"
                    , aug = "августа"
                    , sep = "сентября"
                    , oct = "октября"
                    , nov = "ноября"
                    , dec = "декабря"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "март"
                    , apr = "апр."
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "январь"
                    , feb = "февраль"
                    , mar = "март"
                    , apr = "апрель"
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "август"
                    , sep = "сентябрь"
                    , oct = "октябрь"
                    , nov = "ноябрь"
                    , dec = "декабрь"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
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
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
                    , mon = "П"
                    , tue = "В"
                    , wed = "С"
                    , thu = "Ч"
                    , fri = "П"
                    , sat = "С"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "до н. э.", ad = "н. э." }
                , wide =
                    { bc = "до Рождества Христова"
                    , ad = "от Рождества Христова"
                    }
                , narrow = { bc = "до н.э.", ad = "н.э." }
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
                , ( "EBhm", "ccc, h:mm B" )
                , ( "EBhms", "ccc, h:mm:ss B" )
                , ( "Ed", "ccc, d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y\u{202F}'г'. G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "LLL y\u{202F}'г'. G" )
                , ( "GyMMMd", "d MMM y\u{202F}'г'. G" )
                , ( "GyMMMEd", "E, d MMM y\u{202F}'г'. G" )
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
                , ( "M", "L" )
                , ( "Md", "dd.MM" )
                , ( "MEd", "E, dd.MM" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "ccc, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-few", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-many", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-other", "W-'я' 'неделя' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "ccc, dd.MM.y\u{202F}'г'." )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "LLL y\u{202F}'г'." )
                , ( "yMMMd", "d MMM y\u{202F}'г'." )
                , ( "yMMMEd", "E, d MMM y\u{202F}'г'." )
                , ( "yMMMM", "LLLL y\u{202F}'г'." )
                , ( "yQQQ", "QQQ y\u{202F}'г'." )
                , ( "yQQQQ", "QQQQ y\u{202F}'г'." )
                , ( "yw-count-one", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-few", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-many", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-other", "w-'я' 'неделя' Y 'г'." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_BY : Internal.Locale.Locale
ru_BY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ru"
            , script = Nothing
            , territory = Just "BY"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полночь" )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полдень" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "веч." )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d MMM y\u{202F}'г'."
                , long = "d MMMM y\u{202F}'г'."
                , full = "EEEE, d MMMM y\u{202F}'г'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "мар."
                    , apr = "апр."
                    , may = "мая"
                    , jun = "июн."
                    , jul = "июл."
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "января"
                    , feb = "февраля"
                    , mar = "марта"
                    , apr = "апреля"
                    , may = "мая"
                    , jun = "июня"
                    , jul = "июля"
                    , aug = "августа"
                    , sep = "сентября"
                    , oct = "октября"
                    , nov = "ноября"
                    , dec = "декабря"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "март"
                    , apr = "апр."
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "январь"
                    , feb = "февраль"
                    , mar = "март"
                    , apr = "апрель"
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "август"
                    , sep = "сентябрь"
                    , oct = "октябрь"
                    , nov = "ноябрь"
                    , dec = "декабрь"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
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
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
                    , mon = "П"
                    , tue = "В"
                    , wed = "С"
                    , thu = "Ч"
                    , fri = "П"
                    , sat = "С"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "до н. э.", ad = "н. э." }
                , wide =
                    { bc = "до Рождества Христова"
                    , ad = "от Рождества Христова"
                    }
                , narrow = { bc = "до н.э.", ad = "н.э." }
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
                , ( "EBhm", "ccc, h:mm B" )
                , ( "EBhms", "ccc, h:mm:ss B" )
                , ( "Ed", "ccc, d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y\u{202F}'г'. G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "LLL y\u{202F}'г'. G" )
                , ( "GyMMMd", "d MMM y\u{202F}'г'. G" )
                , ( "GyMMMEd", "E, d MMM y\u{202F}'г'. G" )
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
                , ( "M", "L" )
                , ( "Md", "dd.MM" )
                , ( "MEd", "E, dd.MM" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "ccc, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-few", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-many", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-other", "W-'я' 'неделя' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "ccc, dd.MM.y\u{202F}'г'." )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "LLL y\u{202F}'г'." )
                , ( "yMMMd", "d MMM y\u{202F}'г'." )
                , ( "yMMMEd", "E, d MMM y\u{202F}'г'." )
                , ( "yMMMM", "LLLL y\u{202F}'г'." )
                , ( "yQQQ", "QQQ y\u{202F}'г'." )
                , ( "yQQQQ", "QQQQ y\u{202F}'г'." )
                , ( "yw-count-one", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-few", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-many", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-other", "w-'я' 'неделя' Y 'г'." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_KG : Internal.Locale.Locale
ru_KG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ru"
            , script = Nothing
            , territory = Just "KG"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полночь" )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полдень" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "веч." )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d MMM y\u{202F}'г'."
                , long = "d MMMM y\u{202F}'г'."
                , full = "EEEE, d MMMM y\u{202F}'г'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "мар."
                    , apr = "апр."
                    , may = "мая"
                    , jun = "июн."
                    , jul = "июл."
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "января"
                    , feb = "февраля"
                    , mar = "марта"
                    , apr = "апреля"
                    , may = "мая"
                    , jun = "июня"
                    , jul = "июля"
                    , aug = "августа"
                    , sep = "сентября"
                    , oct = "октября"
                    , nov = "ноября"
                    , dec = "декабря"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "март"
                    , apr = "апр."
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "январь"
                    , feb = "февраль"
                    , mar = "март"
                    , apr = "апрель"
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "август"
                    , sep = "сентябрь"
                    , oct = "октябрь"
                    , nov = "ноябрь"
                    , dec = "декабрь"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
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
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
                    , mon = "П"
                    , tue = "В"
                    , wed = "С"
                    , thu = "Ч"
                    , fri = "П"
                    , sat = "С"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "до н. э.", ad = "н. э." }
                , wide =
                    { bc = "до Рождества Христова"
                    , ad = "от Рождества Христова"
                    }
                , narrow = { bc = "до н.э.", ad = "н.э." }
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
                , ( "EBhm", "ccc, h:mm B" )
                , ( "EBhms", "ccc, h:mm:ss B" )
                , ( "Ed", "ccc, d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y\u{202F}'г'. G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "LLL y\u{202F}'г'. G" )
                , ( "GyMMMd", "d MMM y\u{202F}'г'. G" )
                , ( "GyMMMEd", "E, d MMM y\u{202F}'г'. G" )
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
                , ( "M", "L" )
                , ( "Md", "dd.MM" )
                , ( "MEd", "E, dd.MM" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "ccc, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-few", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-many", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-other", "W-'я' 'неделя' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "ccc, dd.MM.y\u{202F}'г'." )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "LLL y\u{202F}'г'." )
                , ( "yMMMd", "d MMM y\u{202F}'г'." )
                , ( "yMMMEd", "E, d MMM y\u{202F}'г'." )
                , ( "yMMMM", "LLLL y\u{202F}'г'." )
                , ( "yQQQ", "QQQ y\u{202F}'г'." )
                , ( "yQQQQ", "QQQQ y\u{202F}'г'." )
                , ( "yw-count-one", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-few", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-many", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-other", "w-'я' 'неделя' Y 'г'." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_KZ : Internal.Locale.Locale
ru_KZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ru"
            , script = Nothing
            , territory = Just "KZ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полночь" )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полдень" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "веч." )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d MMM y\u{202F}'г'."
                , long = "d MMMM y\u{202F}'г'."
                , full = "EEEE, d MMMM y\u{202F}'г'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "мар."
                    , apr = "апр."
                    , may = "мая"
                    , jun = "июн."
                    , jul = "июл."
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "января"
                    , feb = "февраля"
                    , mar = "марта"
                    , apr = "апреля"
                    , may = "мая"
                    , jun = "июня"
                    , jul = "июля"
                    , aug = "августа"
                    , sep = "сентября"
                    , oct = "октября"
                    , nov = "ноября"
                    , dec = "декабря"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "март"
                    , apr = "апр."
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "январь"
                    , feb = "февраль"
                    , mar = "март"
                    , apr = "апрель"
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "август"
                    , sep = "сентябрь"
                    , oct = "октябрь"
                    , nov = "ноябрь"
                    , dec = "декабрь"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
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
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
                    , mon = "П"
                    , tue = "В"
                    , wed = "С"
                    , thu = "Ч"
                    , fri = "П"
                    , sat = "С"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "до н. э.", ad = "н. э." }
                , wide =
                    { bc = "до Рождества Христова"
                    , ad = "от Рождества Христова"
                    }
                , narrow = { bc = "до н.э.", ad = "н.э." }
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
                , ( "EBhm", "ccc, h:mm B" )
                , ( "EBhms", "ccc, h:mm:ss B" )
                , ( "Ed", "ccc, d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y\u{202F}'г'. G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "LLL y\u{202F}'г'. G" )
                , ( "GyMMMd", "d MMM y\u{202F}'г'. G" )
                , ( "GyMMMEd", "E, d MMM y\u{202F}'г'. G" )
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
                , ( "M", "L" )
                , ( "Md", "dd.MM" )
                , ( "MEd", "E, dd.MM" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "ccc, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-few", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-many", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-other", "W-'я' 'неделя' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "ccc, dd.MM.y\u{202F}'г'." )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "LLL y\u{202F}'г'." )
                , ( "yMMMd", "d MMM y\u{202F}'г'." )
                , ( "yMMMEd", "E, d MMM y\u{202F}'г'." )
                , ( "yMMMM", "LLLL y\u{202F}'г'." )
                , ( "yQQQ", "QQQ y\u{202F}'г'." )
                , ( "yQQQQ", "QQQQ y\u{202F}'г'." )
                , ( "yw-count-one", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-few", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-many", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-other", "w-'я' 'неделя' Y 'г'." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_MD : Internal.Locale.Locale
ru_MD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ru"
            , script = Nothing
            , territory = Just "MD"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полночь" )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полдень" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "веч." )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d MMM y\u{202F}'г'."
                , long = "d MMMM y\u{202F}'г'."
                , full = "EEEE, d MMMM y\u{202F}'г'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "мар."
                    , apr = "апр."
                    , may = "мая"
                    , jun = "июн."
                    , jul = "июл."
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "января"
                    , feb = "февраля"
                    , mar = "марта"
                    , apr = "апреля"
                    , may = "мая"
                    , jun = "июня"
                    , jul = "июля"
                    , aug = "августа"
                    , sep = "сентября"
                    , oct = "октября"
                    , nov = "ноября"
                    , dec = "декабря"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "март"
                    , apr = "апр."
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "январь"
                    , feb = "февраль"
                    , mar = "март"
                    , apr = "апрель"
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "август"
                    , sep = "сентябрь"
                    , oct = "октябрь"
                    , nov = "ноябрь"
                    , dec = "декабрь"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
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
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
                    , mon = "П"
                    , tue = "В"
                    , wed = "С"
                    , thu = "Ч"
                    , fri = "П"
                    , sat = "С"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "до н. э.", ad = "н. э." }
                , wide =
                    { bc = "до Рождества Христова"
                    , ad = "от Рождества Христова"
                    }
                , narrow = { bc = "до н.э.", ad = "н.э." }
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
                , ( "EBhm", "ccc, h:mm B" )
                , ( "EBhms", "ccc, h:mm:ss B" )
                , ( "Ed", "ccc, d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y\u{202F}'г'. G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "LLL y\u{202F}'г'. G" )
                , ( "GyMMMd", "d MMM y\u{202F}'г'. G" )
                , ( "GyMMMEd", "E, d MMM y\u{202F}'г'. G" )
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
                , ( "M", "L" )
                , ( "Md", "dd.MM" )
                , ( "MEd", "E, dd.MM" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "ccc, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-few", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-many", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-other", "W-'я' 'неделя' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "ccc, dd.MM.y\u{202F}'г'." )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "LLL y\u{202F}'г'." )
                , ( "yMMMd", "d MMM y\u{202F}'г'." )
                , ( "yMMMEd", "E, d MMM y\u{202F}'г'." )
                , ( "yMMMM", "LLLL y\u{202F}'г'." )
                , ( "yQQQ", "QQQ y\u{202F}'г'." )
                , ( "yQQQQ", "QQQQ y\u{202F}'г'." )
                , ( "yw-count-one", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-few", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-many", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-other", "w-'я' 'неделя' Y 'г'." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_UA : Internal.Locale.Locale
ru_UA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ru"
            , script = Nothing
            , territory = Just "UA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "вечера" )
                            , ( "midnight", "полночь" )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полдень" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "дня" )
                            , ( "evening1", "веч." )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утра" )
                            , ( "night1", "ночи" )
                            , ( "noon", "полд." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d MMM y\u{202F}'г'."
                , long = "d MMMM y\u{202F}'г'."
                , full = "EEEE, d MMMM y\u{202F}'г'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "мар."
                    , apr = "апр."
                    , may = "мая"
                    , jun = "июн."
                    , jul = "июл."
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "января"
                    , feb = "февраля"
                    , mar = "марта"
                    , apr = "апреля"
                    , may = "мая"
                    , jun = "июня"
                    , jul = "июля"
                    , aug = "августа"
                    , sep = "сентября"
                    , oct = "октября"
                    , nov = "ноября"
                    , dec = "декабря"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "февр."
                    , mar = "март"
                    , apr = "апр."
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "авг."
                    , sep = "сент."
                    , oct = "окт."
                    , nov = "нояб."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "январь"
                    , feb = "февраль"
                    , mar = "март"
                    , apr = "апрель"
                    , may = "май"
                    , jun = "июнь"
                    , jul = "июль"
                    , aug = "август"
                    , sep = "сентябрь"
                    , oct = "октябрь"
                    , nov = "ноябрь"
                    , dec = "декабрь"
                    }
                , narrow =
                    { jan = "Я"
                    , feb = "Ф"
                    , mar = "М"
                    , apr = "А"
                    , may = "М"
                    , jun = "И"
                    , jul = "И"
                    , aug = "А"
                    , sep = "С"
                    , oct = "О"
                    , nov = "Н"
                    , dec = "Д"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
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
                    { sun = "вс"
                    , mon = "пн"
                    , tue = "вт"
                    , wed = "ср"
                    , thu = "чт"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "воскресенье"
                    , mon = "понедельник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четверг"
                    , fri = "пятница"
                    , sat = "суббота"
                    }
                , narrow =
                    { sun = "В"
                    , mon = "П"
                    , tue = "В"
                    , wed = "С"
                    , thu = "Ч"
                    , fri = "П"
                    , sat = "С"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "до н. э.", ad = "н. э." }
                , wide =
                    { bc = "до Рождества Христова"
                    , ad = "от Рождества Христова"
                    }
                , narrow = { bc = "до н.э.", ad = "н.э." }
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
                , ( "EBhm", "ccc, h:mm B" )
                , ( "EBhms", "ccc, h:mm:ss B" )
                , ( "Ed", "ccc, d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y\u{202F}'г'. G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "LLL y\u{202F}'г'. G" )
                , ( "GyMMMd", "d MMM y\u{202F}'г'. G" )
                , ( "GyMMMEd", "E, d MMM y\u{202F}'г'. G" )
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
                , ( "M", "L" )
                , ( "Md", "dd.MM" )
                , ( "MEd", "E, dd.MM" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "ccc, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-few", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-many", "W-'я' 'неделя' MMMM" )
                , ( "MMMMW-count-other", "W-'я' 'неделя' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "ccc, d.MM.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "LLL y\u{202F}'г'." )
                , ( "yMMMd", "d MMM y\u{202F}'г'." )
                , ( "yMMMEd", "E, d MMM y\u{202F}'г'." )
                , ( "yMMMM", "LLLL y\u{202F}'г'." )
                , ( "yQQQ", "QQQ y\u{202F}'г'." )
                , ( "yQQQQ", "QQQQ y\u{202F}'г'." )
                , ( "yw-count-one", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-few", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-many", "w-'я' 'неделя' Y 'г'." )
                , ( "yw-count-other", "w-'я' 'неделя' Y 'г'." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
