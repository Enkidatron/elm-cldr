module Generated.Cs exposing (cs)

{-|

@docs cs

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
        [ ( "cs"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 9, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 9, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d. M. y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
cs : Internal.Locale.Locale
cs =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "cs"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "dop."
                    , pm = "odp."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "odp." )
                            , ( "evening1", "več." )
                            , ( "midnight", "půln." )
                            , ( "morning1", "r." )
                            , ( "morning2", "dop." )
                            , ( "night1", "v n." )
                            , ( "noon", "pol." )
                            ]
                    }
                , wide =
                    { am = "dop."
                    , pm = "odp."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "odpoledne" )
                            , ( "evening1", "večer" )
                            , ( "midnight", "půlnoc" )
                            , ( "morning1", "ráno" )
                            , ( "morning2", "dopoledne" )
                            , ( "night1", "v noci" )
                            , ( "noon", "poledne" )
                            ]
                    }
                , narrow =
                    { am = "dop."
                    , pm = "odp."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "o." )
                            , ( "evening1", "v." )
                            , ( "midnight", "půl." )
                            , ( "morning1", "r." )
                            , ( "morning2", "d." )
                            , ( "night1", "n." )
                            , ( "noon", "pol." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "d. M. y"
                , long = "d. MMMM y"
                , full = "EEEE d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "led"
                    , feb = "úno"
                    , mar = "bře"
                    , apr = "dub"
                    , may = "kvě"
                    , jun = "čvn"
                    , jul = "čvc"
                    , aug = "srp"
                    , sep = "zář"
                    , oct = "říj"
                    , nov = "lis"
                    , dec = "pro"
                    }
                , wide =
                    { jan = "ledna"
                    , feb = "února"
                    , mar = "března"
                    , apr = "dubna"
                    , may = "května"
                    , jun = "června"
                    , jul = "července"
                    , aug = "srpna"
                    , sep = "září"
                    , oct = "října"
                    , nov = "listopadu"
                    , dec = "prosince"
                    }
                , narrow =
                    { jan = "1"
                    , feb = "2"
                    , mar = "3"
                    , apr = "4"
                    , may = "5"
                    , jun = "6"
                    , jul = "7"
                    , aug = "8"
                    , sep = "9"
                    , oct = "10"
                    , nov = "11"
                    , dec = "12"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "led"
                    , feb = "úno"
                    , mar = "bře"
                    , apr = "dub"
                    , may = "kvě"
                    , jun = "čvn"
                    , jul = "čvc"
                    , aug = "srp"
                    , sep = "zář"
                    , oct = "říj"
                    , nov = "lis"
                    , dec = "pro"
                    }
                , wide =
                    { jan = "leden"
                    , feb = "únor"
                    , mar = "březen"
                    , apr = "duben"
                    , may = "květen"
                    , jun = "červen"
                    , jul = "červenec"
                    , aug = "srpen"
                    , sep = "září"
                    , oct = "říjen"
                    , nov = "listopad"
                    , dec = "prosinec"
                    }
                , narrow =
                    { jan = "1"
                    , feb = "2"
                    , mar = "3"
                    , apr = "4"
                    , may = "5"
                    , jun = "6"
                    , jul = "7"
                    , aug = "8"
                    , sep = "9"
                    , oct = "10"
                    , nov = "11"
                    , dec = "12"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ne"
                    , mon = "po"
                    , tue = "út"
                    , wed = "st"
                    , thu = "čt"
                    , fri = "pá"
                    , sat = "so"
                    }
                , wide =
                    { sun = "neděle"
                    , mon = "pondělí"
                    , tue = "úterý"
                    , wed = "středa"
                    , thu = "čtvrtek"
                    , fri = "pátek"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "N"
                    , mon = "P"
                    , tue = "Ú"
                    , wed = "S"
                    , thu = "Č"
                    , fri = "P"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ne"
                    , mon = "po"
                    , tue = "út"
                    , wed = "st"
                    , thu = "čt"
                    , fri = "pá"
                    , sat = "so"
                    }
                , wide =
                    { sun = "neděle"
                    , mon = "pondělí"
                    , tue = "úterý"
                    , wed = "středa"
                    , thu = "čtvrtek"
                    , fri = "pátek"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "N"
                    , mon = "P"
                    , tue = "Ú"
                    , wed = "S"
                    , thu = "Č"
                    , fri = "P"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "př. n. l.", ad = "n. l." }
                , wide =
                    { bc = "před naším letopočtem", ad = "našeho letopočtu" }
                , narrow = { bc = "př.n.l.", ad = "n.l." }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss zzzz"
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
                , ( "d", "d." )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E H:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d. M. y GGGGG" )
                , ( "GyMMM", "LLLL y G" )
                , ( "GyMMMd", "d. M. y G" )
                , ( "GyMMMEd", "E d. M. y G" )
                , ( "GyMMMMd", "d. MMMM y G" )
                , ( "GyMMMMEd", "E d. MMMM y G" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "L" )
                , ( "Md", "d. M." )
                , ( "MEd", "E d. M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. M." )
                , ( "MMMEd", "E d. M." )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E d. MMMM" )
                , ( "MMMMW-count-one", "W. 'týden' MMMM" )
                , ( "MMMMW-count-few", "W. 'týden' MMMM" )
                , ( "MMMMW-count-many", "W. 'týden' MMMM" )
                , ( "MMMMW-count-other", "W. 'týden' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d. M. y" )
                , ( "yMEd", "E d. M. y" )
                , ( "yMMM", "LLLL y" )
                , ( "yMMMd", "d. M. y" )
                , ( "yMMMEd", "E d. M. y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yMMMMd", "d. MMMM y" )
                , ( "yMMMMEd", "E d. MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "w. 'týden' 'roku' Y" )
                , ( "yw-count-few", "w. 'týden' 'roku' Y" )
                , ( "yw-count-many", "w. 'týden' 'roku' Y" )
                , ( "yw-count-other", "w. 'týden' 'roku' Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
