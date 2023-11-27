module Generated.Bs exposing (bs, bs_Latn)

{-|

@docs bs, bs_Latn

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
        [ ( "bs"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs : Internal.Locale.Locale
bs =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "bs"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "poslijepodne" )
                            , ( "evening1", "navečer" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "po noći" )
                            , ( "noon", "podne" )
                            ]
                    }
                , wide =
                    { am = "prijepodne"
                    , pm = "popodne"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "poslijepodne" )
                            , ( "evening1", "navečer" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "po noći" )
                            , ( "noon", "podne" )
                            ]
                    }
                , narrow =
                    { am = "prijepodne"
                    , pm = "popodne"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "poslijepodne" )
                            , ( "evening1", "navečer" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "po noći" )
                            , ( "noon", "podne" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d. M. y."
                , medium = "d. MMM y."
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
                    , aug = "aug"
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
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
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
                    , aug = "aug"
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
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
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
                    { sun = "N"
                    , mon = "P"
                    , tue = "U"
                    , wed = "S"
                    , thu = "Č"
                    , fri = "P"
                    , sat = "S"
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
                , narrow = { bc = "p.n.e.", ad = "n. e." }
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
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d." )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d." )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d/M/y. G" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "hh:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "hh:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a (v)" )
                , ( "Hmsv", "HH:mm:ss (v)" )
                , ( "hmv", "h:mm\u{202F}a (v)" )
                , ( "Hmv", "HH:mm (v)" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "d. M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'sedmica' 'mjesec' MMMM" )
                , ( "MMMMW-count-few", "W. 'sedmica' 'mjesec' MMMM" )
                , ( "MMMMW-count-other", "W. 'sedmica' 'mjesec' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "MM/y" )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "LLLL y." )
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

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs_Latn : Internal.Locale.Locale
bs_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "bs"
            , script = Just "Latn"
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "poslijepodne" )
                            , ( "evening1", "navečer" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "po noći" )
                            , ( "noon", "podne" )
                            ]
                    }
                , wide =
                    { am = "prijepodne"
                    , pm = "popodne"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "poslijepodne" )
                            , ( "evening1", "navečer" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "po noći" )
                            , ( "noon", "podne" )
                            ]
                    }
                , narrow =
                    { am = "prijepodne"
                    , pm = "popodne"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "poslijepodne" )
                            , ( "evening1", "navečer" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "po noći" )
                            , ( "noon", "podne" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d. M. y."
                , medium = "d. MMM y."
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
                    , aug = "aug"
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
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
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
                    , aug = "aug"
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
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
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
                    { sun = "N"
                    , mon = "P"
                    , tue = "U"
                    , wed = "S"
                    , thu = "Č"
                    , fri = "P"
                    , sat = "S"
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
                , narrow = { bc = "p.n.e.", ad = "n. e." }
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
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d." )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d." )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d/M/y. G" )
                , ( "GyMMM", "MMM y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "hh:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "hh:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a (v)" )
                , ( "Hmsv", "HH:mm:ss (v)" )
                , ( "hmv", "h:mm\u{202F}a (v)" )
                , ( "Hmv", "HH:mm (v)" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMdd", "d. M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'sedmica' 'mjesec' MMMM" )
                , ( "MMMMW-count-few", "W. 'sedmica' 'mjesec' MMMM" )
                , ( "MMMMW-count-other", "W. 'sedmica' 'mjesec' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "MM/y" )
                , ( "yMd", "d.M.y." )
                , ( "yMEd", "E, d.M.y." )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "LLLL y." )
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
