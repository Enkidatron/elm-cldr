module Generated.Fil exposing (fil)

{-|

@docs fil

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
        [ ( "fil"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fil : Internal.Locale.Locale
fil =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fil"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tanghali" )
                            , ( "evening1", "ng gabi" )
                            , ( "midnight", "hatinggabi" )
                            , ( "morning1", "nang umaga" )
                            , ( "morning2", "madaling-araw" )
                            , ( "night1", "ng gabi" )
                            , ( "noon", "tanghaling-tapat" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tanghali" )
                            , ( "evening1", "ng gabi" )
                            , ( "midnight", "hatinggabi" )
                            , ( "morning1", "nang umaga" )
                            , ( "morning2", "madaling-araw" )
                            , ( "night1", "ng gabi" )
                            , ( "noon", "tanghaling-tapat" )
                            ]
                    }
                , narrow =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "sa hapon" )
                            , ( "evening1", "sa gabi" )
                            , ( "midnight", "hatinggabi" )
                            , ( "morning1", "umaga" )
                            , ( "morning2", "madaling-araw" )
                            , ( "night1", "ng gabi" )
                            , ( "noon", "tanghaling-tapat" )
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
                    { jan = "Ene"
                    , feb = "Peb"
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Hun"
                    , jul = "Hul"
                    , aug = "Ago"
                    , sep = "Set"
                    , oct = "Okt"
                    , nov = "Nob"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Enero"
                    , feb = "Pebrero"
                    , mar = "Marso"
                    , apr = "Abril"
                    , may = "Mayo"
                    , jun = "Hunyo"
                    , jul = "Hulyo"
                    , aug = "Agosto"
                    , sep = "Setyembre"
                    , oct = "Oktubre"
                    , nov = "Nobyembre"
                    , dec = "Disyembre"
                    }
                , narrow =
                    { jan = "Ene"
                    , feb = "Peb"
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Hun"
                    , jul = "Hul"
                    , aug = "Ago"
                    , sep = "Set"
                    , oct = "Okt"
                    , nov = "Nob"
                    , dec = "Dis"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Ene"
                    , feb = "Peb"
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Hun"
                    , jul = "Hul"
                    , aug = "Ago"
                    , sep = "Set"
                    , oct = "Okt"
                    , nov = "Nob"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Enero"
                    , feb = "Pebrero"
                    , mar = "Marso"
                    , apr = "Abril"
                    , may = "Mayo"
                    , jun = "Hunyo"
                    , jul = "Hulyo"
                    , aug = "Agosto"
                    , sep = "Setyembre"
                    , oct = "Oktubre"
                    , nov = "Nobyembre"
                    , dec = "Disyembre"
                    }
                , narrow =
                    { jan = "E"
                    , feb = "P"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "Hun"
                    , jul = "Hul"
                    , aug = "Ago"
                    , sep = "Set"
                    , oct = "Okt"
                    , nov = "Nob"
                    , dec = "Dis"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Lin"
                    , mon = "Lun"
                    , tue = "Mar"
                    , wed = "Miy"
                    , thu = "Huw"
                    , fri = "Biy"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Linggo"
                    , mon = "Lunes"
                    , tue = "Martes"
                    , wed = "Miyerkules"
                    , thu = "Huwebes"
                    , fri = "Biyernes"
                    , sat = "Sabado"
                    }
                , narrow =
                    { sun = "Lin"
                    , mon = "Lun"
                    , tue = "Mar"
                    , wed = "Miy"
                    , thu = "Huw"
                    , fri = "Biy"
                    , sat = "Sab"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Lin"
                    , mon = "Lun"
                    , tue = "Mar"
                    , wed = "Miy"
                    , thu = "Huw"
                    , fri = "Biy"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Linggo"
                    , mon = "Lunes"
                    , tue = "Martes"
                    , wed = "Miyerkules"
                    , thu = "Huwebes"
                    , fri = "Biyernes"
                    , sat = "Sabado"
                    }
                , narrow =
                    { sun = "Lin"
                    , mon = "Lun"
                    , tue = "Mar"
                    , wed = "Miy"
                    , thu = "Huw"
                    , fri = "Biy"
                    , sat = "Sab"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "Before Christ", ad = "Anno Domini" }
                , narrow = { bc = "BC", ad = "AD" }
                }
            , timePatterns =
                { short = "h:mm\u{202F}a"
                , medium = "h:mm:ss\u{202F}a"
                , long = "h:mm:ss\u{202F}a z"
                , full = "h:mm:ss\u{202F}a zzzz"
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
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "M/d/y G" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "MMM d, y G" )
                , ( "GyMMMEd", "E, MMM d, y G" )
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
                , ( "Md", "M/d" )
                , ( "MEd", "E, M/d" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "E, MMM d" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMEd", "E, MMMM d" )
                , ( "MMMMW-count-one", "'ika'-W 'linggo' 'ng' MMMM" )
                , ( "MMMMW-count-other", "'linggo' W 'ng' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "M/d/y" )
                , ( "yMEd", "E, M/d/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "MMM d, y" )
                , ( "yMMMEd", "E, MMM d, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'ika'-w 'linggo' 'ng' Y" )
                , ( "yw-count-other", "'linggo' w 'ng' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
