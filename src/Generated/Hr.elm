module Generated.Hr exposing (hr, hr_BA)

{-|

@docs hr, hr_BA

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
        [ ( "hr"
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

  - Short : dd. MM. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr : Internal.Locale.Locale
hr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "hr"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "popodne" )
                            , ( "evening1", "navečer" )
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
                            [ ( "afternoon1", "poslije podne" )
                            , ( "evening1", "navečer" )
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
                            [ ( "afternoon1", "popodne" )
                            , ( "evening1", "navečer" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd. MM. y."
                , medium = "d. MMM y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "sij"
                    , feb = "velj"
                    , mar = "ožu"
                    , apr = "tra"
                    , may = "svi"
                    , jun = "lip"
                    , jul = "srp"
                    , aug = "kol"
                    , sep = "ruj"
                    , oct = "lis"
                    , nov = "stu"
                    , dec = "pro"
                    }
                , wide =
                    { jan = "siječnja"
                    , feb = "veljače"
                    , mar = "ožujka"
                    , apr = "travnja"
                    , may = "svibnja"
                    , jun = "lipnja"
                    , jul = "srpnja"
                    , aug = "kolovoza"
                    , sep = "rujna"
                    , oct = "listopada"
                    , nov = "studenoga"
                    , dec = "prosinca"
                    }
                , narrow =
                    { jan = "1."
                    , feb = "2."
                    , mar = "3."
                    , apr = "4."
                    , may = "5."
                    , jun = "6."
                    , jul = "7."
                    , aug = "8."
                    , sep = "9."
                    , oct = "10."
                    , nov = "11."
                    , dec = "12."
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "sij"
                    , feb = "velj"
                    , mar = "ožu"
                    , apr = "tra"
                    , may = "svi"
                    , jun = "lip"
                    , jul = "srp"
                    , aug = "kol"
                    , sep = "ruj"
                    , oct = "lis"
                    , nov = "stu"
                    , dec = "pro"
                    }
                , wide =
                    { jan = "siječanj"
                    , feb = "veljača"
                    , mar = "ožujak"
                    , apr = "travanj"
                    , may = "svibanj"
                    , jun = "lipanj"
                    , jul = "srpanj"
                    , aug = "kolovoz"
                    , sep = "rujan"
                    , oct = "listopad"
                    , nov = "studeni"
                    , dec = "prosinac"
                    }
                , narrow =
                    { jan = "1."
                    , feb = "2."
                    , mar = "3."
                    , apr = "4."
                    , may = "5."
                    , jun = "6."
                    , jul = "7."
                    , aug = "8."
                    , sep = "9."
                    , oct = "10."
                    , nov = "11."
                    , dec = "12."
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
                { abbreviated = { bc = "pr. Kr.", ad = "po. Kr." }
                , wide = { bc = "prije Krista", ad = "poslije Krista" }
                , narrow = { bc = "pr.n.e.", ad = "AD" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} 'u' {0}"
                , full = "{1} 'u' {0}"
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
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d. M. y. GGGGG" )
                , ( "GyMMM", "LLL y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "hh:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "hh:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L." )
                , ( "Md", "dd. MM." )
                , ( "MEd", "E, dd. MM." )
                , ( "MMdd", "dd. MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'tjedan' MMMM" )
                , ( "MMMMW-count-few", "W. 'tjedan' MMMM" )
                , ( "MMMMW-count-other", "W. 'tjedan' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "MM. y." )
                , ( "yMd", "dd. MM. y." )
                , ( "yMEd", "E, dd. MM. y." )
                , ( "yMM", "MM. y." )
                , ( "yMMM", "LLL y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "LLLL y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'tjedan' 'u' Y." )
                , ( "yw-count-few", "w. 'tjedan' 'u' Y." )
                , ( "yw-count-other", "w. 'tjedan' 'u' Y." )
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

  - Short : d. M. yy.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr_BA : Internal.Locale.Locale
hr_BA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "hr"
            , script = Nothing
            , territory = Just "BA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "popodne" )
                            , ( "evening1", "navečer" )
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
                            [ ( "afternoon1", "poslije podne" )
                            , ( "evening1", "navečer" )
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
                            [ ( "afternoon1", "popodne" )
                            , ( "evening1", "navečer" )
                            , ( "midnight", "ponoć" )
                            , ( "morning1", "ujutro" )
                            , ( "night1", "noću" )
                            , ( "noon", "podne" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d. M. yy."
                , medium = "d. MMM y."
                , long = "d. MMMM y."
                , full = "EEEE, d. MMMM y."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "sij"
                    , feb = "velj"
                    , mar = "ožu"
                    , apr = "tra"
                    , may = "svi"
                    , jun = "lip"
                    , jul = "srp"
                    , aug = "kol"
                    , sep = "ruj"
                    , oct = "lis"
                    , nov = "stu"
                    , dec = "pro"
                    }
                , wide =
                    { jan = "siječnja"
                    , feb = "veljače"
                    , mar = "ožujka"
                    , apr = "travnja"
                    , may = "svibnja"
                    , jun = "lipnja"
                    , jul = "srpnja"
                    , aug = "kolovoza"
                    , sep = "rujna"
                    , oct = "listopada"
                    , nov = "studenoga"
                    , dec = "prosinca"
                    }
                , narrow =
                    { jan = "1."
                    , feb = "2."
                    , mar = "3."
                    , apr = "4."
                    , may = "5."
                    , jun = "6."
                    , jul = "7."
                    , aug = "8."
                    , sep = "9."
                    , oct = "10."
                    , nov = "11."
                    , dec = "12."
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "sij"
                    , feb = "velj"
                    , mar = "ožu"
                    , apr = "tra"
                    , may = "svi"
                    , jun = "lip"
                    , jul = "srp"
                    , aug = "kol"
                    , sep = "ruj"
                    , oct = "lis"
                    , nov = "stu"
                    , dec = "pro"
                    }
                , wide =
                    { jan = "siječanj"
                    , feb = "veljača"
                    , mar = "ožujak"
                    , apr = "travanj"
                    , may = "svibanj"
                    , jun = "lipanj"
                    , jul = "srpanj"
                    , aug = "kolovoz"
                    , sep = "rujan"
                    , oct = "listopad"
                    , nov = "studeni"
                    , dec = "prosinac"
                    }
                , narrow =
                    { jan = "1."
                    , feb = "2."
                    , mar = "3."
                    , apr = "4."
                    , may = "5."
                    , jun = "6."
                    , jul = "7."
                    , aug = "8."
                    , sep = "9."
                    , oct = "10."
                    , nov = "11."
                    , dec = "12."
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
                    { sun = "N"
                    , mon = "P"
                    , tue = "U"
                    , wed = "S"
                    , thu = "Č"
                    , fri = "P"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "pr. Kr.", ad = "po. Kr." }
                , wide = { bc = "prije Krista", ad = "poslije Krista" }
                , narrow = { bc = "pr.n.e.", ad = "AD" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} 'u' {0}"
                , full = "{1} 'u' {0}"
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
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y. G" )
                , ( "GyMd", "d. M. y. GGGGG" )
                , ( "GyMMM", "LLL y. G" )
                , ( "GyMMMd", "d. MMM y. G" )
                , ( "GyMMMEd", "E, d. MMM y. G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "hh:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "hh:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L." )
                , ( "Md", "dd. MM." )
                , ( "MEd", "E, dd. MM." )
                , ( "MMdd", "dd. MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "W. 'tjedan' MMMM" )
                , ( "MMMMW-count-few", "W. 'tjedan' MMMM" )
                , ( "MMMMW-count-other", "W. 'tjedan' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "MM. y." )
                , ( "yMd", "dd. MM. y." )
                , ( "yMEd", "E, dd. MM. y." )
                , ( "yMM", "MM. y." )
                , ( "yMMM", "LLL y." )
                , ( "yMMMd", "d. MMM y." )
                , ( "yMMMEd", "E, d. MMM y." )
                , ( "yMMMM", "LLLL y." )
                , ( "yQQQ", "QQQ y." )
                , ( "yQQQQ", "QQQQ y." )
                , ( "yw-count-one", "w. 'tjedan' 'u' Y." )
                , ( "yw-count-few", "w. 'tjedan' 'u' Y." )
                , ( "yw-count-other", "w. 'tjedan' 'u' Y." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
