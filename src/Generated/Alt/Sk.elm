module Generated.Alt.Sk exposing (sk)

import Cldr.Format.Options as Opts
import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.LanguageInfo
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "sk"
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

  - Short : d. M. y
  - Medium : d. M. y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
sk : Internal.Locale.Locale
sk =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sk"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "popol." )
                            , ( "evening1", "večer" )
                            , ( "midnight", "o poln." )
                            , ( "morning1", "ráno" )
                            , ( "morning2", "dopol." )
                            , ( "night1", "v noci" )
                            , ( "noon", "napol." )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "popoludní" )
                            , ( "evening1", "večer" )
                            , ( "midnight", "o polnoci" )
                            , ( "morning1", "ráno" )
                            , ( "morning2", "dopoludnia" )
                            , ( "night1", "v noci" )
                            , ( "noon", "napoludnie" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "pop." )
                            , ( "evening1", "več." )
                            , ( "midnight", "o poln." )
                            , ( "morning1", "ráno" )
                            , ( "morning2", "dop." )
                            , ( "night1", "v n." )
                            , ( "noon", "nap." )
                            ]
                    }
                }
            , datePatterns =
                { short = "d. M. y"
                , medium = "d. M. y"
                , long = "d. MMMM y"
                , full = "EEEE d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "máj"
                    , jun = "jún"
                    , jul = "júl"
                    , aug = "aug"
                    , sep = "sep"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januára"
                    , feb = "februára"
                    , mar = "marca"
                    , apr = "apríla"
                    , may = "mája"
                    , jun = "júna"
                    , jul = "júla"
                    , aug = "augusta"
                    , sep = "septembra"
                    , oct = "októbra"
                    , nov = "novembra"
                    , dec = "decembra"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "máj"
                    , jun = "jún"
                    , jul = "júl"
                    , aug = "aug"
                    , sep = "sep"
                    , oct = "okt"
                    , nov = "nov"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "január"
                    , feb = "február"
                    , mar = "marec"
                    , apr = "apríl"
                    , may = "máj"
                    , jun = "jún"
                    , jul = "júl"
                    , aug = "august"
                    , sep = "september"
                    , oct = "október"
                    , nov = "november"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ne"
                    , mon = "po"
                    , tue = "ut"
                    , wed = "st"
                    , thu = "št"
                    , fri = "pi"
                    , sat = "so"
                    }
                , wide =
                    { sun = "nedeľa"
                    , mon = "pondelok"
                    , tue = "utorok"
                    , wed = "streda"
                    , thu = "štvrtok"
                    , fri = "piatok"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "š"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ne"
                    , mon = "po"
                    , tue = "ut"
                    , wed = "st"
                    , thu = "št"
                    , fri = "pi"
                    , sat = "so"
                    }
                , wide =
                    { sun = "nedeľa"
                    , mon = "pondelok"
                    , tue = "utorok"
                    , wed = "streda"
                    , thu = "štvrtok"
                    , fri = "piatok"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "u"
                    , wed = "s"
                    , thu = "š"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "pred Kr.", ad = "po Kr." }
                , wide = { bc = "pred Kristom", ad = "po Kristovi" }
                , narrow = { bc = "pred Kr.", ad = "po Kr." }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
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
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d. M. y GGGGG" )
                , ( "GyMMM", "LLLL y G" )
                , ( "GyMMMd", "d. M. y G" )
                , ( "GyMMMEd", "E d. M. y G" )
                , ( "GyMMMMd", "d. M. y G" )
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
                , ( "M", "L." )
                , ( "Md", "d. M." )
                , ( "MEd", "E d. M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. M." )
                , ( "MMMEd", "E d. M." )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "E d. MMMM" )
                , ( "MMMMW-count-one", "W. 'týždeň' MMMM" )
                , ( "MMMMW-count-few", "W. 'týždeň' MMMM" )
                , ( "MMMMW-count-many", "W. 'týždeň' MMMM" )
                , ( "MMMMW-count-other", "W. 'týždeň' MMMM" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d. M. y" )
                , ( "yMEd", "E d. M. y" )
                , ( "yMMM", "M/y" )
                , ( "yMMMd", "d. M. y" )
                , ( "yMMMEd", "E d. M. y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yMMMMd", "d. MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "w. 'týždeň' 'roka' Y" )
                , ( "yw-count-few", "w. 'týždeň' 'roka' Y" )
                , ( "yw-count-many", "w. 'týždeň' 'roka' Y" )
                , ( "yw-count-other", "w. 'týždeň' 'roka' Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
