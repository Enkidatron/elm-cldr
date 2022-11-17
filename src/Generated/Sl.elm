module Generated.Sl exposing (sl)

{-|

@docs sl

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
        [ ( "sl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d. MM. yy
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sl : Internal.Locale.Locale
sl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sl"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "dop."
                    , pm = "pop."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "pop." )
                            , ( "evening1", "zveč." )
                            , ( "midnight", "opoln." )
                            , ( "morning1", "zjut." )
                            , ( "morning2", "dop." )
                            , ( "night1", "ponoči" )
                            , ( "noon", "opold." )
                            ]
                    }
                , wide =
                    { am = "dop."
                    , pm = "pop."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "popoldan" )
                            , ( "evening1", "zvečer" )
                            , ( "midnight", "opolnoči" )
                            , ( "morning1", "zjutraj" )
                            , ( "morning2", "dopoldan" )
                            , ( "night1", "ponoči" )
                            , ( "noon", "opoldne" )
                            ]
                    }
                , narrow =
                    { am = "d"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "p" )
                            , ( "evening1", "zv" )
                            , ( "midnight", "24.00" )
                            , ( "morning1", "zj" )
                            , ( "morning2", "d" )
                            , ( "night1", "po" )
                            , ( "noon", "12.00" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d. MM. yy"
                , medium = "d. MMM y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "maj"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "avg."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "marec"
                    , apr = "april"
                    , may = "maj"
                    , jun = "junij"
                    , jul = "julij"
                    , aug = "avgust"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
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
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "maj"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "avg."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "marec"
                    , apr = "april"
                    , may = "maj"
                    , jun = "junij"
                    , jul = "julij"
                    , aug = "avgust"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
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
                    { sun = "ned."
                    , mon = "pon."
                    , tue = "tor."
                    , wed = "sre."
                    , thu = "čet."
                    , fri = "pet."
                    , sat = "sob."
                    }
                , wide =
                    { sun = "nedelja"
                    , mon = "ponedeljek"
                    , tue = "torek"
                    , wed = "sreda"
                    , thu = "četrtek"
                    , fri = "petek"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "t"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ned."
                    , mon = "pon."
                    , tue = "tor."
                    , wed = "sre."
                    , thu = "čet."
                    , fri = "pet."
                    , sat = "sob."
                    }
                , wide =
                    { sun = "nedelja"
                    , mon = "ponedeljek"
                    , tue = "torek"
                    , wed = "sreda"
                    , thu = "četrtek"
                    , fri = "petek"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "t"
                    , wed = "s"
                    , thu = "č"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "pr. Kr.", ad = "po Kr." }
                , wide = { bc = "pred Kristusom", ad = "po Kristusu" }
                , narrow = { bc = "pr. Kr.", ad = "po Kr." }
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
                , ( "d", "d." )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d." )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyM", "MMM y G" )
                , ( "GyMd", "d. M. y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d. M." )
                , ( "MEd", "E, d. M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMW-count-one", "MMMM: W. 'teden'" )
                , ( "MMMMW-count-two", "MMMM: W. 'teden'" )
                , ( "MMMMW-count-few", "MMMM: W. 'teden'" )
                , ( "MMMMW-count-other", "MMMM: W. 'teden'" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d. M. y" )
                , ( "yMEd", "E, d. M. y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "w. 'teden' 'leta' Y" )
                , ( "yw-count-two", "w. 'teden' 'leta' Y" )
                , ( "yw-count-few", "w. 'teden' 'leta' Y" )
                , ( "yw-count-other", "w. 'teden' 'leta' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
