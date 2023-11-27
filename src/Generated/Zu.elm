module Generated.Zu exposing (zu)

{-|

@docs zu

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
        [ ( "zu"
          , [ Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
zu : Internal.Locale.Locale
zu =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "zu"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "emini" )
                            , ( "evening1", "ntambama" )
                            , ( "morning1", "entathakusa" )
                            , ( "morning2", "ekuseni" )
                            , ( "night1", "ebusuku" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "emini" )
                            , ( "evening1", "ntambama" )
                            , ( "morning1", "entathakusa" )
                            , ( "morning2", "ekuseni" )
                            , ( "night1", "ebusuku" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "emini" )
                            , ( "evening1", "ntambama" )
                            , ( "morning1", "entathakusa" )
                            , ( "morning2", "ekuseni" )
                            , ( "night1", "ebusuku" )
                            ]
                    }
                }
            , datePatterns =
                { short = "M/d/yy"
                , medium = "MMM d, y"
                , long = "MMMM d, y"
                , full = "EEEE, MMMM d, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mas"
                    , apr = "Eph"
                    , may = "Mey"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Aga"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januwari"
                    , feb = "Februwari"
                    , mar = "Mashi"
                    , apr = "Ephreli"
                    , may = "Meyi"
                    , jun = "Juni"
                    , jul = "Julayi"
                    , aug = "Agasti"
                    , sep = "Septhemba"
                    , oct = "Okthoba"
                    , nov = "Novemba"
                    , dec = "Disemba"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "E"
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
                    , mar = "Mas"
                    , apr = "Eph"
                    , may = "Mey"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Aga"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januwari"
                    , feb = "Februwari"
                    , mar = "Mashi"
                    , apr = "Ephreli"
                    , may = "Meyi"
                    , jun = "Juni"
                    , jul = "Julayi"
                    , aug = "Agasti"
                    , sep = "Septhemba"
                    , oct = "Okthoba"
                    , nov = "Novemba"
                    , dec = "Disemba"
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
                    { sun = "Son"
                    , mon = "Mso"
                    , tue = "Bil"
                    , wed = "Tha"
                    , thu = "Sin"
                    , fri = "Hla"
                    , sat = "Mgq"
                    }
                , wide =
                    { sun = "ISonto"
                    , mon = "UMsombuluko"
                    , tue = "ULwesibili"
                    , wed = "ULwesithathu"
                    , thu = "ULwesine"
                    , fri = "ULwesihlanu"
                    , sat = "UMgqibelo"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "B"
                    , wed = "T"
                    , thu = "S"
                    , fri = "H"
                    , sat = "M"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Son"
                    , mon = "Mso"
                    , tue = "Bil"
                    , wed = "Tha"
                    , thu = "Sin"
                    , fri = "Hla"
                    , sat = "Mgq"
                    }
                , wide =
                    { sun = "ISonto"
                    , mon = "UMsombuluko"
                    , tue = "ULwesibili"
                    , wed = "ULwesithathu"
                    , thu = "ULwesine"
                    , fri = "ULwesihlanu"
                    , sat = "UMgqibelo"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "B"
                    , wed = "T"
                    , thu = "S"
                    , fri = "H"
                    , sat = "M"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "BC", ad = "AD" }
                , narrow = { bc = "BC", ad = "AD" }
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
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "M/d/y GGGGG" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
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
                , ( "Md", "MM-dd" )
                , ( "MEd", "MM-dd, E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "E, MMM d" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "y-MM" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "y-MM-dd, E" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "MMM d, y" )
                , ( "yMMMEd", "E, MMM d, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-other", "'week' w 'of' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
