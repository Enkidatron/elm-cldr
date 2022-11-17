module Generated.Sr exposing (sr, sr_Cyrl, sr_Cyrl_BA, sr_Cyrl_ME, sr_Cyrl_XK, sr_Latn, sr_Latn_BA, sr_Latn_ME, sr_Latn_XK)

{-|

@docs sr, sr_Cyrl, sr_Cyrl_BA, sr_Cyrl_ME, sr_Cyrl_XK, sr_Latn, sr_Latn_BA, sr_Latn_ME, sr_Latn_XK

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
        [ ( "sr"
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr : Internal.Locale.Locale
sr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sr"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по подне" )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "ујутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по подне" )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "ујутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по подне" )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "ујутру" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy."
                , medium = "d. M. y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "мар"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "сеп"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "мар"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "сеп"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сре"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недеља"
                    , mon = "понедељак"
                    , tue = "уторак"
                    , wed = "среда"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сре"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недеља"
                    , mon = "понедељак"
                    , tue = "уторак"
                    , wed = "среда"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "п. н. е.", ad = "н. е." }
                , wide = { bc = "пре нове ере", ad = "нове ере" }
                , narrow = { bc = "п.н.е.", ad = "н.е." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d.MM.y. GGGGG" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
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
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMdd", "dd.MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'седмица' 'у' MMMM." )
                , ( "MMMMW-count-few", "W. 'седмица' 'у' MMMM." )
                , ( "MMMMW-count-other", "W. 'седмица' 'у' MMMM." )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "M.y." )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "MM.y." )
                , ( "yMMdd", "dd.MM.y." )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "MMMM y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'седмица' 'у' Y." )
                , ( "yw-count-few", "w. 'седмица' 'у' Y." )
                , ( "yw-count-other", "w. 'седмица' 'у' Y." )
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl : Internal.Locale.Locale
sr_Cyrl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sr"
            , script = Just "Cyrl"
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по подне" )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "ујутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по подне" )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "ујутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по подне" )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "ујутру" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy."
                , medium = "d. M. y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "мар"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "сеп"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "мар"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "сеп"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сре"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недеља"
                    , mon = "понедељак"
                    , tue = "уторак"
                    , wed = "среда"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сре"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недеља"
                    , mon = "понедељак"
                    , tue = "уторак"
                    , wed = "среда"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "п. н. е.", ad = "н. е." }
                , wide = { bc = "пре нове ере", ad = "нове ере" }
                , narrow = { bc = "п.н.е.", ad = "н.е." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d.MM.y. GGGGG" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
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
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMdd", "dd.MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'седмица' 'у' MMMM." )
                , ( "MMMMW-count-few", "W. 'седмица' 'у' MMMM." )
                , ( "MMMMW-count-other", "W. 'седмица' 'у' MMMM." )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "M.y." )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "MM.y." )
                , ( "yMMdd", "dd.MM.y." )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "MMMM y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'седмица' 'у' Y." )
                , ( "yw-count-few", "w. 'седмица' 'у' Y." )
                , ( "yw-count-other", "w. 'седмица' 'у' Y." )
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_BA : Internal.Locale.Locale
sr_Cyrl_BA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sr"
            , script = Just "Cyrl"
            , territory = Just "BA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "прије подне"
                    , pm = "по подне"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по под." )
                            , ( "evening1", "вече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "јутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , wide =
                    { am = "прије подне"
                    , pm = "по подне"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по подне" )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "ујутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по под." )
                            , ( "evening1", "вече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "јутро" )
                            , ( "night1", "ноћ" )
                            , ( "noon", "подне" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy."
                , medium = "d. M. y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "мар"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "сеп"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "мар"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "сеп"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сре"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недјеља"
                    , mon = "понедјељак"
                    , tue = "уторак"
                    , wed = "сриједа"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сри"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недјеља"
                    , mon = "понедјељак"
                    , tue = "уторак"
                    , wed = "сриједа"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "п. н. е.", ad = "н. е." }
                , wide = { bc = "прије нове ере", ad = "нове ере" }
                , narrow = { bc = "п.н.е.", ad = "н.е." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d.MM.y. GGGGG" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
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
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMdd", "dd.MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'седмица' 'у' MMMM." )
                , ( "MMMMW-count-few", "W. 'седмица' 'у' MMMM." )
                , ( "MMMMW-count-other", "W. 'седмица' 'у' MMMM." )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "M.y." )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "MM.y." )
                , ( "yMMdd", "dd.MM.y." )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "MMMM y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'седмица' 'у' Y." )
                , ( "yw-count-few", "w. 'седмица' 'у' Y." )
                , ( "yw-count-other", "w. 'седмица' 'у' Y." )
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_ME : Internal.Locale.Locale
sr_Cyrl_ME =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sr"
            , script = Just "Cyrl"
            , territory = Just "ME"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "прије подне"
                    , pm = "по подне"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по под." )
                            , ( "evening1", "вече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "јутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , wide =
                    { am = "прије подне"
                    , pm = "по подне"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по подне" )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "ујутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по под." )
                            , ( "evening1", "вече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "јутро" )
                            , ( "night1", "ноћ" )
                            , ( "noon", "подне" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy."
                , medium = "d. M. y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "март"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "септ"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "март"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "септ"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сре"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недјеља"
                    , mon = "понедељак"
                    , tue = "уторак"
                    , wed = "сриједа"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сре"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недјеља"
                    , mon = "понедељак"
                    , tue = "уторак"
                    , wed = "сриједа"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "п. н. е.", ad = "н. е." }
                , wide = { bc = "прије нове ере", ad = "нове ере" }
                , narrow = { bc = "п.н.е.", ad = "н.е." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d.MM.y. GGGGG" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
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
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMdd", "dd.MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'сједмица' 'у' MMMM" )
                , ( "MMMMW-count-few", "W. 'сједмица' 'у' MMMM" )
                , ( "MMMMW-count-other", "W. 'сједмица' 'у' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "M.y." )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "MM.y." )
                , ( "yMMdd", "dd.MM.y." )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "MMMM y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'сједмица' 'у' Y." )
                , ( "yw-count-few", "w. 'сједмица' 'у' Y." )
                , ( "yw-count-other", "w. 'сједмица' 'у' Y." )
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_XK : Internal.Locale.Locale
sr_Cyrl_XK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sr"
            , script = Just "Cyrl"
            , territory = Just "XK"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по под." )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "јутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по подне" )
                            , ( "evening1", "увече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "ујутро" )
                            , ( "night1", "ноћу" )
                            , ( "noon", "подне" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "по под." )
                            , ( "evening1", "вече" )
                            , ( "midnight", "поноћ" )
                            , ( "morning1", "јутро" )
                            , ( "night1", "ноћ" )
                            , ( "noon", "подне" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy."
                , medium = "d. M. y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "март"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "септ"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { jan = "јан"
                    , feb = "феб"
                    , mar = "март"
                    , apr = "апр"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "авг"
                    , sep = "септ"
                    , oct = "окт"
                    , nov = "нов"
                    , dec = "дец"
                    }
                , wide =
                    { jan = "јануар"
                    , feb = "фебруар"
                    , mar = "март"
                    , apr = "април"
                    , may = "мај"
                    , jun = "јун"
                    , jul = "јул"
                    , aug = "август"
                    , sep = "септембар"
                    , oct = "октобар"
                    , nov = "новембар"
                    , dec = "децембар"
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
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сре"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недеља"
                    , mon = "понедељак"
                    , tue = "уторак"
                    , wed = "среда"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "нед"
                    , mon = "пон"
                    , tue = "уто"
                    , wed = "сре"
                    , thu = "чет"
                    , fri = "пет"
                    , sat = "суб"
                    }
                , wide =
                    { sun = "недеља"
                    , mon = "понедељак"
                    , tue = "уторак"
                    , wed = "среда"
                    , thu = "четвртак"
                    , fri = "петак"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "у"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "п. н. е.", ad = "н. е." }
                , wide = { bc = "пре нове ере", ad = "нове ере" }
                , narrow = { bc = "п.н.е.", ad = "н.е." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d.MM.y. GGGGG" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
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
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMdd", "dd.MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'седмица' 'у' MMMM." )
                , ( "MMMMW-count-few", "W. 'седмица' 'у' MMMM." )
                , ( "MMMMW-count-other", "W. 'седмица' 'у' MMMM." )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "M.y." )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "MM.y." )
                , ( "yMMdd", "dd.MM.y." )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "MMMM y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'седмица' 'у' Y." )
                , ( "yw-count-few", "w. 'седмица' 'у' Y." )
                , ( "yw-count-other", "w. 'седмица' 'у' Y." )
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn : Internal.Locale.Locale
sr_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sr"
            , script = Just "Latn"
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po podne" )
                            , ( "evening1", "uveče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po podne" )
                            , ( "evening1", "uveče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po podne" )
                            , ( "evening1", "uveče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutru" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy."
                , medium = "d. M. y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avg"
                    , sep = "sep"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mart"
                    , apr = "april"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avgust"
                    , sep = "septembar"
                    , oct = "oktobar"
                    , nov = "novembar"
                    , dec = "decembar"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avg"
                    , sep = "sep"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mart"
                    , apr = "april"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avgust"
                    , sep = "septembar"
                    , oct = "oktobar"
                    , nov = "novembar"
                    , dec = "decembar"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ned"
                    , mon = "pon"
                    , tue = "uto"
                    , wed = "sre"
                    , thu = "čet"
                    , fri = "pet"
                    , sat = "sub"
                    }
                , wide =
                    { sun = "nedelja"
                    , mon = "ponedeljak"
                    , tue = "utorak"
                    , wed = "sreda"
                    , thu = "četvrtak"
                    , fri = "petak"
                    , sat = "subota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ned"
                    , mon = "pon"
                    , tue = "uto"
                    , wed = "sre"
                    , thu = "čet"
                    , fri = "pet"
                    , sat = "sub"
                    }
                , wide =
                    { sun = "nedelja"
                    , mon = "ponedeljak"
                    , tue = "utorak"
                    , wed = "sreda"
                    , thu = "četvrtak"
                    , fri = "petak"
                    , sat = "subota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "p. n. e.", ad = "n. e." }
                , wide = { bc = "pre nove ere", ad = "nove ere" }
                , narrow = { bc = "p.n.e.", ad = "n.e." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d.MM.y. GGGGG" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
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
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMdd", "dd.MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'sedmica' 'u' MMMM." )
                , ( "MMMMW-count-few", "W. 'sedmica' 'u' MMMM." )
                , ( "MMMMW-count-other", "W. 'sedmica' 'u' MMMM." )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "M.y." )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "MM.y." )
                , ( "yMMdd", "dd.MM.y." )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "MMMM y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'sedmica' 'u' Y." )
                , ( "yw-count-few", "w. 'sedmica' 'u' Y." )
                , ( "yw-count-other", "w. 'sedmica' 'u' Y." )
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_BA : Internal.Locale.Locale
sr_Latn_BA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sr"
            , script = Just "Latn"
            , territory = Just "BA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "prije podne"
                    , pm = "po podne"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po pod." )
                            , ( "evening1", "veče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "jutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                , wide =
                    { am = "prije podne"
                    , pm = "po podne"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po podne" )
                            , ( "evening1", "uveče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po pod." )
                            , ( "evening1", "veče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "jutro" )
                            , ( "night1", "noć" )
                            , ( "noon", "podne" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy."
                , medium = "d. M. y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avg"
                    , sep = "sep"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mart"
                    , apr = "april"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avgust"
                    , sep = "septembar"
                    , oct = "oktobar"
                    , nov = "novembar"
                    , dec = "decembar"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avg"
                    , sep = "sep"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mart"
                    , apr = "april"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avgust"
                    , sep = "septembar"
                    , oct = "oktobar"
                    , nov = "novembar"
                    , dec = "decembar"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ned"
                    , mon = "pon"
                    , tue = "uto"
                    , wed = "sre"
                    , thu = "čet"
                    , fri = "pet"
                    , sat = "sub"
                    }
                , wide =
                    { sun = "nedjelja"
                    , mon = "ponedjeljak"
                    , tue = "utorak"
                    , wed = "srijeda"
                    , thu = "četvrtak"
                    , fri = "petak"
                    , sat = "subota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ned"
                    , mon = "pon"
                    , tue = "uto"
                    , wed = "sri"
                    , thu = "čet"
                    , fri = "pet"
                    , sat = "sub"
                    }
                , wide =
                    { sun = "nedjelja"
                    , mon = "ponedjeljak"
                    , tue = "utorak"
                    , wed = "srijeda"
                    , thu = "četvrtak"
                    , fri = "petak"
                    , sat = "subota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "p. n. e.", ad = "n. e." }
                , wide = { bc = "prije nove ere", ad = "nove ere" }
                , narrow = { bc = "p.n.e.", ad = "n.e." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d.MM.y. GGGGG" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
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
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMdd", "dd.MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'sedmica' 'u' MMMM." )
                , ( "MMMMW-count-few", "W. 'sedmica' 'u' MMMM." )
                , ( "MMMMW-count-other", "W. 'sedmica' 'u' MMMM." )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "M.y." )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "MM.y." )
                , ( "yMMdd", "dd.MM.y." )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "MMMM y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'sedmica' 'u' Y." )
                , ( "yw-count-few", "w. 'sedmica' 'u' Y." )
                , ( "yw-count-other", "w. 'sedmica' 'u' Y." )
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_ME : Internal.Locale.Locale
sr_Latn_ME =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sr"
            , script = Just "Latn"
            , territory = Just "ME"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "prije podne"
                    , pm = "po podne"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po pod." )
                            , ( "evening1", "veče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "jutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                , wide =
                    { am = "prije podne"
                    , pm = "po podne"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po podne" )
                            , ( "evening1", "uveče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po pod." )
                            , ( "evening1", "veče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "jutro" )
                            , ( "night1", "noć" )
                            , ( "noon", "podne" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy."
                , medium = "d. M. y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mart"
                    , apr = "apr"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avg"
                    , sep = "sept"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mart"
                    , apr = "april"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avgust"
                    , sep = "septembar"
                    , oct = "oktobar"
                    , nov = "novembar"
                    , dec = "decembar"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mart"
                    , apr = "apr"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avg"
                    , sep = "sept"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mart"
                    , apr = "april"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avgust"
                    , sep = "septembar"
                    , oct = "oktobar"
                    , nov = "novembar"
                    , dec = "decembar"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ned"
                    , mon = "pon"
                    , tue = "uto"
                    , wed = "sre"
                    , thu = "čet"
                    , fri = "pet"
                    , sat = "sub"
                    }
                , wide =
                    { sun = "nedjelja"
                    , mon = "ponedeljak"
                    , tue = "utorak"
                    , wed = "srijeda"
                    , thu = "četvrtak"
                    , fri = "petak"
                    , sat = "subota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ned"
                    , mon = "pon"
                    , tue = "uto"
                    , wed = "sre"
                    , thu = "čet"
                    , fri = "pet"
                    , sat = "sub"
                    }
                , wide =
                    { sun = "nedjelja"
                    , mon = "ponedeljak"
                    , tue = "utorak"
                    , wed = "srijeda"
                    , thu = "četvrtak"
                    , fri = "petak"
                    , sat = "subota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "p. n. e.", ad = "n. e." }
                , wide = { bc = "prije nove ere", ad = "nove ere" }
                , narrow = { bc = "p.n.e.", ad = "n.e." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d.MM.y. GGGGG" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
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
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMdd", "dd.MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'sjedmica' 'u' MMMM" )
                , ( "MMMMW-count-few", "W. 'sjedmica' 'u' MMMM" )
                , ( "MMMMW-count-other", "W. 'sjedmica' 'u' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "M.y." )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "MM.y." )
                , ( "yMMdd", "dd.MM.y." )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "MMMM y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'sjedmica' 'u' Y." )
                , ( "yw-count-few", "w. 'sjedmica' 'u' Y." )
                , ( "yw-count-other", "w. 'sjedmica' 'u' Y." )
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_XK : Internal.Locale.Locale
sr_Latn_XK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sr"
            , script = Just "Latn"
            , territory = Just "XK"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po pod." )
                            , ( "evening1", "uveče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "jutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po podne" )
                            , ( "evening1", "uveče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po pod." )
                            , ( "evening1", "veče" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "jutro" )
                            , ( "night1", "noć" )
                            , ( "noon", "podne" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy."
                , medium = "d. M. y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mart"
                    , apr = "apr"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avg"
                    , sep = "sept"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mart"
                    , apr = "april"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avgust"
                    , sep = "septembar"
                    , oct = "oktobar"
                    , nov = "novembar"
                    , dec = "decembar"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mart"
                    , apr = "apr"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avg"
                    , sep = "sept"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mart"
                    , apr = "april"
                    , may = "maj"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "avgust"
                    , sep = "septembar"
                    , oct = "oktobar"
                    , nov = "novembar"
                    , dec = "decembar"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ned"
                    , mon = "pon"
                    , tue = "uto"
                    , wed = "sre"
                    , thu = "čet"
                    , fri = "pet"
                    , sat = "sub"
                    }
                , wide =
                    { sun = "nedelja"
                    , mon = "ponedeljak"
                    , tue = "utorak"
                    , wed = "sreda"
                    , thu = "četvrtak"
                    , fri = "petak"
                    , sat = "subota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ned"
                    , mon = "pon"
                    , tue = "uto"
                    , wed = "sre"
                    , thu = "čet"
                    , fri = "pet"
                    , sat = "sub"
                    }
                , wide =
                    { sun = "nedelja"
                    , mon = "ponedeljak"
                    , tue = "utorak"
                    , wed = "sreda"
                    , thu = "četvrtak"
                    , fri = "petak"
                    , sat = "subota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "p. n. e.", ad = "n. e." }
                , wide = { bc = "pre nove ere", ad = "nove ere" }
                , narrow = { bc = "p.n.e.", ad = "n.e." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d.MM.y. GGGGG" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
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
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMdd", "dd.MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'sedmica' 'u' MMMM." )
                , ( "MMMMW-count-few", "W. 'sedmica' 'u' MMMM." )
                , ( "MMMMW-count-other", "W. 'sedmica' 'u' MMMM." )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "M.y." )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "MM.y." )
                , ( "yMMdd", "dd.MM.y." )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "MMMM y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'sedmica' 'u' Y." )
                , ( "yw-count-few", "w. 'sedmica' 'u' Y." )
                , ( "yw-count-other", "w. 'sedmica' 'u' Y." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
