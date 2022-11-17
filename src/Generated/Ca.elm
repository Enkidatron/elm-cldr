module Generated.Ca exposing (ca, ca_AD, ca_ES_VALENCIA, ca_FR, ca_IT)

{-|

@docs ca, ca_AD, ca_ES_VALENCIA, ca_FR, ca_IT

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
        [ ( "ca"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca : Internal.Locale.Locale
ca =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ca"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "md" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "mat." )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM 'de' y"
                , full = "EEEE, d MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "de gen."
                    , feb = "de febr."
                    , mar = "de març"
                    , apr = "d’abr."
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de jul."
                    , aug = "d’ag."
                    , sep = "de set."
                    , oct = "d’oct."
                    , nov = "de nov."
                    , dec = "de des."
                    }
                , wide =
                    { jan = "de gener"
                    , feb = "de febrer"
                    , mar = "de març"
                    , apr = "d’abril"
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de juliol"
                    , aug = "d’agost"
                    , sep = "de setembre"
                    , oct = "d’octubre"
                    , nov = "de novembre"
                    , dec = "de desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "gen."
                    , feb = "febr."
                    , mar = "març"
                    , apr = "abr."
                    , may = "maig"
                    , jun = "juny"
                    , jul = "jul."
                    , aug = "ag."
                    , sep = "set."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "des."
                    }
                , wide =
                    { jan = "gener"
                    , feb = "febrer"
                    , mar = "març"
                    , apr = "abril"
                    , may = "maig"
                    , jun = "juny"
                    , jul = "juliol"
                    , aug = "agost"
                    , sep = "setembre"
                    , oct = "octubre"
                    , nov = "novembre"
                    , dec = "desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "aC", ad = "dC" }
                , wide = { bc = "abans de Crist", ad = "després de Crist" }
                , narrow = { bc = "aC", ad = "dC" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1}, 'a' 'les' {0}"
                , full = "{1}, 'a' 'les' {0}"
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
                , ( "EHm", "E H:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "LLL y G" )
                , ( "GyMMMd", "d MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM 'de' y G" )
                , ( "GyMMMM", "LLLL 'de' y G" )
                , ( "GyMMMMd", "d MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d MMMM 'de' y G" )
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
                , ( "hmvvvv", "h:mm a (vvvv)" )
                , ( "Hmvvvv", "H:mm (vvvv)" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'setmana' W MMMM" )
                , ( "MMMMW-count-other", "'setmana' W MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "LLL 'de' y" )
                , ( "yMMMd", "d MMM 'de' y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "LLLL 'de' y" )
                , ( "yMMMMd", "d MMMM 'de' y" )
                , ( "yMMMMEd", "E, d MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'setmana' w 'de' Y" )
                , ( "yw-count-other", "'setmana' w 'de' Y" )
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
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_AD : Internal.Locale.Locale
ca_AD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ca"
            , script = Nothing
            , territory = Just "AD"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "md" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "mat." )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM 'de' y"
                , full = "EEEE, d MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "de gen."
                    , feb = "de febr."
                    , mar = "de març"
                    , apr = "d’abr."
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de jul."
                    , aug = "d’ag."
                    , sep = "de set."
                    , oct = "d’oct."
                    , nov = "de nov."
                    , dec = "de des."
                    }
                , wide =
                    { jan = "de gener"
                    , feb = "de febrer"
                    , mar = "de març"
                    , apr = "d’abril"
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de juliol"
                    , aug = "d’agost"
                    , sep = "de setembre"
                    , oct = "d’octubre"
                    , nov = "de novembre"
                    , dec = "de desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "gen."
                    , feb = "febr."
                    , mar = "març"
                    , apr = "abr."
                    , may = "maig"
                    , jun = "juny"
                    , jul = "jul."
                    , aug = "ag."
                    , sep = "set."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "des."
                    }
                , wide =
                    { jan = "gener"
                    , feb = "febrer"
                    , mar = "març"
                    , apr = "abril"
                    , may = "maig"
                    , jun = "juny"
                    , jul = "juliol"
                    , aug = "agost"
                    , sep = "setembre"
                    , oct = "octubre"
                    , nov = "novembre"
                    , dec = "desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "aC", ad = "dC" }
                , wide = { bc = "abans de Crist", ad = "després de Crist" }
                , narrow = { bc = "aC", ad = "dC" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1}, 'a' 'les' {0}"
                , full = "{1}, 'a' 'les' {0}"
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
                , ( "EHm", "E H:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "LLL y G" )
                , ( "GyMMMd", "d MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM 'de' y G" )
                , ( "GyMMMM", "LLLL 'de' y G" )
                , ( "GyMMMMd", "d MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d MMMM 'de' y G" )
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
                , ( "hmvvvv", "h:mm a (vvvv)" )
                , ( "Hmvvvv", "H:mm (vvvv)" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'setmana' W MMMM" )
                , ( "MMMMW-count-other", "'setmana' W MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "LLL 'de' y" )
                , ( "yMMMd", "d MMM 'de' y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "LLLL 'de' y" )
                , ( "yMMMMd", "d MMMM 'de' y" )
                , ( "yMMMMEd", "E, d MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'setmana' w 'de' Y" )
                , ( "yw-count-other", "'setmana' w 'de' Y" )
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
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_ES_VALENCIA : Internal.Locale.Locale
ca_ES_VALENCIA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ca"
            , script = Nothing
            , territory = Just "ES"
            , variant = Just "VALENCIA"
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "md" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "mat." )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM 'de' y"
                , full = "EEEE, d MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "de gen."
                    , feb = "de febr."
                    , mar = "de març"
                    , apr = "d’abr."
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de jul."
                    , aug = "d’ag."
                    , sep = "de set."
                    , oct = "d’oct."
                    , nov = "de nov."
                    , dec = "de des."
                    }
                , wide =
                    { jan = "de gener"
                    , feb = "de febrer"
                    , mar = "de març"
                    , apr = "d’abril"
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de juliol"
                    , aug = "d’agost"
                    , sep = "de setembre"
                    , oct = "d’octubre"
                    , nov = "de novembre"
                    , dec = "de desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "gen."
                    , feb = "febr."
                    , mar = "març"
                    , apr = "abr."
                    , may = "maig"
                    , jun = "juny"
                    , jul = "jul."
                    , aug = "ag."
                    , sep = "set."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "des."
                    }
                , wide =
                    { jan = "gener"
                    , feb = "febrer"
                    , mar = "març"
                    , apr = "abril"
                    , may = "maig"
                    , jun = "juny"
                    , jul = "juliol"
                    , aug = "agost"
                    , sep = "setembre"
                    , oct = "octubre"
                    , nov = "novembre"
                    , dec = "desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "aC", ad = "dC" }
                , wide = { bc = "abans de Crist", ad = "després de Crist" }
                , narrow = { bc = "aC", ad = "dC" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1}, 'a' 'les' {0}"
                , full = "{1}, 'a' 'les' {0}"
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
                , ( "EHm", "E H:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "LLL y G" )
                , ( "GyMMMd", "d MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM 'de' y G" )
                , ( "GyMMMM", "LLLL 'de' y G" )
                , ( "GyMMMMd", "d MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d MMMM 'de' y G" )
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
                , ( "hmvvvv", "h:mm a (vvvv)" )
                , ( "Hmvvvv", "H:mm (vvvv)" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'setmana' W MMMM" )
                , ( "MMMMW-count-other", "'setmana' W MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "LLL 'de' y" )
                , ( "yMMMd", "d MMM 'de' y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "LLLL 'de' y" )
                , ( "yMMMMd", "d MMMM 'de' y" )
                , ( "yMMMMEd", "E, d MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'setmana' w 'de' Y" )
                , ( "yw-count-other", "'setmana' w 'de' Y" )
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
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_FR : Internal.Locale.Locale
ca_FR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ca"
            , script = Nothing
            , territory = Just "FR"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "md" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "mat." )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM 'de' y"
                , full = "EEEE, d MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "de gen."
                    , feb = "de febr."
                    , mar = "de març"
                    , apr = "d’abr."
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de jul."
                    , aug = "d’ag."
                    , sep = "de set."
                    , oct = "d’oct."
                    , nov = "de nov."
                    , dec = "de des."
                    }
                , wide =
                    { jan = "de gener"
                    , feb = "de febrer"
                    , mar = "de març"
                    , apr = "d’abril"
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de juliol"
                    , aug = "d’agost"
                    , sep = "de setembre"
                    , oct = "d’octubre"
                    , nov = "de novembre"
                    , dec = "de desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "gen."
                    , feb = "febr."
                    , mar = "març"
                    , apr = "abr."
                    , may = "maig"
                    , jun = "juny"
                    , jul = "jul."
                    , aug = "ag."
                    , sep = "set."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "des."
                    }
                , wide =
                    { jan = "gener"
                    , feb = "febrer"
                    , mar = "març"
                    , apr = "abril"
                    , may = "maig"
                    , jun = "juny"
                    , jul = "juliol"
                    , aug = "agost"
                    , sep = "setembre"
                    , oct = "octubre"
                    , nov = "novembre"
                    , dec = "desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "aC", ad = "dC" }
                , wide = { bc = "abans de Crist", ad = "després de Crist" }
                , narrow = { bc = "aC", ad = "dC" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1}, 'a' 'les' {0}"
                , full = "{1}, 'a' 'les' {0}"
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
                , ( "EHm", "E H:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "LLL y G" )
                , ( "GyMMMd", "d MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM 'de' y G" )
                , ( "GyMMMM", "LLLL 'de' y G" )
                , ( "GyMMMMd", "d MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d MMMM 'de' y G" )
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
                , ( "hmvvvv", "h:mm a (vvvv)" )
                , ( "Hmvvvv", "H:mm (vvvv)" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'setmana' W MMMM" )
                , ( "MMMMW-count-other", "'setmana' W MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "LLL 'de' y" )
                , ( "yMMMd", "d MMM 'de' y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "LLLL 'de' y" )
                , ( "yMMMMd", "d MMMM 'de' y" )
                , ( "yMMMMEd", "E, d MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'setmana' w 'de' Y" )
                , ( "yw-count-other", "'setmana' w 'de' Y" )
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
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_IT : Internal.Locale.Locale
ca_IT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ca"
            , script = Nothing
            , territory = Just "IT"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , wide =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "migdia" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "matinada" )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                , narrow =
                    { am = "a.\u{00A0}m."
                    , pm = "p.\u{00A0}m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "md" )
                            , ( "afternoon2", "tarda" )
                            , ( "evening1", "vespre" )
                            , ( "midnight", "mitjanit" )
                            , ( "morning1", "mat." )
                            , ( "morning2", "matí" )
                            , ( "night1", "nit" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM 'de' y"
                , full = "EEEE, d MMMM 'de' y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "de gen."
                    , feb = "de febr."
                    , mar = "de març"
                    , apr = "d’abr."
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de jul."
                    , aug = "d’ag."
                    , sep = "de set."
                    , oct = "d’oct."
                    , nov = "de nov."
                    , dec = "de des."
                    }
                , wide =
                    { jan = "de gener"
                    , feb = "de febrer"
                    , mar = "de març"
                    , apr = "d’abril"
                    , may = "de maig"
                    , jun = "de juny"
                    , jul = "de juliol"
                    , aug = "d’agost"
                    , sep = "de setembre"
                    , oct = "d’octubre"
                    , nov = "de novembre"
                    , dec = "de desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "gen."
                    , feb = "febr."
                    , mar = "març"
                    , apr = "abr."
                    , may = "maig"
                    , jun = "juny"
                    , jul = "jul."
                    , aug = "ag."
                    , sep = "set."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "des."
                    }
                , wide =
                    { jan = "gener"
                    , feb = "febrer"
                    , mar = "març"
                    , apr = "abril"
                    , may = "maig"
                    , jun = "juny"
                    , jul = "juliol"
                    , aug = "agost"
                    , sep = "setembre"
                    , oct = "octubre"
                    , nov = "novembre"
                    , dec = "desembre"
                    }
                , narrow =
                    { jan = "GN"
                    , feb = "FB"
                    , mar = "MÇ"
                    , apr = "AB"
                    , may = "MG"
                    , jun = "JN"
                    , jul = "JL"
                    , aug = "AG"
                    , sep = "ST"
                    , oct = "OC"
                    , nov = "NV"
                    , dec = "DS"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dg."
                    , mon = "dl."
                    , tue = "dt."
                    , wed = "dc."
                    , thu = "dj."
                    , fri = "dv."
                    , sat = "ds."
                    }
                , wide =
                    { sun = "diumenge"
                    , mon = "dilluns"
                    , tue = "dimarts"
                    , wed = "dimecres"
                    , thu = "dijous"
                    , fri = "divendres"
                    , sat = "dissabte"
                    }
                , narrow =
                    { sun = "dg"
                    , mon = "dl"
                    , tue = "dt"
                    , wed = "dc"
                    , thu = "dj"
                    , fri = "dv"
                    , sat = "ds"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "aC", ad = "dC" }
                , wide = { bc = "abans de Crist", ad = "després de Crist" }
                , narrow = { bc = "aC", ad = "dC" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1}, 'a' 'les' {0}"
                , full = "{1}, 'a' 'les' {0}"
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
                , ( "EHm", "E H:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "LLL y G" )
                , ( "GyMMMd", "d MMM 'de' y G" )
                , ( "GyMMMEd", "E, d MMM 'de' y G" )
                , ( "GyMMMM", "LLLL 'de' y G" )
                , ( "GyMMMMd", "d MMMM 'de' y G" )
                , ( "GyMMMMEd", "E, d MMMM 'de' y G" )
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
                , ( "hmvvvv", "h:mm a (vvvv)" )
                , ( "Hmvvvv", "H:mm (vvvv)" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'setmana' W MMMM" )
                , ( "MMMMW-count-other", "'setmana' W MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "LLL 'de' y" )
                , ( "yMMMd", "d MMM 'de' y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "LLLL 'de' y" )
                , ( "yMMMMd", "d MMMM 'de' y" )
                , ( "yMMMMEd", "E, d MMMM 'de' y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'setmana' w 'de' Y" )
                , ( "yw-count-other", "'setmana' w 'de' Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
