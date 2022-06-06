module Generated.Pt exposing (pt, pt_AO, pt_CH, pt_CV, pt_GQ, pt_GW, pt_LU, pt_MO, pt_MZ, pt_PT, pt_ST, pt_TL)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "pt"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 19, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d 'de' MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt : Internal.Locale.Locale
pt =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d 'de' MMM 'de' y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "dom."
                    , mon = "seg."
                    , tue = "ter."
                    , wed = "qua."
                    , thu = "qui."
                    , fri = "sex."
                    , sat = "sáb."
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom."
                    , mon = "seg."
                    , tue = "ter."
                    , wed = "qua."
                    , thu = "qui."
                    , fri = "sex."
                    , sat = "sáb."
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "d/M" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d 'de' MMM" )
                , ( "MMMEd", "E, d 'de' MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MMM 'de' y" )
                , ( "yMMMd", "d 'de' MMM 'de' y" )
                , ( "yMMMEd", "E, d 'de' MMM 'de' y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "E, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_AO : Internal.Locale.Locale
pt_AO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "AO"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_CH : Internal.Locale.Locale
pt_CH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "CH"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_CV : Internal.Locale.Locale
pt_CV =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "CV"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_GQ : Internal.Locale.Locale
pt_GQ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "GQ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_GW : Internal.Locale.Locale
pt_GW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "GW"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_LU : Internal.Locale.Locale
pt_LU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "LU"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pt_MO : Internal.Locale.Locale
pt_MO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "MO"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_MZ : Internal.Locale.Locale
pt_MZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "MZ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_PT : Internal.Locale.Locale
pt_PT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "PT"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_ST : Internal.Locale.Locale
pt_ST =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "ST"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_TL : Internal.Locale.Locale
pt_TL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pt"
            , script = Nothing
            , territory = Just "TL"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , wide =
                    { am = "da manhã"
                    , pm = "da tarde"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "da tarde" )
                            , ( "evening1", "da noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "da manhã" )
                            , ( "night1", "da madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tarde" )
                            , ( "evening1", "noite" )
                            , ( "midnight", "meia-noite" )
                            , ( "morning1", "manhã" )
                            , ( "night1", "madrugada" )
                            , ( "noon", "meio-dia" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd/MM/y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    , feb = "fev."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "mai."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dez."
                    }
                , wide =
                    { jan = "janeiro"
                    , feb = "fevereiro"
                    , mar = "março"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "junho"
                    , jul = "julho"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "dezembro"
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
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "domingo"
                    , mon = "segunda"
                    , tue = "terça"
                    , wed = "quarta"
                    , thu = "quinta"
                    , fri = "sexta"
                    , sat = "sábado"
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "segunda-feira"
                    , tue = "terça-feira"
                    , wed = "quarta-feira"
                    , thu = "quinta-feira"
                    , fri = "sexta-feira"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "S"
                    , tue = "T"
                    , wed = "Q"
                    , thu = "Q"
                    , fri = "S"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "depois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
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
                , long = "{1} 'às' {0}"
                , full = "{1} 'às' {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM 'de' y G" )
                , ( "GyMMMd", "d 'de' MMM 'de' y G" )
                , ( "GyMMMEd", "E, d 'de' MMM 'de' y G" )
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
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d/MM" )
                , ( "MMMEd", "E, d/MM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "ccc, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MM/y" )
                , ( "yMMMd", "d/MM/y" )
                , ( "yMMMEd", "E, d/MM/y" )
                , ( "yMMMEEEEd", "EEEE, d/MM/y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yMMMMd", "d 'de' MMMM 'de' y" )
                , ( "yMMMMEd", "ccc, d 'de' MMMM 'de' y" )
                , ( "yQQQ", "QQQQ 'de' y" )
                , ( "yQQQQ", "QQQQ 'de' y" )
                , ( "yw-count-one", "w.'ª' 'semana' 'de' Y" )
                , ( "yw-count-other", "w.'ª' 'semana' 'de' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
