module Generated.Pl exposing (pl)

{-|

@docs pl

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
        [ ( "pl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pl : Internal.Locale.Locale
pl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pl"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po południu" )
                            , ( "evening1", "wieczorem" )
                            , ( "midnight", "o północy" )
                            , ( "morning1", "rano" )
                            , ( "morning2", "przed południem" )
                            , ( "night1", "w nocy" )
                            , ( "noon", "w południe" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po południu" )
                            , ( "evening1", "wieczorem" )
                            , ( "midnight", "o północy" )
                            , ( "morning1", "rano" )
                            , ( "morning2", "przed południem" )
                            , ( "night1", "w nocy" )
                            , ( "noon", "w południe" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "po poł." )
                            , ( "evening1", "wiecz." )
                            , ( "midnight", "o półn." )
                            , ( "morning1", "rano" )
                            , ( "morning2", "przed poł." )
                            , ( "night1", "w nocy" )
                            , ( "noon", "w poł." )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.MM.y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "sty"
                    , feb = "lut"
                    , mar = "mar"
                    , apr = "kwi"
                    , may = "maj"
                    , jun = "cze"
                    , jul = "lip"
                    , aug = "sie"
                    , sep = "wrz"
                    , oct = "paź"
                    , nov = "lis"
                    , dec = "gru"
                    }
                , wide =
                    { jan = "stycznia"
                    , feb = "lutego"
                    , mar = "marca"
                    , apr = "kwietnia"
                    , may = "maja"
                    , jun = "czerwca"
                    , jul = "lipca"
                    , aug = "sierpnia"
                    , sep = "września"
                    , oct = "października"
                    , nov = "listopada"
                    , dec = "grudnia"
                    }
                , narrow =
                    { jan = "s"
                    , feb = "l"
                    , mar = "m"
                    , apr = "k"
                    , may = "m"
                    , jun = "c"
                    , jul = "l"
                    , aug = "s"
                    , sep = "w"
                    , oct = "p"
                    , nov = "l"
                    , dec = "g"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "sty"
                    , feb = "lut"
                    , mar = "mar"
                    , apr = "kwi"
                    , may = "maj"
                    , jun = "cze"
                    , jul = "lip"
                    , aug = "sie"
                    , sep = "wrz"
                    , oct = "paź"
                    , nov = "lis"
                    , dec = "gru"
                    }
                , wide =
                    { jan = "styczeń"
                    , feb = "luty"
                    , mar = "marzec"
                    , apr = "kwiecień"
                    , may = "maj"
                    , jun = "czerwiec"
                    , jul = "lipiec"
                    , aug = "sierpień"
                    , sep = "wrzesień"
                    , oct = "październik"
                    , nov = "listopad"
                    , dec = "grudzień"
                    }
                , narrow =
                    { jan = "S"
                    , feb = "L"
                    , mar = "M"
                    , apr = "K"
                    , may = "M"
                    , jun = "C"
                    , jul = "L"
                    , aug = "S"
                    , sep = "W"
                    , oct = "P"
                    , nov = "L"
                    , dec = "G"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "niedz."
                    , mon = "pon."
                    , tue = "wt."
                    , wed = "śr."
                    , thu = "czw."
                    , fri = "pt."
                    , sat = "sob."
                    }
                , wide =
                    { sun = "niedziela"
                    , mon = "poniedziałek"
                    , tue = "wtorek"
                    , wed = "środa"
                    , thu = "czwartek"
                    , fri = "piątek"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "w"
                    , wed = "ś"
                    , thu = "c"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "niedz."
                    , mon = "pon."
                    , tue = "wt."
                    , wed = "śr."
                    , thu = "czw."
                    , fri = "pt."
                    , sat = "sob."
                    }
                , wide =
                    { sun = "niedziela"
                    , mon = "poniedziałek"
                    , tue = "wtorek"
                    , wed = "środa"
                    , thu = "czwartek"
                    , fri = "piątek"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "N"
                    , mon = "P"
                    , tue = "W"
                    , wed = "Ś"
                    , thu = "C"
                    , fri = "P"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "p.n.e.", ad = "n.e." }
                , wide = { bc = "przed naszą erą", ad = "naszej ery" }
                , narrow = { bc = "p.n.e.", ad = "n.e." }
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
                , ( "Ed", "E, d" )
                , ( "Ehm", "E, h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.MM.y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "LLLL y G" )
                , ( "GyMMMMd", "d MMMM y G" )
                , ( "GyMMMMEd", "E, d MMMM y G" )
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
                , ( "Md", "d.MM" )
                , ( "MEd", "E, d.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "LLLL, 'tydz'. W" )
                , ( "MMMMW-count-few", "LLLL, 'tydz'. W" )
                , ( "MMMMW-count-many", "LLLL, 'tydz'. W" )
                , ( "MMMMW-count-other", "LLLL, 'tydz'. W" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "d.MM.y" )
                , ( "yMEd", "E, d.MM.y" )
                , ( "yMMM", "LLL y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yMMMMd", "d MMMM y" )
                , ( "yMMMMEd", "E, d MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y, 'tydz'. w" )
                , ( "yw-count-few", "Y, 'tydz'. w" )
                , ( "yw-count-many", "Y, 'tydz'. w" )
                , ( "yw-count-other", "Y, 'tydz'. w" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
