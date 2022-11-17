module Generated.Mk exposing (mk)

{-|

@docs mk

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
        [ ( "mk"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d.M.y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
mk : Internal.Locale.Locale
mk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "mk"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "претпл."
                    , pm = "попл."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "попладне" )
                            , ( "evening1", "навечер" )
                            , ( "midnight", "полноќ" )
                            , ( "morning1", "наутро" )
                            , ( "morning2", "претпладне" )
                            , ( "night1", "ноќе" )
                            , ( "noon", "напладне" )
                            ]
                    }
                , wide =
                    { am = "претпладне"
                    , pm = "попладне"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "попладне" )
                            , ( "evening1", "навечер" )
                            , ( "midnight", "полноќ" )
                            , ( "morning1", "наутро" )
                            , ( "morning2", "претпладне" )
                            , ( "night1", "по полноќ" )
                            , ( "noon", "напладне" )
                            ]
                    }
                , narrow =
                    { am = "претпл."
                    , pm = "попл."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "попл." )
                            , ( "evening1", "веч." )
                            , ( "midnight", "полн." )
                            , ( "morning1", "утро" )
                            , ( "morning2", "претпл." )
                            , ( "night1", "ноќе" )
                            , ( "noon", "напл." )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy"
                , medium = "d.M.y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "јан."
                    , feb = "фев."
                    , mar = "мар."
                    , apr = "апр."
                    , may = "мај"
                    , jun = "јун."
                    , jul = "јул."
                    , aug = "авг."
                    , sep = "септ."
                    , oct = "окт."
                    , nov = "ноем."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "јануари"
                    , feb = "февруари"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јуни"
                    , jul = "јули"
                    , aug = "август"
                    , sep = "септември"
                    , oct = "октомври"
                    , nov = "ноември"
                    , dec = "декември"
                    }
                , narrow =
                    { jan = "ј"
                    , feb = "ф"
                    , mar = "м"
                    , apr = "а"
                    , may = "м"
                    , jun = "ј"
                    , jul = "ј"
                    , aug = "а"
                    , sep = "с"
                    , oct = "о"
                    , nov = "н"
                    , dec = "д"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "јан."
                    , feb = "фев."
                    , mar = "мар."
                    , apr = "апр."
                    , may = "мај"
                    , jun = "јун."
                    , jul = "јул."
                    , aug = "авг."
                    , sep = "септ."
                    , oct = "окт."
                    , nov = "ноем."
                    , dec = "дек."
                    }
                , wide =
                    { jan = "јануари"
                    , feb = "февруари"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јуни"
                    , jul = "јули"
                    , aug = "август"
                    , sep = "септември"
                    , oct = "октомври"
                    , nov = "ноември"
                    , dec = "декември"
                    }
                , narrow =
                    { jan = "ј"
                    , feb = "ф"
                    , mar = "м"
                    , apr = "а"
                    , may = "м"
                    , jun = "ј"
                    , jul = "ј"
                    , aug = "а"
                    , sep = "с"
                    , oct = "о"
                    , nov = "н"
                    , dec = "д"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "нед."
                    , mon = "пон."
                    , tue = "вто."
                    , wed = "сре."
                    , thu = "чет."
                    , fri = "пет."
                    , sat = "саб."
                    }
                , wide =
                    { sun = "недела"
                    , mon = "понеделник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четврток"
                    , fri = "петок"
                    , sat = "сабота"
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
                    { sun = "нед."
                    , mon = "пон."
                    , tue = "вто."
                    , wed = "сре."
                    , thu = "чет."
                    , fri = "пет."
                    , sat = "саб."
                    }
                , wide =
                    { sun = "недела"
                    , mon = "понеделник"
                    , tue = "вторник"
                    , wed = "среда"
                    , thu = "четврток"
                    , fri = "петок"
                    , sat = "сабота"
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
                { abbreviated = { bc = "п.н.е.", ad = "н.е." }
                , wide = { bc = "пред нашата ера", ad = "од нашата ера" }
                , narrow = { bc = "п.н.е.", ad = "н.е." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, 'во' {0}"
                , medium = "{1}, 'во' {0}"
                , long = "{1}, 'во' {0}"
                , full = "{1}, 'во' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.M.y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
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
                , ( "Md", "d.M" )
                , ( "Mdd", "d.M" )
                , ( "MEd", "E, d.M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "W. 'седмица' 'од' MMMM" )
                , ( "MMMMW-count-other", "W. 'седмица' 'од' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "MMM y 'г'." )
                , ( "yMMMd", "d MMM y 'г'." )
                , ( "yMMMEd", "E, d MMM y 'г'." )
                , ( "yMMMM", "MMMM y 'г'." )
                , ( "yQQQ", "QQQ y 'г'." )
                , ( "yQQQQ", "QQQQ y 'г'." )
                , ( "yw-count-one", "w. 'седмица' 'од' Y" )
                , ( "yw-count-other", "w. 'седмица' 'од' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
