module Generated.Ky exposing (ky)

{-|

@docs ky

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
        [ ( "ky"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y-'ж'., d-MMM
  - Long : y-'ж'., d-MMMM
  - Full : y-'ж'., d-MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ky : Internal.Locale.Locale
ky =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ky"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "тң"
                    , pm = "тк"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "түштөн кийин" )
                            , ( "evening1", "кечинде" )
                            , ( "midnight", "түн ортосу" )
                            , ( "morning1", "эртең менен" )
                            , ( "night1", "түн ичинде" )
                            , ( "noon", "чак түш" )
                            ]
                    }
                , wide =
                    { am = "таңкы"
                    , pm = "түштөн кийинки"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "түштөн кийин" )
                            , ( "evening1", "кечинде" )
                            , ( "midnight", "түн ортосу" )
                            , ( "morning1", "эртең менен" )
                            , ( "night1", "түн ичинде" )
                            , ( "noon", "чак түш" )
                            ]
                    }
                , narrow =
                    { am = "тң"
                    , pm = "тк"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "түшт кйн" )
                            , ( "evening1", "кечк" )
                            , ( "midnight", "түн орт" )
                            , ( "morning1", "эртң мн" )
                            , ( "night1", "түн" )
                            , ( "noon", "чт" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "y-'ж'., d-MMM"
                , long = "y-'ж'., d-MMMM"
                , full = "y-'ж'., d-MMMM, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "янв."
                    , feb = "фев."
                    , mar = "мар."
                    , apr = "апр."
                    , may = "май"
                    , jun = "июн."
                    , jul = "июл."
                    , aug = "авг."
                    , sep = "сен."
                    , oct = "окт."
                    , nov = "ноя."
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
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Янв"
                    , feb = "Фев"
                    , mar = "Мар"
                    , apr = "Апр"
                    , may = "Май"
                    , jun = "Июн"
                    , jul = "Июл"
                    , aug = "Авг"
                    , sep = "Сен"
                    , oct = "Окт"
                    , nov = "Ноя"
                    , dec = "Дек"
                    }
                , wide =
                    { jan = "Январь"
                    , feb = "Февраль"
                    , mar = "Март"
                    , apr = "Апрель"
                    , may = "Май"
                    , jun = "Июнь"
                    , jul = "Июль"
                    , aug = "Август"
                    , sep = "Сентябрь"
                    , oct = "Октябрь"
                    , nov = "Ноябрь"
                    , dec = "Декабрь"
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
                    { sun = "жек."
                    , mon = "дүй."
                    , tue = "шейш."
                    , wed = "шарш."
                    , thu = "бейш."
                    , fri = "жума"
                    , sat = "ишм."
                    }
                , wide =
                    { sun = "жекшемби"
                    , mon = "дүйшөмбү"
                    , tue = "шейшемби"
                    , wed = "шаршемби"
                    , thu = "бейшемби"
                    , fri = "жума"
                    , sat = "ишемби"
                    }
                , narrow =
                    { sun = "Ж"
                    , mon = "Д"
                    , tue = "Ш"
                    , wed = "Ш"
                    , thu = "Б"
                    , fri = "Ж"
                    , sat = "И"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "жек."
                    , mon = "дүй."
                    , tue = "шейш."
                    , wed = "шарш."
                    , thu = "бейш."
                    , fri = "жума"
                    , sat = "ишм."
                    }
                , wide =
                    { sun = "жекшемби"
                    , mon = "дүйшөмбү"
                    , tue = "шейшемби"
                    , wed = "шаршемби"
                    , thu = "бейшемби"
                    , fri = "жума"
                    , sat = "ишемби"
                    }
                , narrow =
                    { sun = "Ж"
                    , mon = "Д"
                    , tue = "Ш"
                    , wed = "Ш"
                    , thu = "Б"
                    , fri = "Ж"
                    , sat = "И"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "б.з.ч.", ad = "б.з." }
                , wide = { bc = "биздин заманга чейин", ad = "биздин заман" }
                , narrow = { bc = "б.з.ч.", ad = "б.з." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "d, E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y-'ж'." )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y-'ж'. MMM" )
                , ( "GyMMMd", "G y-'ж'. d-MMM" )
                , ( "GyMMMEd", "G y-'ж'. d-MMM, E" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd-MM" )
                , ( "MEd", "dd-MM, E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d-MMM" )
                , ( "MMMEd", "d-MMM, E" )
                , ( "MMMMd", "d-MMMM" )
                , ( "MMMMW-count-one", "MMMM 'айынын' W-'аптасы'" )
                , ( "MMMMW-count-other", "MMMM 'айынын' W-'аптасы'" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "y-MM" )
                , ( "yMd", "y-dd-MM" )
                , ( "yMEd", "y-dd-MM, E" )
                , ( "yMMM", "y-'ж'. MMM" )
                , ( "yMMMd", "y-'ж'. d-MMM" )
                , ( "yMMMEd", "y-'ж'. d-MMM, E" )
                , ( "yMMMM", "y-'ж'., MMMM" )
                , ( "yQQQ", "y-'ж'., QQQ" )
                , ( "yQQQQ", "y-'ж'., QQQQ" )
                , ( "yw-count-one", "Y-'жылдын' w-'аптасы'" )
                , ( "yw-count-other", "Y-'жылдын' w-'аптасы'" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
