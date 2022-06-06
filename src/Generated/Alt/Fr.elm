module Generated.Alt.Fr exposing (fr, fr_BE, fr_BF, fr_BI, fr_BJ, fr_BL, fr_CA, fr_CD, fr_CF, fr_CG, fr_CH, fr_CI, fr_CM, fr_DJ, fr_DZ, fr_GA, fr_GF, fr_GN, fr_GP, fr_GQ, fr_HT, fr_KM, fr_LU, fr_MA, fr_MC, fr_MF, fr_MG, fr_ML, fr_MQ, fr_MR, fr_MU, fr_NC, fr_NE, fr_PF, fr_PM, fr_RE, fr_RW, fr_SC, fr_SN, fr_SY, fr_TD, fr_TG, fr_TN, fr_VU, fr_WF, fr_YT)

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
        [ ( "fr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr : Internal.Locale.Locale
fr =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : H 'h' mm 'min' ss 's' zzzz

-}
fr_BE : Internal.Locale.Locale
fr_BE =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "BE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/MM/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "H 'h' mm 'min' ss 's' zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_BF : Internal.Locale.Locale
fr_BF =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "BF"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_BI : Internal.Locale.Locale
fr_BI =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "BI"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_BJ : Internal.Locale.Locale
fr_BJ =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "BJ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_BL : Internal.Locale.Locale
fr_BL =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "BL"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH 'h' mm
  - Medium : HH 'h' mm 'min' ss 's'
  - Long : HH 'h' mm 'min' ss 's' z
  - Full : HH 'h' mm 'min' ss 's' zzzz

-}
fr_CA : Internal.Locale.Locale
fr_CA =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "CA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du mat." )
                            , ( "night1", "du mat." )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "après-midi" )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "mat." )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juill."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juill."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH 'h' mm"
                , medium = "HH 'h' mm 'min' ss 's'"
                , long = "HH 'h' mm 'min' ss 's' z"
                , full = "HH 'h' mm 'min' ss 's' zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h 'h' B" )
                , ( "Bhm", "h 'h' mm B" )
                , ( "Bhms", "h 'h' mm 'min' ss 's' B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h 'h' mm B" )
                , ( "EBhms", "E h 'h' mm 'min' ss 's' B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h 'h' mm a" )
                , ( "EHm", "E HH 'h' mm" )
                , ( "Ehms", "E h 'h' mm 'min' ss 's' a" )
                , ( "EHms", "E HH 'h' mm 'min' ss 's'" )
                , ( "Gy", "y G" )
                , ( "GyMd", "y-MM-dd GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h 'h' a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h 'h' mm a" )
                , ( "Hm", "HH 'h' mm" )
                , ( "hms", "h 'h' mm 'min' ss 's' a" )
                , ( "Hms", "HH 'h' mm 'min' ss 's'" )
                , ( "hmsv", "h 'h' mm 'min' ss 's' a v" )
                , ( "Hmsv", "HH 'h' mm 'min' ss 's' v" )
                , ( "hmv", "h 'h' mm a v" )
                , ( "Hmv", "HH 'h' mm v" )
                , ( "M", "L" )
                , ( "Md", "M-d" )
                , ( "MEd", "E M-d" )
                , ( "MMd", "MM-d" )
                , ( "MMdd", "MM-dd" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm 'min' ss 's'" )
                , ( "y", "y" )
                , ( "yM", "y-MM" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "E y-MM-dd" )
                , ( "yMM", "y-MM" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CD : Internal.Locale.Locale
fr_CD =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "CD"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "min." )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CF : Internal.Locale.Locale
fr_CF =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "CF"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CG : Internal.Locale.Locale
fr_CG =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "CG"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH.mm:ss 'h' zzzz

-}
fr_CH : Internal.Locale.Locale
fr_CH =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "CH"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’ap.m." )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "min." )
                            , ( "morning1", "du mat." )
                            , ( "night1", "du mat." )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’ap.m." )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "min." )
                            , ( "morning1", "du mat." )
                            , ( "night1", "du mat." )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH.mm:ss 'h' zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd.MM." )
                , ( "MEd", "E, dd.MM." )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "E, dd.MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CI : Internal.Locale.Locale
fr_CI =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "CI"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CM : Internal.Locale.Locale
fr_CM =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "CM"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "mat."
                    , pm = "soir"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "matin"
                    , pm = "soir"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "mat."
                    , pm = "soir"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_DJ : Internal.Locale.Locale
fr_DJ =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "DJ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_DZ : Internal.Locale.Locale
fr_DZ =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "DZ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GA : Internal.Locale.Locale
fr_GA =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "GA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GF : Internal.Locale.Locale
fr_GF =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "GF"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GN : Internal.Locale.Locale
fr_GN =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "GN"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GP : Internal.Locale.Locale
fr_GP =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "GP"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GQ : Internal.Locale.Locale
fr_GQ =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "GQ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_HT : Internal.Locale.Locale
fr_HT =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "HT"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "de la nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_KM : Internal.Locale.Locale
fr_KM =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "KM"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_LU : Internal.Locale.Locale
fr_LU =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "LU"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MA : Internal.Locale.Locale
fr_MA =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "MA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fév."
                    , mar = "mar."
                    , apr = "avr."
                    , may = "mai"
                    , jun = "jui."
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "fév."
                    , mar = "mar."
                    , apr = "avr."
                    , may = "mai"
                    , jun = "jui."
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MC : Internal.Locale.Locale
fr_MC =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "MC"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MF : Internal.Locale.Locale
fr_MF =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "MF"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MG : Internal.Locale.Locale
fr_MG =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "MG"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_ML : Internal.Locale.Locale
fr_ML =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "ML"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
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
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MQ : Internal.Locale.Locale
fr_MQ =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "MQ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_MR : Internal.Locale.Locale
fr_MR =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "MR"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MU : Internal.Locale.Locale
fr_MU =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "MU"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_NC : Internal.Locale.Locale
fr_NC =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "NC"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_NE : Internal.Locale.Locale
fr_NE =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "NE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_PF : Internal.Locale.Locale
fr_PF =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "PF"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_PM : Internal.Locale.Locale
fr_PM =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "PM"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_RE : Internal.Locale.Locale
fr_RE =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "RE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "min." )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_RW : Internal.Locale.Locale
fr_RW =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "RW"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_SC : Internal.Locale.Locale
fr_SC =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "SC"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_SN : Internal.Locale.Locale
fr_SN =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "SN"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "min." )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "min." )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_SY : Internal.Locale.Locale
fr_SY =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "SY"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_TD : Internal.Locale.Locale
fr_TD =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "TD"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_TG : Internal.Locale.Locale
fr_TG =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "TG"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_TN : Internal.Locale.Locale
fr_TN =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "TN"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_VU : Internal.Locale.Locale
fr_VU =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "VU"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_WF : Internal.Locale.Locale
fr_WF =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "WF"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_YT : Internal.Locale.Locale
fr_YT =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fr"
            , script = Nothing
            , territory = Just "YT"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "de l’après-midi" )
                            , ( "evening1", "du soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "du matin" )
                            , ( "night1", "du matin" )
                            , ( "noon", "midi" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ap.m." )
                            , ( "evening1", "soir" )
                            , ( "midnight", "minuit" )
                            , ( "morning1", "mat." )
                            , ( "night1", "nuit" )
                            , ( "noon", "midi" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "janv."
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    , feb = "févr."
                    , mar = "mars"
                    , apr = "avr."
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juil."
                    , aug = "août"
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "déc."
                    }
                , wide =
                    { jan = "janvier"
                    , feb = "février"
                    , mar = "mars"
                    , apr = "avril"
                    , may = "mai"
                    , jun = "juin"
                    , jul = "juillet"
                    , aug = "août"
                    , sep = "septembre"
                    , oct = "octobre"
                    , nov = "novembre"
                    , dec = "décembre"
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
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dim."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mer."
                    , thu = "jeu."
                    , fri = "ven."
                    , sat = "sam."
                    }
                , wide =
                    { sun = "dimanche"
                    , mon = "lundi"
                    , tue = "mardi"
                    , wed = "mercredi"
                    , thu = "jeudi"
                    , fri = "vendredi"
                    , sat = "samedi"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "av. J.-C.", ad = "ap. J.-C." }
                , wide =
                    { bc = "avant Jésus-Christ", ad = "après Jésus-Christ" }
                , narrow = { bc = "av. J.-C.", ad = "ap. J.-C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'à' {0}"
                , full = "{1} 'à' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "E" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH 'h'" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'semaine' W (MMMM)" )
                , ( "MMMMW-count-other", "'semaine' W (MMMM)" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'semaine' w 'de' Y" )
                , ( "yw-count-other", "'semaine' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
