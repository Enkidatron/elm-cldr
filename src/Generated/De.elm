module Generated.De exposing (de, de_AT, de_BE, de_CH, de_IT, de_LI, de_LU)

{-|

@docs de, de_AT, de_BE, de_CH, de_IT, de_LI, de_LU

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
        [ ( "de"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de : Internal.Locale.Locale
de =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "de"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachmittags" )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vormittags" )
                            , ( "night1", "nachts" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "dd.MM.y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan."
                    , feb = "Feb."
                    , mar = "März"
                    , apr = "Apr."
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Aug."
                    , sep = "Sept."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Dez."
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mär"
                    , apr = "Apr"
                    , may = "Mai"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Aug"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dez"
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { sun = "So."
                    , mon = "Mo."
                    , tue = "Di."
                    , wed = "Mi."
                    , thu = "Do."
                    , fri = "Fr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "So"
                    , mon = "Mo"
                    , tue = "Di"
                    , wed = "Mi"
                    , thu = "Do"
                    , fri = "Fr"
                    , sat = "Sa"
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v. Chr.", ad = "n. Chr." }
                , wide = { bc = "v. Chr.", ad = "n. Chr." }
                , narrow = { bc = "v. Chr.", ad = "n. Chr." }
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
                , ( "Ed", "E, d." )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y G" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h 'Uhr' a" )
                , ( "H", "HH 'Uhr'" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMd", "d.MM." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "'Woche' W 'im' MMMM" )
                , ( "MMMMW-count-other", "'Woche' W 'im' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMdd", "dd.MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'Woche' w 'des' 'Jahres' Y" )
                , ( "yw-count-other", "'Woche' w 'des' 'Jahres' Y" )
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
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_AT : Internal.Locale.Locale
de_AT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "de"
            , script = Nothing
            , territory = Just "AT"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachmittags" )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vormittags" )
                            , ( "night1", "nachts" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "dd.MM.y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jän."
                    , feb = "Feb."
                    , mar = "März"
                    , apr = "Apr."
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Aug."
                    , sep = "Sep."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Dez."
                    }
                , wide =
                    { jan = "Jänner"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { jan = "Jän"
                    , feb = "Feb"
                    , mar = "Mär"
                    , apr = "Apr"
                    , may = "Mai"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Aug"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dez"
                    }
                , wide =
                    { jan = "Jänner"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { sun = "So."
                    , mon = "Mo."
                    , tue = "Di."
                    , wed = "Mi."
                    , thu = "Do."
                    , fri = "Fr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "So"
                    , mon = "Mo"
                    , tue = "Di"
                    , wed = "Mi"
                    , thu = "Do"
                    , fri = "Fr"
                    , sat = "Sa"
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v. Chr.", ad = "n. Chr." }
                , wide = { bc = "v. Chr.", ad = "n. Chr." }
                , narrow = { bc = "v. Chr.", ad = "n. Chr." }
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
                , ( "Ed", "E, d." )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y G" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h 'Uhr' a" )
                , ( "H", "HH 'Uhr'" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMd", "d.MM." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "'Woche' W 'im' MMMM" )
                , ( "MMMMW-count-other", "'Woche' W 'im' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMdd", "dd.MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'Woche' w 'des' 'Jahres' Y" )
                , ( "yw-count-other", "'Woche' w 'des' 'Jahres' Y" )
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
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_BE : Internal.Locale.Locale
de_BE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "de"
            , script = Nothing
            , territory = Just "BE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachmittags" )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vormittags" )
                            , ( "night1", "nachts" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "dd.MM.y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan."
                    , feb = "Feb."
                    , mar = "März"
                    , apr = "Apr."
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Aug."
                    , sep = "Sept."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Dez."
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mär"
                    , apr = "Apr"
                    , may = "Mai"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Aug"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dez"
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { sun = "So."
                    , mon = "Mo."
                    , tue = "Di."
                    , wed = "Mi."
                    , thu = "Do."
                    , fri = "Fr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "So"
                    , mon = "Mo"
                    , tue = "Di"
                    , wed = "Mi"
                    , thu = "Do"
                    , fri = "Fr"
                    , sat = "Sa"
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v. Chr.", ad = "n. Chr." }
                , wide = { bc = "v. Chr.", ad = "n. Chr." }
                , narrow = { bc = "v. Chr.", ad = "n. Chr." }
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
                , ( "Ed", "E, d." )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y G" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h 'Uhr' a" )
                , ( "H", "HH 'Uhr'" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMd", "d.MM." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "'Woche' W 'im' MMMM" )
                , ( "MMMMW-count-other", "'Woche' W 'im' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMdd", "dd.MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'Woche' w 'des' 'Jahres' Y" )
                , ( "yw-count-other", "'Woche' w 'des' 'Jahres' Y" )
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
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_CH : Internal.Locale.Locale
de_CH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "de"
            , script = Nothing
            , territory = Just "CH"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachmittags" )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vormittags" )
                            , ( "night1", "nachts" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "dd.MM.y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan."
                    , feb = "Feb."
                    , mar = "März"
                    , apr = "Apr."
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Aug."
                    , sep = "Sept."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Dez."
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mär"
                    , apr = "Apr"
                    , may = "Mai"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Aug"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dez"
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { sun = "So."
                    , mon = "Mo."
                    , tue = "Di."
                    , wed = "Mi."
                    , thu = "Do."
                    , fri = "Fr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "So"
                    , mon = "Mo"
                    , tue = "Di"
                    , wed = "Mi"
                    , thu = "Do"
                    , fri = "Fr"
                    , sat = "Sa"
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v. Chr.", ad = "n. Chr." }
                , wide = { bc = "v. Chr.", ad = "n. Chr." }
                , narrow = { bc = "v. Chr.", ad = "n. Chr." }
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
                , ( "Ed", "E, d." )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h 'Uhr' a" )
                , ( "H", "HH 'Uhr'" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMd", "d.MM." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "'Woche' W 'im' MMMM" )
                , ( "MMMMW-count-other", "'Woche' W 'im' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMdd", "dd.MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'Woche' w 'des' 'Jahres' Y" )
                , ( "yw-count-other", "'Woche' w 'des' 'Jahres' Y" )
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
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_IT : Internal.Locale.Locale
de_IT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "de"
            , script = Nothing
            , territory = Just "IT"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachmittags" )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vormittags" )
                            , ( "night1", "nachts" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "dd.MM.y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jän."
                    , feb = "Feb."
                    , mar = "März"
                    , apr = "Apr."
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Aug."
                    , sep = "Sep."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Dez."
                    }
                , wide =
                    { jan = "Jänner"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { jan = "Jän"
                    , feb = "Feb"
                    , mar = "Mär"
                    , apr = "Apr"
                    , may = "Mai"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Aug"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dez"
                    }
                , wide =
                    { jan = "Jänner"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { sun = "So."
                    , mon = "Mo."
                    , tue = "Di."
                    , wed = "Mi."
                    , thu = "Do."
                    , fri = "Fr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "So"
                    , mon = "Mo"
                    , tue = "Di"
                    , wed = "Mi"
                    , thu = "Do"
                    , fri = "Fr"
                    , sat = "Sa"
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v. Chr.", ad = "n. Chr." }
                , wide = { bc = "v. Chr.", ad = "n. Chr." }
                , narrow = { bc = "v. Chr.", ad = "n. Chr." }
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
                , ( "Ed", "E, d." )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y G" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h 'Uhr' a" )
                , ( "H", "HH 'Uhr'" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMd", "d.MM." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "'Woche' W 'im' MMMM" )
                , ( "MMMMW-count-other", "'Woche' W 'im' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMdd", "dd.MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'Woche' w 'des' 'Jahres' Y" )
                , ( "yw-count-other", "'Woche' w 'des' 'Jahres' Y" )
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
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_LI : Internal.Locale.Locale
de_LI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "de"
            , script = Nothing
            , territory = Just "LI"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachmittags" )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vormittags" )
                            , ( "night1", "nachts" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "dd.MM.y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan."
                    , feb = "Feb."
                    , mar = "März"
                    , apr = "Apr."
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Aug."
                    , sep = "Sept."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Dez."
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mär"
                    , apr = "Apr"
                    , may = "Mai"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Aug"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dez"
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { sun = "So."
                    , mon = "Mo."
                    , tue = "Di."
                    , wed = "Mi."
                    , thu = "Do."
                    , fri = "Fr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "So"
                    , mon = "Mo"
                    , tue = "Di"
                    , wed = "Mi"
                    , thu = "Do"
                    , fri = "Fr"
                    , sat = "Sa"
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v. Chr.", ad = "n. Chr." }
                , wide = { bc = "v. Chr.", ad = "n. Chr." }
                , narrow = { bc = "v. Chr.", ad = "n. Chr." }
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
                , ( "Ed", "E, d." )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y G" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h 'Uhr' a" )
                , ( "H", "HH 'Uhr'" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMd", "d.MM." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "'Woche' W 'im' MMMM" )
                , ( "MMMMW-count-other", "'Woche' W 'im' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMdd", "dd.MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'Woche' w 'des' 'Jahres' Y" )
                , ( "yw-count-other", "'Woche' w 'des' 'Jahres' Y" )
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
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_LU : Internal.Locale.Locale
de_LU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "de"
            , script = Nothing
            , territory = Just "LU"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachmittags" )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vormittags" )
                            , ( "night1", "nachts" )
                            ]
                    }
                , narrow =
                    { am = "vorm."
                    , pm = "nachm."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mittags" )
                            , ( "afternoon2", "nachm." )
                            , ( "evening1", "abends" )
                            , ( "midnight", "Mitternacht" )
                            , ( "morning1", "morgens" )
                            , ( "morning2", "vorm." )
                            , ( "night1", "nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "dd.MM.y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan."
                    , feb = "Feb."
                    , mar = "März"
                    , apr = "Apr."
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Aug."
                    , sep = "Sept."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Dez."
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mär"
                    , apr = "Apr"
                    , may = "Mai"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Aug"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dez"
                    }
                , wide =
                    { jan = "Januar"
                    , feb = "Februar"
                    , mar = "März"
                    , apr = "April"
                    , may = "Mai"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "August"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Dezember"
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
                    { sun = "So."
                    , mon = "Mo."
                    , tue = "Di."
                    , wed = "Mi."
                    , thu = "Do."
                    , fri = "Fr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "So"
                    , mon = "Mo"
                    , tue = "Di"
                    , wed = "Mi"
                    , thu = "Do"
                    , fri = "Fr"
                    , sat = "Sa"
                    }
                , wide =
                    { sun = "Sonntag"
                    , mon = "Montag"
                    , tue = "Dienstag"
                    , wed = "Mittwoch"
                    , thu = "Donnerstag"
                    , fri = "Freitag"
                    , sat = "Samstag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "M"
                    , thu = "D"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v. Chr.", ad = "n. Chr." }
                , wide = { bc = "v. Chr.", ad = "n. Chr." }
                , narrow = { bc = "v. Chr.", ad = "n. Chr." }
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
                , ( "Ed", "E, d." )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y G" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH 'Uhr'" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMd", "d.MM." )
                , ( "MMdd", "dd.MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "'Woche' W 'im' MMMM" )
                , ( "MMMMW-count-other", "'Woche' W 'im' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMdd", "dd.MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'Woche' w 'des' 'Jahres' Y" )
                , ( "yw-count-other", "'Woche' w 'des' 'Jahres' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
