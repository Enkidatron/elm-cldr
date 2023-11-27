module Generated.Lv exposing (lv)

{-|

@docs lv

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
        [ ( "lv"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 23, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : y. 'gada' d. MMM
  - Long : y. 'gada' d. MMMM
  - Full : EEEE, y. 'gada' d. MMMM

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lv : Internal.Locale.Locale
lv =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "lv"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "priekšp."
                    , pm = "pēcp."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "pēcpusd." )
                            , ( "evening1", "vakarā" )
                            , ( "midnight", "pusnaktī" )
                            , ( "morning1", "no rīta" )
                            , ( "night1", "naktī" )
                            , ( "noon", "pusd." )
                            ]
                    }
                , wide =
                    { am = "priekšpusdienā"
                    , pm = "pēcpusdienā"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "pēcpusdienā" )
                            , ( "evening1", "vakarā" )
                            , ( "midnight", "pusnaktī" )
                            , ( "morning1", "no rīta" )
                            , ( "night1", "naktī" )
                            , ( "noon", "pusdienlaikā" )
                            ]
                    }
                , narrow =
                    { am = "priekšp."
                    , pm = "pēcp."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "pēcpusd." )
                            , ( "evening1", "vakarā" )
                            , ( "midnight", "pusnaktī" )
                            , ( "morning1", "no rīta" )
                            , ( "night1", "naktī" )
                            , ( "noon", "pusd." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "y. 'gada' d. MMM"
                , long = "y. 'gada' d. MMMM"
                , full = "EEEE, y. 'gada' d. MMMM"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "febr."
                    , mar = "marts"
                    , apr = "apr."
                    , may = "maijs"
                    , jun = "jūn."
                    , jul = "jūl."
                    , aug = "aug."
                    , sep = "sept."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "janvāris"
                    , feb = "februāris"
                    , mar = "marts"
                    , apr = "aprīlis"
                    , may = "maijs"
                    , jun = "jūnijs"
                    , jul = "jūlijs"
                    , aug = "augusts"
                    , sep = "septembris"
                    , oct = "oktobris"
                    , nov = "novembris"
                    , dec = "decembris"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "febr."
                    , mar = "marts"
                    , apr = "apr."
                    , may = "maijs"
                    , jun = "jūn."
                    , jul = "jūl."
                    , aug = "aug."
                    , sep = "sept."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "janvāris"
                    , feb = "februāris"
                    , mar = "marts"
                    , apr = "aprīlis"
                    , may = "maijs"
                    , jun = "jūnijs"
                    , jul = "jūlijs"
                    , aug = "augusts"
                    , sep = "septembris"
                    , oct = "oktobris"
                    , nov = "novembris"
                    , dec = "decembris"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "svētd."
                    , mon = "pirmd."
                    , tue = "otrd."
                    , wed = "trešd."
                    , thu = "ceturtd."
                    , fri = "piektd."
                    , sat = "sestd."
                    }
                , wide =
                    { sun = "svētdiena"
                    , mon = "pirmdiena"
                    , tue = "otrdiena"
                    , wed = "trešdiena"
                    , thu = "ceturtdiena"
                    , fri = "piektdiena"
                    , sat = "sestdiena"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "P"
                    , tue = "O"
                    , wed = "T"
                    , thu = "C"
                    , fri = "P"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Svētd."
                    , mon = "Pirmd."
                    , tue = "Otrd."
                    , wed = "Trešd."
                    , thu = "Ceturtd."
                    , fri = "Piektd."
                    , sat = "Sestd."
                    }
                , wide =
                    { sun = "Svētdiena"
                    , mon = "Pirmdiena"
                    , tue = "Otrdiena"
                    , wed = "Trešdiena"
                    , thu = "Ceturtdiena"
                    , fri = "Piektdiena"
                    , sat = "Sestdiena"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "P"
                    , tue = "O"
                    , wed = "T"
                    , thu = "C"
                    , fri = "P"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "p.m.ē.", ad = "m.ē." }
                , wide = { bc = "pirms mūsu ēras", ad = "mūsu ērā" }
                , narrow = { bc = "p.m.ē.", ad = "m.ē." }
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
                , ( "EBhm", "E, h:mm B" )
                , ( "EBhms", "E, h:mm:ss B" )
                , ( "Ed", "E, d." )
                , ( "Ehm", "E, h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "G y. 'g'." )
                , ( "GyMd", "GGGGG dd-MM-y" )
                , ( "GyMMM", "G y. 'g'. MMM" )
                , ( "GyMMMd", "G y. 'g'. d. MMM" )
                , ( "GyMMMEd", "E, G y. 'g'. d. MMM" )
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
                , ( "Md", "dd.MM." )
                , ( "MEd", "E, dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-zero", "MMMM, W. 'nedēļa'" )
                , ( "MMMMW-count-one", "MMMM, W. 'nedēļa'" )
                , ( "MMMMW-count-other", "MMMM, W. 'nedēļa'" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y. 'g'." )
                , ( "yM", "MM.y." )
                , ( "yMd", "d.MM.y." )
                , ( "yMEd", "E, d.MM.y." )
                , ( "yMMM", "y. 'g'. MMM" )
                , ( "yMMMd", "y. 'g'. d. MMM" )
                , ( "yMMMEd", "E, y. 'g'. d. MMM" )
                , ( "yMMMM", "y. 'g'. MMMM" )
                , ( "yQQQ", "y. 'g'. QQQ" )
                , ( "yQQQQ", "y. 'g'. QQQQ" )
                , ( "yw-count-zero", "Y. 'g'. w. 'nedēļa'" )
                , ( "yw-count-one", "Y. 'g'. w. 'nedēļa'" )
                , ( "yw-count-other", "Y. 'g'. w. 'nedēļa'" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
