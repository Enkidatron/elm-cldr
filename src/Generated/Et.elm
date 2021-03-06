module Generated.Et exposing (et)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "et"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 23, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 5, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
et : Internal.Locale.Locale
et =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "et"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "pärastlõunal" )
                            , ( "evening1", "õhtul" )
                            , ( "midnight", "keskööl" )
                            , ( "morning1", "hommikul" )
                            , ( "night1", "öösel" )
                            , ( "noon", "keskpäeval" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "pärastlõunal" )
                            , ( "evening1", "õhtul" )
                            , ( "midnight", "keskööl" )
                            , ( "morning1", "hommikul" )
                            , ( "night1", "öösel" )
                            , ( "noon", "keskpäeval" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "pärastlõunal" )
                            , ( "evening1", "õhtul" )
                            , ( "midnight", "keskööl" )
                            , ( "morning1", "hommikul" )
                            , ( "night1", "öösel" )
                            , ( "noon", "keskpäeval" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "d. MMM y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jaan"
                    , feb = "veebr"
                    , mar = "märts"
                    , apr = "apr"
                    , may = "mai"
                    , jun = "juuni"
                    , jul = "juuli"
                    , aug = "aug"
                    , sep = "sept"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dets"
                    }
                , wide =
                    { jan = "jaanuar"
                    , feb = "veebruar"
                    , mar = "märts"
                    , apr = "aprill"
                    , may = "mai"
                    , jun = "juuni"
                    , jul = "juuli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktoober"
                    , nov = "november"
                    , dec = "detsember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "V"
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
                    { jan = "jaan"
                    , feb = "veebr"
                    , mar = "märts"
                    , apr = "apr"
                    , may = "mai"
                    , jun = "juuni"
                    , jul = "juuli"
                    , aug = "aug"
                    , sep = "sept"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dets"
                    }
                , wide =
                    { jan = "jaanuar"
                    , feb = "veebruar"
                    , mar = "märts"
                    , apr = "aprill"
                    , may = "mai"
                    , jun = "juuni"
                    , jul = "juuli"
                    , aug = "august"
                    , sep = "september"
                    , oct = "oktoober"
                    , nov = "november"
                    , dec = "detsember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "V"
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
                    { sun = "P"
                    , mon = "E"
                    , tue = "T"
                    , wed = "K"
                    , thu = "N"
                    , fri = "R"
                    , sat = "L"
                    }
                , wide =
                    { sun = "Pühapäev"
                    , mon = "Esmaspäev"
                    , tue = "Teisipäev"
                    , wed = "Kolmapäev"
                    , thu = "Neljapäev"
                    , fri = "Reede"
                    , sat = "Laupäev"
                    }
                , narrow =
                    { sun = "P"
                    , mon = "E"
                    , tue = "T"
                    , wed = "K"
                    , thu = "N"
                    , fri = "R"
                    , sat = "L"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "P"
                    , mon = "E"
                    , tue = "T"
                    , wed = "K"
                    , thu = "N"
                    , fri = "R"
                    , sat = "L"
                    }
                , wide =
                    { sun = "Pühapäev"
                    , mon = "Esmaspäev"
                    , tue = "Teisipäev"
                    , wed = "Kolmapäev"
                    , thu = "Neljapäev"
                    , fri = "Reede"
                    , sat = "Laupäev"
                    }
                , narrow =
                    { sun = "P"
                    , mon = "E"
                    , tue = "T"
                    , wed = "K"
                    , thu = "N"
                    , fri = "R"
                    , sat = "L"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "eKr", ad = "pKr" }
                , wide = { bc = "enne Kristust", ad = "pärast Kristust" }
                , narrow = { bc = "eKr", ad = "pKr" }
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
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.MM.y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMMM y G" )
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
                , ( "M", "M" )
                , ( "Md", "d.M" )
                , ( "MEd", "E, d.M" )
                , ( "MMM", "MMMM" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "MMMM (W. 'nädal')" )
                , ( "MMMMW-count-other", "MMMM (W. 'nädal')" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "w. 'nädal' (Y)" )
                , ( "yw-count-other", "w. 'nädal' (Y)" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
