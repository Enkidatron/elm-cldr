module Generated.Cy exposing (cy)

{-|

@docs cy

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
        [ ( "cy"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
cy : Internal.Locale.Locale
cy =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "cy"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "y prynhawn" )
                            , ( "evening1", "yr hwyr" )
                            , ( "midnight", "canol nos" )
                            , ( "morning1", "y bore" )
                            , ( "noon", "canol dydd" )
                            ]
                    }
                , wide =
                    { am = "yb"
                    , pm = "yh"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "y prynhawn" )
                            , ( "evening1", "yr hwyr" )
                            , ( "midnight", "canol nos" )
                            , ( "morning1", "y bore" )
                            , ( "noon", "canol dydd" )
                            ]
                    }
                , narrow =
                    { am = "b"
                    , pm = "h"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "yn y prynhawn" )
                            , ( "evening1", "min nos" )
                            , ( "midnight", "canol nos" )
                            , ( "morning1", "yn y bore" )
                            , ( "noon", "canol dydd" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Ion"
                    , feb = "Chwef"
                    , mar = "Maw"
                    , apr = "Ebr"
                    , may = "Mai"
                    , jun = "Meh"
                    , jul = "Gorff"
                    , aug = "Awst"
                    , sep = "Medi"
                    , oct = "Hyd"
                    , nov = "Tach"
                    , dec = "Rhag"
                    }
                , wide =
                    { jan = "Ionawr"
                    , feb = "Chwefror"
                    , mar = "Mawrth"
                    , apr = "Ebrill"
                    , may = "Mai"
                    , jun = "Mehefin"
                    , jul = "Gorffennaf"
                    , aug = "Awst"
                    , sep = "Medi"
                    , oct = "Hydref"
                    , nov = "Tachwedd"
                    , dec = "Rhagfyr"
                    }
                , narrow =
                    { jan = "I"
                    , feb = "Ch"
                    , mar = "M"
                    , apr = "E"
                    , may = "M"
                    , jun = "M"
                    , jul = "G"
                    , aug = "A"
                    , sep = "M"
                    , oct = "H"
                    , nov = "T"
                    , dec = "Rh"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Ion"
                    , feb = "Chw"
                    , mar = "Maw"
                    , apr = "Ebr"
                    , may = "Mai"
                    , jun = "Meh"
                    , jul = "Gor"
                    , aug = "Awst"
                    , sep = "Medi"
                    , oct = "Hyd"
                    , nov = "Tach"
                    , dec = "Rhag"
                    }
                , wide =
                    { jan = "Ionawr"
                    , feb = "Chwefror"
                    , mar = "Mawrth"
                    , apr = "Ebrill"
                    , may = "Mai"
                    , jun = "Mehefin"
                    , jul = "Gorffennaf"
                    , aug = "Awst"
                    , sep = "Medi"
                    , oct = "Hydref"
                    , nov = "Tachwedd"
                    , dec = "Rhagfyr"
                    }
                , narrow =
                    { jan = "I"
                    , feb = "Ch"
                    , mar = "M"
                    , apr = "E"
                    , may = "M"
                    , jun = "M"
                    , jul = "G"
                    , aug = "A"
                    , sep = "M"
                    , oct = "H"
                    , nov = "T"
                    , dec = "Rh"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Sul"
                    , mon = "Llun"
                    , tue = "Maw"
                    , wed = "Mer"
                    , thu = "Iau"
                    , fri = "Gwen"
                    , sat = "Sad"
                    }
                , wide =
                    { sun = "Dydd Sul"
                    , mon = "Dydd Llun"
                    , tue = "Dydd Mawrth"
                    , wed = "Dydd Mercher"
                    , thu = "Dydd Iau"
                    , fri = "Dydd Gwener"
                    , sat = "Dydd Sadwrn"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "Ll"
                    , tue = "M"
                    , wed = "M"
                    , thu = "I"
                    , fri = "G"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Sul"
                    , mon = "Llun"
                    , tue = "Maw"
                    , wed = "Mer"
                    , thu = "Iau"
                    , fri = "Gwe"
                    , sat = "Sad"
                    }
                , wide =
                    { sun = "Dydd Sul"
                    , mon = "Dydd Llun"
                    , tue = "Dydd Mawrth"
                    , wed = "Dydd Mercher"
                    , thu = "Dydd Iau"
                    , fri = "Dydd Gwener"
                    , sat = "Dydd Sadwrn"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "Ll"
                    , tue = "M"
                    , wed = "M"
                    , thu = "I"
                    , fri = "G"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "CC", ad = "OC" }
                , wide = { bc = "Cyn Crist", ad = "Oed Crist" }
                , narrow = { bc = "C", ad = "O" }
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
                , ( "Ed", "d, E" )
                , ( "Ehm", "E, h:mm\u{202F}a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "M/d/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
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
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-zero", "'wythnos' W 'o' MMMM" )
                , ( "MMMMW-count-one", "'wythnos' W 'o' MMMM" )
                , ( "MMMMW-count-two", "'wythnos' W 'o' MMMM" )
                , ( "MMMMW-count-few", "'wythnos' W 'o' MMMM" )
                , ( "MMMMW-count-many", "'wythnos' W 'o' MMMM" )
                , ( "MMMMW-count-other", "'wythnos' W 'o' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQ", "Q y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-zero", "'wythnos' w 'o' Y" )
                , ( "yw-count-one", "'wythnos' w 'o' Y" )
                , ( "yw-count-two", "'wythnos' w 'o' Y" )
                , ( "yw-count-few", "'wythnos' w 'o' Y" )
                , ( "yw-count-many", "'wythnos' w 'o' Y" )
                , ( "yw-count-other", "'wythnos' w 'o' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
