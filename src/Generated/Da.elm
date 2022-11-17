module Generated.Da exposing (da, da_GL)

{-|

@docs da, da_GL

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
        [ ( "da"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da : Internal.Locale.Locale
da =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "da"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "om eftermiddagen" )
                            , ( "evening1", "om aftenen" )
                            , ( "midnight", "midnat" )
                            , ( "morning1", "om morgenen" )
                            , ( "morning2", "om formiddagen" )
                            , ( "night1", "om natten" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "om eftermiddagen" )
                            , ( "evening1", "om aftenen" )
                            , ( "midnight", "midnat" )
                            , ( "morning1", "om morgenen" )
                            , ( "morning2", "om formiddagen" )
                            , ( "night1", "om natten" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "om eftermiddagen" )
                            , ( "evening1", "om aftenen" )
                            , ( "midnight", "midnat" )
                            , ( "morning1", "om morgenen" )
                            , ( "morning2", "om formiddagen" )
                            , ( "night1", "om natten" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d. MMM y"
                , long = "d. MMMM y"
                , full = "EEEE 'den' d. MMMM y"
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
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "marts"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
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
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "maj"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "marts"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
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
                    { sun = "søn."
                    , mon = "man."
                    , tue = "tir."
                    , wed = "ons."
                    , thu = "tor."
                    , fri = "fre."
                    , sat = "lør."
                    }
                , wide =
                    { sun = "søndag"
                    , mon = "mandag"
                    , tue = "tirsdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lørdag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "søn"
                    , mon = "man"
                    , tue = "tir"
                    , wed = "ons"
                    , thu = "tor"
                    , fri = "fre"
                    , sat = "lør"
                    }
                , wide =
                    { sun = "søndag"
                    , mon = "mandag"
                    , tue = "tirsdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lørdag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "f.Kr.", ad = "e.Kr." }
                , wide = { bc = "f.Kr.", ad = "e.Kr." }
                , narrow = { bc = "fKr", ad = "eKr" }
                }
            , timePatterns =
                { short = "HH.mm"
                , medium = "HH.mm.ss"
                , long = "HH.mm.ss z"
                , full = "HH.mm.ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} 'kl'. {0}"
                , full = "{1} 'kl'. {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h.mm B" )
                , ( "Bhms", "h.mm.ss B" )
                , ( "d", "d." )
                , ( "E", "ccc" )
                , ( "EBhm", "E h.mm B" )
                , ( "EBhms", "E h.mm.ss B" )
                , ( "Ed", "E 'den' d." )
                , ( "Ehm", "E h.mm a" )
                , ( "EHm", "E HH.mm" )
                , ( "Ehms", "E h.mm.ss a" )
                , ( "EHms", "E HH.mm.ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.M.y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E d. MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h.mm a" )
                , ( "Hm", "HH.mm" )
                , ( "hms", "h.mm.ss a" )
                , ( "Hms", "HH.mm.ss" )
                , ( "hmsv", "h.mm.ss a v" )
                , ( "Hmsv", "HH.mm.ss v" )
                , ( "hmv", "h.mm a v" )
                , ( "Hmv", "HH.mm v" )
                , ( "M", "M" )
                , ( "Md", "d.M" )
                , ( "MEd", "E d.M" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "MMM" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E d. MMMM" )
                , ( "MMMMW-count-one", "W. 'uge' 'i' MMMM" )
                , ( "MMMMW-count-other", "W. 'uge' 'i' MMMM" )
                , ( "ms", "mm.ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E d.M.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'uge' w 'i' Y" )
                , ( "yw-count-other", "'uge' w 'i' Y" )
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
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da_GL : Internal.Locale.Locale
da_GL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "da"
            , script = Nothing
            , territory = Just "GL"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "om eftermiddagen" )
                            , ( "evening1", "om aftenen" )
                            , ( "midnight", "midnat" )
                            , ( "morning1", "om morgenen" )
                            , ( "morning2", "om formiddagen" )
                            , ( "night1", "om natten" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "om eftermiddagen" )
                            , ( "evening1", "om aftenen" )
                            , ( "midnight", "midnat" )
                            , ( "morning1", "om morgenen" )
                            , ( "morning2", "om formiddagen" )
                            , ( "night1", "om natten" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "om eftermiddagen" )
                            , ( "evening1", "om aftenen" )
                            , ( "midnight", "midnat" )
                            , ( "morning1", "om morgenen" )
                            , ( "morning2", "om formiddagen" )
                            , ( "night1", "om natten" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d. MMM y"
                , long = "d. MMMM y"
                , full = "EEEE 'den' d. MMMM y"
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
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "marts"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
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
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "maj"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "marts"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
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
                    { sun = "søn."
                    , mon = "man."
                    , tue = "tir."
                    , wed = "ons."
                    , thu = "tor."
                    , fri = "fre."
                    , sat = "lør."
                    }
                , wide =
                    { sun = "søndag"
                    , mon = "mandag"
                    , tue = "tirsdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lørdag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "søn"
                    , mon = "man"
                    , tue = "tir"
                    , wed = "ons"
                    , thu = "tor"
                    , fri = "fre"
                    , sat = "lør"
                    }
                , wide =
                    { sun = "søndag"
                    , mon = "mandag"
                    , tue = "tirsdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lørdag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "f.Kr.", ad = "e.Kr." }
                , wide = { bc = "f.Kr.", ad = "e.Kr." }
                , narrow = { bc = "fKr", ad = "eKr" }
                }
            , timePatterns =
                { short = "HH.mm"
                , medium = "HH.mm.ss"
                , long = "HH.mm.ss z"
                , full = "HH.mm.ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} 'kl'. {0}"
                , full = "{1} 'kl'. {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h.mm B" )
                , ( "Bhms", "h.mm.ss B" )
                , ( "d", "d." )
                , ( "E", "ccc" )
                , ( "EBhm", "E h.mm B" )
                , ( "EBhms", "E h.mm.ss B" )
                , ( "Ed", "E 'den' d." )
                , ( "Ehm", "E h.mm a" )
                , ( "EHm", "E HH.mm" )
                , ( "Ehms", "E h.mm.ss a" )
                , ( "EHms", "E HH.mm.ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.M.y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E d. MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h.mm a" )
                , ( "Hm", "HH.mm" )
                , ( "hms", "h.mm.ss a" )
                , ( "Hms", "HH.mm.ss" )
                , ( "hmsv", "h.mm.ss a v" )
                , ( "Hmsv", "HH.mm.ss v" )
                , ( "hmv", "h.mm a v" )
                , ( "Hmv", "HH.mm v" )
                , ( "M", "M" )
                , ( "Md", "d.M" )
                , ( "MEd", "E d.M" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "MMM" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E d. MMMM" )
                , ( "MMMMW-count-one", "W. 'uge' 'i' MMMM" )
                , ( "MMMMW-count-other", "W. 'uge' 'i' MMMM" )
                , ( "ms", "mm.ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E d.M.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'uge' w 'i' Y" )
                , ( "yw-count-other", "'uge' w 'i' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
