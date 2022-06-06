module Generated.Alt.Nb exposing (nb, nb_SJ)

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
        [ ( "nb"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nb : Internal.Locale.Locale
nb =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "nb"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "etterm." )
                            , ( "evening1", "kveld" )
                            , ( "midnight", "midn." )
                            , ( "morning1", "morg." )
                            , ( "morning2", "form." )
                            , ( "night1", "natt" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på ettermiddagen" )
                            , ( "evening1", "på kvelden" )
                            , ( "midnight", "midnatt" )
                            , ( "morning1", "på morgenen" )
                            , ( "morning2", "på formiddagen" )
                            , ( "night1", "på natten" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "em." )
                            , ( "evening1", "kv." )
                            , ( "midnight", "mn." )
                            , ( "morning1", "mg." )
                            , ( "morning2", "fm." )
                            , ( "night1", "nt." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d. MMM y"
                , long = "d. MMMM y"
                , full = "EEEE d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "mai"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "des."
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mars"
                    , apr = "april"
                    , may = "mai"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "desember"
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
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mai"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "aug"
                    , sep = "sep"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "des"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mars"
                    , apr = "april"
                    , may = "mai"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "desember"
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
            , eraNames =
                { abbreviated = { bc = "f.Kr.", ad = "e.Kr." }
                , wide = { bc = "før Kristus", ad = "etter Kristus" }
                , narrow = { bc = "f.Kr.", ad = "e.Kr." }
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
                , long = "{1} 'kl'. {0}"
                , full = "{1} 'kl'. {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d." )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E 'kl'. HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E 'kl'. HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E d. MMM y G" )
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
                , ( "M", "L." )
                , ( "Md", "d.M." )
                , ( "MEd", "E d.M." )
                , ( "MMdd", "d.M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMW-count-one", "'den' W. 'uken' 'i' MMMM" )
                , ( "MMMMW-count-other", "'den' W. 'uken' 'i' MMMM" )
                , ( "ms", "mm:ss" )
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
                , ( "yw-count-one", "'uke' w 'i' Y" )
                , ( "yw-count-other", "'uke' w 'i' Y" )
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
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nb_SJ : Internal.Locale.Locale
nb_SJ =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "nb"
            , script = Nothing
            , territory = Just "SJ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "etterm." )
                            , ( "evening1", "kveld" )
                            , ( "midnight", "midn." )
                            , ( "morning1", "morg." )
                            , ( "morning2", "form." )
                            , ( "night1", "natt" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på ettermiddagen" )
                            , ( "evening1", "på kvelden" )
                            , ( "midnight", "midnatt" )
                            , ( "morning1", "på morgenen" )
                            , ( "morning2", "på formiddagen" )
                            , ( "night1", "på natten" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "em." )
                            , ( "evening1", "kv." )
                            , ( "midnight", "mn." )
                            , ( "morning1", "mg." )
                            , ( "morning2", "fm." )
                            , ( "night1", "nt." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d. MMM y"
                , long = "d. MMMM y"
                , full = "EEEE d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "mai"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "des."
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mars"
                    , apr = "april"
                    , may = "mai"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "desember"
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
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mai"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "aug"
                    , sep = "sep"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "des"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "mars"
                    , apr = "april"
                    , may = "mai"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "desember"
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
            , eraNames =
                { abbreviated = { bc = "f.Kr.", ad = "e.Kr." }
                , wide = { bc = "før Kristus", ad = "etter Kristus" }
                , narrow = { bc = "f.Kr.", ad = "e.Kr." }
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
                , long = "{1} 'kl'. {0}"
                , full = "{1} 'kl'. {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d." )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E 'kl'. HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E 'kl'. HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E d. MMM y G" )
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
                , ( "M", "L." )
                , ( "Md", "d.M." )
                , ( "MEd", "E d.M." )
                , ( "MMdd", "d.M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMW-count-one", "'den' W. 'uken' 'i' MMMM" )
                , ( "MMMMW-count-other", "'den' W. 'uken' 'i' MMMM" )
                , ( "ms", "mm:ss" )
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
                , ( "yw-count-one", "'uke' w 'i' Y" )
                , ( "yw-count-other", "'uke' w 'i' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
