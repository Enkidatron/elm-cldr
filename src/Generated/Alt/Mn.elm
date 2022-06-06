module Generated.Alt.Mn exposing (mn)

import Cldr.Format.Options as Opts
import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.LanguageInfo
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "mn"
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
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "mn"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
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
            , datePatterns =
                { short = "y.MM.dd"
                , medium = "y 'оны' MMM'ын' d"
                , long = "y 'оны' MMMM'ын' d"
                , full = "y 'оны' MMMM'ын' d, EEEE 'гараг'"
                }
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
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss (z)"
                , full = "HH:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h 'ц'" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E. B h:mm" )
                , ( "EBhms", "E. B h:mm:ss" )
                , ( "Ed", "dd. E" )
                , ( "Ehm", "E. h:mm a" )
                , ( "EHm", "E. HH:mm" )
                , ( "Ehms", "E. h:mm:ss a" )
                , ( "EHms", "E. HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y 'оны' MMM" )
                , ( "GyMMMd", "G y 'оны' MMM'ын' d" )
                , ( "GyMMMEd", "G y 'оны' MMM'ын' d. E" )
                , ( "h", "h 'ц' a" )
                , ( "H", "HH 'ц'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a (v)" )
                , ( "Hmsv", "HH:mm:ss (v)" )
                , ( "hmv", "h:mm a (v)" )
                , ( "Hmv", "HH:mm (v)" )
                , ( "M", "LLLLL" )
                , ( "Md", "MMMMM/dd" )
                , ( "MEd", "MMMMM/dd. E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM'ын' d" )
                , ( "MMMEd", "MMM'ын' d. E" )
                , ( "MMMMd", "MMMM'ын' d" )
                , ( "MMMMW-count-one", "MMMM'ын' W-'р' 'долоо' 'хоног'" )
                , ( "MMMMW-count-other", "MMMM'ын' W-'р' 'долоо' 'хоног'" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "y MMMMM" )
                , ( "yMd", "y.MM.dd" )
                , ( "yMEd", "y.MM.dd. E" )
                , ( "yMMM", "y 'оны' MMM" )
                , ( "yMMMd", "y 'оны' MMM'ын' d" )
                , ( "yMMMEd", "y 'оны' MMM'ын' d. E" )
                , ( "yMMMM", "y 'оны' MMMM" )
                , ( "yQQQ", "y 'оны' QQQ" )
                , ( "yQQQQ", "y 'оны' QQQQ" )
                , ( "yw-count-one", "Y 'оны' w-'р' 'долоо' 'хоног'" )
                , ( "yw-count-other", "Y 'оны' w-'р' 'долоо' 'хоног'" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
