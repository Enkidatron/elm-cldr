module Generated.Es exposing (es, es_419, es_AR, es_BO, es_BR, es_BZ, es_CL, es_CO, es_CR, es_CU, es_DO, es_EA, es_EC, es_GQ, es_GT, es_HN, es_IC, es_MX, es_NI, es_PA, es_PE, es_PH, es_PR, es_PY, es_SV, es_US, es_UY, es_VE)

{-|

@docs es, es_419, es_AR, es_BO, es_BR, es_BZ, es_CL, es_CO, es_CR, es_CU, es_DO, es_EA, es_EC, es_GQ, es_GT, es_HN, es_IC, es_MX, es_NI, es_PA, es_PE, es_PH, es_PR, es_PY, es_SV, es_US, es_UY, es_VE

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
        [ ( "es"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        , ( "es_co"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es : Internal.Locale.Locale
es =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, H:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "H:mm:ss (vvvv)" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "EEE, d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "EEE, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_419 : Internal.Locale.Locale
es_419 =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "419"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_AR : Internal.Locale.Locale
es_AR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "AR"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "tarde" )
                            , ( "morning1", "madrugada" )
                            , ( "morning2", "mañana" )
                            , ( "night1", "noche" )
                            , ( "noon", "mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "tarde" )
                            , ( "morning1", "madrugada" )
                            , ( "morning2", "mañana" )
                            , ( "night1", "noche" )
                            , ( "noon", "mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "hh:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss (vvvv)" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E d-M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d 'de' MMM 'de' y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_BO : Internal.Locale.Locale
es_BO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "BO"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM 'de' y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_BR : Internal.Locale.Locale
es_BR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "BR"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_BZ : Internal.Locale.Locale
es_BZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "BZ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : dd-MM-yy
  - Medium : dd-MM-y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_CL : Internal.Locale.Locale
es_CL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "CL"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd-MM-yy"
                , medium = "dd-MM-y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "may."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dic."
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd-MM" )
                , ( "MEd", "E, dd-MM" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM-y" )
                , ( "yMd", "dd-MM-y" )
                , ( "yMEd", "E dd-MM-y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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
  - Medium : d/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_CO : Internal.Locale.Locale
es_CO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "CO"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "m." )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/MM/yy"
                , medium = "d/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "may."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dic."
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM 'de' y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d 'de' MMM" )
                , ( "MMMdd", "d 'de' MMM" )
                , ( "MMMEd", "E, d 'de' MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "EEE, d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM 'de' y" )
                , ( "yMMMd", "d 'de' MMM 'de' y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_CR : Internal.Locale.Locale
es_CR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "CR"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_CU : Internal.Locale.Locale
es_CU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "CU"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_DO : Internal.Locale.Locale
es_DO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "DO"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "tarde" )
                            , ( "morning1", "día" )
                            , ( "morning2", "mañana" )
                            , ( "night1", "noche" )
                            , ( "noon", "mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM 'de' y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es_EA : Internal.Locale.Locale
es_EA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "EA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, H:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "H:mm:ss (vvvv)" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "EEE, d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "EEE, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_EC : Internal.Locale.Locale
es_EC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "EC"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es_GQ : Internal.Locale.Locale
es_GQ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "GQ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, H:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "H:mm:ss (vvvv)" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "EEE, d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "EEE, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_GT : Internal.Locale.Locale
es_GT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "GT"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/MM/yy"
                , medium = "d/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : dd 'de' MMMM 'de' y
  - Full : EEEE dd 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_HN : Internal.Locale.Locale
es_HN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "HN"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "dd 'de' MMMM 'de' y"
                , full = "EEEE dd 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es_IC : Internal.Locale.Locale
es_IC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "IC"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, H:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "H:mm:ss (vvvv)" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "EEE, d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "EEE, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_MX : Internal.Locale.Locale
es_MX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "MX"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss (vvvv)" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E d 'de' MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "EEE, d 'de' MMM 'de' y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_NI : Internal.Locale.Locale
es_NI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "NI"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : MM/dd/yy
  - Medium : MM/dd/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PA : Internal.Locale.Locale
es_PA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "PA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "MM/dd/yy"
                , medium = "MM/dd/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "MM/dd" )
                , ( "MEd", "E, MM/dd" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "MM/dd/y" )
                , ( "yMEd", "E MM/dd/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_PE : Internal.Locale.Locale
es_PE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "PE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/MM/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "may."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dic."
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "setiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "Ene."
                    , feb = "Feb."
                    , mar = "Mar."
                    , apr = "Abr."
                    , may = "May."
                    , jun = "Jun."
                    , jul = "Jul."
                    , aug = "Ago."
                    , sep = "Set."
                    , oct = "Oct."
                    , nov = "Nov."
                    , dec = "Dic."
                    }
                , wide =
                    { jan = "Enero"
                    , feb = "Febrero"
                    , mar = "Marzo"
                    , apr = "Abril"
                    , may = "Mayo"
                    , jun = "Junio"
                    , jul = "Julio"
                    , aug = "Agosto"
                    , sep = "Setiembre"
                    , oct = "Octubre"
                    , nov = "Noviembre"
                    , dec = "Diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PH : Internal.Locale.Locale
es_PH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "PH"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "X"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, H:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "H:mm:ss (vvvv)" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "EEE, d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "EEE, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : MM/dd/yy
  - Medium : MM/dd/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PR : Internal.Locale.Locale
es_PR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "PR"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "MM/dd/yy"
                , medium = "MM/dd/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "MM/dd" )
                , ( "MEd", "E, MM/dd" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "MM/dd/y" )
                , ( "yMEd", "E MM/dd/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_PY : Internal.Locale.Locale
es_PY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "PY"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "may."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dic."
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "may."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dic."
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_SV : Internal.Locale.Locale
es_SV =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "SV"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/y
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_US : Internal.Locale.Locale
es_US =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "US"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/y"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "abr"
                    , may = "may"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "ago"
                    , sep = "sept"
                    , oct = "oct"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss (vvvv)" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d 'de' MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "EEE, d 'de' MMM 'de' y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_UY : Internal.Locale.Locale
es_UY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "UY"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "may."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dic."
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "setiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "Ene."
                    , feb = "Feb."
                    , mar = "Mar."
                    , apr = "Abr."
                    , may = "May."
                    , jun = "Jun."
                    , jul = "Jul."
                    , aug = "Ago."
                    , sep = "Set."
                    , oct = "Oct."
                    , nov = "Nov."
                    , dec = "Dic."
                    }
                , wide =
                    { jan = "Enero"
                    , feb = "Febrero"
                    , mar = "Marzo"
                    , apr = "Abril"
                    , may = "Mayo"
                    , jun = "Junio"
                    , jul = "Julio"
                    , aug = "Agosto"
                    , sep = "Setiembre"
                    , oct = "Octubre"
                    , nov = "Noviembre"
                    , dec = "Diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_VE : Internal.Locale.Locale
es_VE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "es"
            , script = Nothing
            , territory = Just "VE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "evening1", "de la tarde" )
                            , ( "morning1", "de la madrugada" )
                            , ( "morning2", "de la mañana" )
                            , ( "night1", "de la noche" )
                            , ( "noon", "del mediodía" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ene."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "may."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dic."
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { jan = "ene."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "may."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dic."
                    }
                , wide =
                    { jan = "enero"
                    , feb = "febrero"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "mayo"
                    , jun = "junio"
                    , jul = "julio"
                    , aug = "agosto"
                    , sep = "septiembre"
                    , oct = "octubre"
                    , nov = "noviembre"
                    , dec = "diciembre"
                    }
                , narrow =
                    { jan = "E"
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
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "l"
                    , tue = "m"
                    , wed = "m"
                    , thu = "j"
                    , fri = "v"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mié"
                    , thu = "jue"
                    , fri = "vie"
                    , sat = "sáb"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "lunes"
                    , tue = "martes"
                    , wed = "miércoles"
                    , thu = "jueves"
                    , fri = "viernes"
                    , sat = "sábado"
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
                { abbreviated = { bc = "a. C.", ad = "d. C." }
                , wide = { bc = "antes de Cristo", ad = "después de Cristo" }
                , narrow = { bc = "a. C.", ad = "d. C." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1} {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "GyMMMM", "MMMM 'de' y G" )
                , ( "GyMMMMd", "d 'de' MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d 'de' MMMM 'de' y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmsvvvv", "h:mm:ss a (vvvv)" )
                , ( "Hmsvvvv", "HH:mm:ss vvvv" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMd", "d/M" )
                , ( "MMdd", "d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMdd", "dd-MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "'semana' W 'de' MMMM" )
                , ( "MMMMW-count-other", "'semana' W 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMM", "M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "EEE, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "'semana' w 'de' Y" )
                , ( "yw-count-other", "'semana' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
