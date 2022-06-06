module Generated.Is exposing (is)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "is"
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

  - Short : d.M.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
is : Internal.Locale.Locale
is =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "is"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "f.h."
                    , pm = "e.h."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "síðdegis" )
                            , ( "evening1", "að kvöldi" )
                            , ( "midnight", "miðnætti" )
                            , ( "morning1", "að morgni" )
                            , ( "night1", "að nóttu" )
                            , ( "noon", "hádegi" )
                            ]
                    }
                , wide =
                    { am = "f.h."
                    , pm = "e.h."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "síðdegis" )
                            , ( "evening1", "að kvöldi" )
                            , ( "midnight", "miðnætti" )
                            , ( "morning1", "að morgni" )
                            , ( "night1", "að nóttu" )
                            , ( "noon", "hádegi" )
                            ]
                    }
                , narrow =
                    { am = "f."
                    , pm = "e."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "sd." )
                            , ( "evening1", "kv." )
                            , ( "midnight", "mn." )
                            , ( "morning1", "mrg." )
                            , ( "night1", "n." )
                            , ( "noon", "h." )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.y"
                , medium = "d. MMM y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "maí"
                    , jun = "jún."
                    , jul = "júl."
                    , aug = "ágú."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nóv."
                    , dec = "des."
                    }
                , wide =
                    { jan = "janúar"
                    , feb = "febrúar"
                    , mar = "mars"
                    , apr = "apríl"
                    , may = "maí"
                    , jun = "júní"
                    , jul = "júlí"
                    , aug = "ágúst"
                    , sep = "september"
                    , oct = "október"
                    , nov = "nóvember"
                    , dec = "desember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "Á"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "maí"
                    , jun = "jún."
                    , jul = "júl."
                    , aug = "ágú."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nóv."
                    , dec = "des."
                    }
                , wide =
                    { jan = "janúar"
                    , feb = "febrúar"
                    , mar = "mars"
                    , apr = "apríl"
                    , may = "maí"
                    , jun = "júní"
                    , jul = "júlí"
                    , aug = "ágúst"
                    , sep = "september"
                    , oct = "október"
                    , nov = "nóvember"
                    , dec = "desember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "Á"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "sun."
                    , mon = "mán."
                    , tue = "þri."
                    , wed = "mið."
                    , thu = "fim."
                    , fri = "fös."
                    , sat = "lau."
                    }
                , wide =
                    { sun = "sunnudagur"
                    , mon = "mánudagur"
                    , tue = "þriðjudagur"
                    , wed = "miðvikudagur"
                    , thu = "fimmtudagur"
                    , fri = "föstudagur"
                    , sat = "laugardagur"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "Þ"
                    , wed = "M"
                    , thu = "F"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "sun."
                    , mon = "mán."
                    , tue = "þri."
                    , wed = "mið."
                    , thu = "fim."
                    , fri = "fös."
                    , sat = "lau."
                    }
                , wide =
                    { sun = "sunnudagur"
                    , mon = "mánudagur"
                    , tue = "þriðjudagur"
                    , wed = "miðvikudagur"
                    , thu = "fimmtudagur"
                    , fri = "föstudagur"
                    , sat = "laugardagur"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "Þ"
                    , wed = "M"
                    , thu = "F"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "f.Kr.", ad = "e.Kr." }
                , wide = { bc = "fyrir Krist", ad = "eftir Krist" }
                , narrow = { bc = "f.k.", ad = "e.k." }
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
                , long = "{1} 'kl'. {0}"
                , full = "{1} 'kl'. {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "v – HH:mm:ss" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "v – HH:mm" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E, d. MMMM" )
                , ( "MMMMW-count-one", "'viku' W 'í' MMMM" )
                , ( "MMMMW-count-other", "'viku' W 'í' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M. y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'viku' w 'af' Y" )
                , ( "yw-count-other", "'viku' w 'af' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
