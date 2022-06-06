module Generated.Gl exposing (gl)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "gl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d 'de' MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
gl : Internal.Locale.Locale
gl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "gl"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "do mediodía" )
                            , ( "evening1", "da tarde" )
                            , ( "midnight", "da noite" )
                            , ( "morning1", "da madrugada" )
                            , ( "morning2", "da mañá" )
                            , ( "night1", "da noite" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "do mediodía" )
                            , ( "evening1", "da tarde" )
                            , ( "midnight", "da noite" )
                            , ( "morning1", "da madrugada" )
                            , ( "morning2", "da mañá" )
                            , ( "night1", "da noite" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "do mediodía" )
                            , ( "evening1", "da tarde" )
                            , ( "midnight", "da noite" )
                            , ( "morning1", "da madrugada" )
                            , ( "morning2", "da mañá" )
                            , ( "night1", "da noite" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "d 'de' MMM 'de' y"
                , long = "d 'de' MMMM 'de' y"
                , full = "EEEE, d 'de' MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "xan."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "abr."
                    , may = "maio"
                    , jun = "xuño"
                    , jul = "xul."
                    , aug = "ago."
                    , sep = "set."
                    , oct = "out."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "xaneiro"
                    , feb = "febreiro"
                    , mar = "marzo"
                    , apr = "abril"
                    , may = "maio"
                    , jun = "xuño"
                    , jul = "xullo"
                    , aug = "agosto"
                    , sep = "setembro"
                    , oct = "outubro"
                    , nov = "novembro"
                    , dec = "decembro"
                    }
                , narrow =
                    { jan = "x."
                    , feb = "f."
                    , mar = "m."
                    , apr = "a."
                    , may = "m."
                    , jun = "x."
                    , jul = "x."
                    , aug = "a."
                    , sep = "s."
                    , oct = "o."
                    , nov = "n."
                    , dec = "d."
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Xan."
                    , feb = "Feb."
                    , mar = "Mar."
                    , apr = "Abr."
                    , may = "Maio"
                    , jun = "Xuño"
                    , jul = "Xul."
                    , aug = "Ago."
                    , sep = "Set."
                    , oct = "Out."
                    , nov = "Nov."
                    , dec = "Dec."
                    }
                , wide =
                    { jan = "Xaneiro"
                    , feb = "Febreiro"
                    , mar = "Marzo"
                    , apr = "Abril"
                    , may = "Maio"
                    , jun = "Xuño"
                    , jul = "Xullo"
                    , aug = "Agosto"
                    , sep = "Setembro"
                    , oct = "Outubro"
                    , nov = "Novembro"
                    , dec = "Decembro"
                    }
                , narrow =
                    { jan = "X"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "X"
                    , jul = "X"
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
                    , mon = "luns"
                    , tue = "mar."
                    , wed = "mér."
                    , thu = "xov."
                    , fri = "ven."
                    , sat = "sáb."
                    }
                , wide =
                    { sun = "domingo"
                    , mon = "luns"
                    , tue = "martes"
                    , wed = "mércores"
                    , thu = "xoves"
                    , fri = "venres"
                    , sat = "sábado"
                    }
                , narrow =
                    { sun = "d."
                    , mon = "l."
                    , tue = "m."
                    , wed = "m."
                    , thu = "x."
                    , fri = "v."
                    , sat = "s."
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Dom."
                    , mon = "Luns"
                    , tue = "Mar."
                    , wed = "Mér."
                    , thu = "Xov."
                    , fri = "Ven."
                    , sat = "Sáb."
                    }
                , wide =
                    { sun = "Domingo"
                    , mon = "Luns"
                    , tue = "Martes"
                    , wed = "Mércores"
                    , thu = "Xoves"
                    , fri = "Venres"
                    , sat = "Sábado"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "X"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "antes de Cristo", ad = "despois de Cristo" }
                , narrow = { bc = "a.C.", ad = "d.C." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{0}, {1}"
                , medium = "{0}, {1}"
                , long = "{0} 'do' {1}"
                , full = "{0} 'do' {1}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E, h:mm B" )
                , ( "EBhms", "E, h:mm:ss B" )
                , ( "Ed", "E d" )
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
                , ( "MEd", "E, d/M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d 'de' MMM" )
                , ( "MMMEd", "E, d 'de' MMM" )
                , ( "MMMMd", "d 'de' MMMM" )
                , ( "MMMMEd", "E, d 'de' MMMM" )
                , ( "MMMMW-count-one", "W.'ª' 'semana' 'de' MMMM" )
                , ( "MMMMW-count-other", "W.'ª' 'semana' 'de' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MMM 'de' y" )
                , ( "yMMMd", "d 'de' MMM 'de' y" )
                , ( "yMMMEd", "E, d 'de' MMM 'de' y" )
                , ( "yMMMM", "MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
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
