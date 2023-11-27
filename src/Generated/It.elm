module Generated.It exposing (it, it_CH, it_SM, it_VA)

{-|

@docs it, it_CH, it_SM, it_VA

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
        [ ( "it"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it : Internal.Locale.Locale
it =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "it"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "di pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "del pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                , narrow =
                    { am = "m."
                    , pm = "p."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "di pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "gen"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mag"
                    , jun = "giu"
                    , jul = "lug"
                    , aug = "ago"
                    , sep = "set"
                    , oct = "ott"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "gennaio"
                    , feb = "febbraio"
                    , mar = "marzo"
                    , apr = "aprile"
                    , may = "maggio"
                    , jun = "giugno"
                    , jul = "luglio"
                    , aug = "agosto"
                    , sep = "settembre"
                    , oct = "ottobre"
                    , nov = "novembre"
                    , dec = "dicembre"
                    }
                , narrow =
                    { jan = "G"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "G"
                    , jul = "L"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "gen"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mag"
                    , jun = "giu"
                    , jul = "lug"
                    , aug = "ago"
                    , sep = "set"
                    , oct = "ott"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "gennaio"
                    , feb = "febbraio"
                    , mar = "marzo"
                    , apr = "aprile"
                    , may = "maggio"
                    , jun = "giugno"
                    , jul = "luglio"
                    , aug = "agosto"
                    , sep = "settembre"
                    , oct = "ottobre"
                    , nov = "novembre"
                    , dec = "dicembre"
                    }
                , narrow =
                    { jan = "G"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "G"
                    , jul = "L"
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
                    , wed = "mer"
                    , thu = "gio"
                    , fri = "ven"
                    , sat = "sab"
                    }
                , wide =
                    { sun = "domenica"
                    , mon = "lunedì"
                    , tue = "martedì"
                    , wed = "mercoledì"
                    , thu = "giovedì"
                    , fri = "venerdì"
                    , sat = "sabato"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "G"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mer"
                    , thu = "gio"
                    , fri = "ven"
                    , sat = "sab"
                    }
                , wide =
                    { sun = "domenica"
                    , mon = "lunedì"
                    , tue = "martedì"
                    , wed = "mercoledì"
                    , thu = "giovedì"
                    , fri = "venerdì"
                    , sat = "sabato"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "G"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "avanti Cristo", ad = "dopo Cristo" }
                , narrow = { bc = "aC", ad = "dC" }
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
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'settimana' W 'di' MMMM" )
                , ( "MMMMW-count-other", "'settimana' W 'di' MMMM" )
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
                , ( "yw-count-one", "'settimana' w 'del' Y" )
                , ( "yw-count-other", "'settimana' w 'del' Y" )
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
  - Full : HH:mm:ss zzzz

-}
it_CH : Internal.Locale.Locale
it_CH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "it"
            , script = Nothing
            , territory = Just "CH"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "di pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "del pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                , narrow =
                    { am = "m."
                    , pm = "p."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "di pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
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
                    { jan = "gen"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mag"
                    , jun = "giu"
                    , jul = "lug"
                    , aug = "ago"
                    , sep = "set"
                    , oct = "ott"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "gennaio"
                    , feb = "febbraio"
                    , mar = "marzo"
                    , apr = "aprile"
                    , may = "maggio"
                    , jun = "giugno"
                    , jul = "luglio"
                    , aug = "agosto"
                    , sep = "settembre"
                    , oct = "ottobre"
                    , nov = "novembre"
                    , dec = "dicembre"
                    }
                , narrow =
                    { jan = "G"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "G"
                    , jul = "L"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "gen"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mag"
                    , jun = "giu"
                    , jul = "lug"
                    , aug = "ago"
                    , sep = "set"
                    , oct = "ott"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "gennaio"
                    , feb = "febbraio"
                    , mar = "marzo"
                    , apr = "aprile"
                    , may = "maggio"
                    , jun = "giugno"
                    , jul = "luglio"
                    , aug = "agosto"
                    , sep = "settembre"
                    , oct = "ottobre"
                    , nov = "novembre"
                    , dec = "dicembre"
                    }
                , narrow =
                    { jan = "G"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "G"
                    , jul = "L"
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
                    , wed = "mer"
                    , thu = "gio"
                    , fri = "ven"
                    , sat = "sab"
                    }
                , wide =
                    { sun = "domenica"
                    , mon = "lunedì"
                    , tue = "martedì"
                    , wed = "mercoledì"
                    , thu = "giovedì"
                    , fri = "venerdì"
                    , sat = "sabato"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "G"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mer"
                    , thu = "gio"
                    , fri = "ven"
                    , sat = "sab"
                    }
                , wide =
                    { sun = "domenica"
                    , mon = "lunedì"
                    , tue = "martedì"
                    , wed = "mercoledì"
                    , thu = "giovedì"
                    , fri = "venerdì"
                    , sat = "sabato"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "G"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "avanti Cristo", ad = "dopo Cristo" }
                , narrow = { bc = "aC", ad = "dC" }
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
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'settimana' W 'di' MMMM" )
                , ( "MMMMW-count-other", "'settimana' W 'di' MMMM" )
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
                , ( "yw-count-one", "'settimana' w 'del' Y" )
                , ( "yw-count-other", "'settimana' w 'del' Y" )
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
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it_SM : Internal.Locale.Locale
it_SM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "it"
            , script = Nothing
            , territory = Just "SM"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "di pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "del pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                , narrow =
                    { am = "m."
                    , pm = "p."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "di pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "gen"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mag"
                    , jun = "giu"
                    , jul = "lug"
                    , aug = "ago"
                    , sep = "set"
                    , oct = "ott"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "gennaio"
                    , feb = "febbraio"
                    , mar = "marzo"
                    , apr = "aprile"
                    , may = "maggio"
                    , jun = "giugno"
                    , jul = "luglio"
                    , aug = "agosto"
                    , sep = "settembre"
                    , oct = "ottobre"
                    , nov = "novembre"
                    , dec = "dicembre"
                    }
                , narrow =
                    { jan = "G"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "G"
                    , jul = "L"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "gen"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mag"
                    , jun = "giu"
                    , jul = "lug"
                    , aug = "ago"
                    , sep = "set"
                    , oct = "ott"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "gennaio"
                    , feb = "febbraio"
                    , mar = "marzo"
                    , apr = "aprile"
                    , may = "maggio"
                    , jun = "giugno"
                    , jul = "luglio"
                    , aug = "agosto"
                    , sep = "settembre"
                    , oct = "ottobre"
                    , nov = "novembre"
                    , dec = "dicembre"
                    }
                , narrow =
                    { jan = "G"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "G"
                    , jul = "L"
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
                    , wed = "mer"
                    , thu = "gio"
                    , fri = "ven"
                    , sat = "sab"
                    }
                , wide =
                    { sun = "domenica"
                    , mon = "lunedì"
                    , tue = "martedì"
                    , wed = "mercoledì"
                    , thu = "giovedì"
                    , fri = "venerdì"
                    , sat = "sabato"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "G"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mer"
                    , thu = "gio"
                    , fri = "ven"
                    , sat = "sab"
                    }
                , wide =
                    { sun = "domenica"
                    , mon = "lunedì"
                    , tue = "martedì"
                    , wed = "mercoledì"
                    , thu = "giovedì"
                    , fri = "venerdì"
                    , sat = "sabato"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "G"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "avanti Cristo", ad = "dopo Cristo" }
                , narrow = { bc = "aC", ad = "dC" }
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
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'settimana' W 'di' MMMM" )
                , ( "MMMMW-count-other", "'settimana' W 'di' MMMM" )
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
                , ( "yw-count-one", "'settimana' w 'del' Y" )
                , ( "yw-count-other", "'settimana' w 'del' Y" )
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
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it_VA : Internal.Locale.Locale
it_VA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "it"
            , script = Nothing
            , territory = Just "VA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "di pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "del pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                , narrow =
                    { am = "m."
                    , pm = "p."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "di pomeriggio" )
                            , ( "evening1", "di sera" )
                            , ( "midnight", "mezzanotte" )
                            , ( "morning1", "di mattina" )
                            , ( "night1", "di notte" )
                            , ( "noon", "mezzogiorno" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "gen"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mag"
                    , jun = "giu"
                    , jul = "lug"
                    , aug = "ago"
                    , sep = "set"
                    , oct = "ott"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "gennaio"
                    , feb = "febbraio"
                    , mar = "marzo"
                    , apr = "aprile"
                    , may = "maggio"
                    , jun = "giugno"
                    , jul = "luglio"
                    , aug = "agosto"
                    , sep = "settembre"
                    , oct = "ottobre"
                    , nov = "novembre"
                    , dec = "dicembre"
                    }
                , narrow =
                    { jan = "G"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "G"
                    , jul = "L"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "gen"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "mag"
                    , jun = "giu"
                    , jul = "lug"
                    , aug = "ago"
                    , sep = "set"
                    , oct = "ott"
                    , nov = "nov"
                    , dec = "dic"
                    }
                , wide =
                    { jan = "gennaio"
                    , feb = "febbraio"
                    , mar = "marzo"
                    , apr = "aprile"
                    , may = "maggio"
                    , jun = "giugno"
                    , jul = "luglio"
                    , aug = "agosto"
                    , sep = "settembre"
                    , oct = "ottobre"
                    , nov = "novembre"
                    , dec = "dicembre"
                    }
                , narrow =
                    { jan = "G"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "G"
                    , jul = "L"
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
                    , wed = "mer"
                    , thu = "gio"
                    , fri = "ven"
                    , sat = "sab"
                    }
                , wide =
                    { sun = "domenica"
                    , mon = "lunedì"
                    , tue = "martedì"
                    , wed = "mercoledì"
                    , thu = "giovedì"
                    , fri = "venerdì"
                    , sat = "sabato"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "G"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dom"
                    , mon = "lun"
                    , tue = "mar"
                    , wed = "mer"
                    , thu = "gio"
                    , fri = "ven"
                    , sat = "sab"
                    }
                , wide =
                    { sun = "domenica"
                    , mon = "lunedì"
                    , tue = "martedì"
                    , wed = "mercoledì"
                    , thu = "giovedì"
                    , fri = "venerdì"
                    , sat = "sabato"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "G"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "a.C.", ad = "d.C." }
                , wide = { bc = "avanti Cristo", ad = "dopo Cristo" }
                , narrow = { bc = "aC", ad = "dC" }
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
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'settimana' W 'di' MMMM" )
                , ( "MMMMW-count-other", "'settimana' W 'di' MMMM" )
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
                , ( "yw-count-one", "'settimana' w 'del' Y" )
                , ( "yw-count-other", "'settimana' w 'del' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
