module Generated.Lt exposing (lt)

{-|

@docs lt

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
        [ ( "lt"
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

  - Short : y-MM-dd
  - Medium : y-MM-dd
  - Long : y 'm'. MMMM d 'd'.
  - Full : y 'm'. MMMM d 'd'., EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lt : Internal.Locale.Locale
lt =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "lt"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "priešpiet"
                    , pm = "popiet"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "popietė" )
                            , ( "evening1", "vakaras" )
                            , ( "midnight", "vidurnaktis" )
                            , ( "morning1", "rytas" )
                            , ( "night1", "naktis" )
                            , ( "noon", "perpiet" )
                            ]
                    }
                , wide =
                    { am = "priešpiet"
                    , pm = "popiet"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "popietė" )
                            , ( "evening1", "vakaras" )
                            , ( "midnight", "vidurnaktis" )
                            , ( "morning1", "rytas" )
                            , ( "night1", "naktis" )
                            , ( "noon", "perpiet" )
                            ]
                    }
                , narrow =
                    { am = "pr.\u{00A0}p."
                    , pm = "pop."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "popietė" )
                            , ( "evening1", "vakaras" )
                            , ( "midnight", "vidurnaktis" )
                            , ( "morning1", "rytas" )
                            , ( "night1", "naktis" )
                            , ( "noon", "perpiet" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "y-MM-dd"
                , long = "y 'm'. MMMM d 'd'."
                , full = "y 'm'. MMMM d 'd'., EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "saus."
                    , feb = "vas."
                    , mar = "kov."
                    , apr = "bal."
                    , may = "geg."
                    , jun = "birž."
                    , jul = "liep."
                    , aug = "rugp."
                    , sep = "rugs."
                    , oct = "spal."
                    , nov = "lapkr."
                    , dec = "gruod."
                    }
                , wide =
                    { jan = "sausio"
                    , feb = "vasario"
                    , mar = "kovo"
                    , apr = "balandžio"
                    , may = "gegužės"
                    , jun = "birželio"
                    , jul = "liepos"
                    , aug = "rugpjūčio"
                    , sep = "rugsėjo"
                    , oct = "spalio"
                    , nov = "lapkričio"
                    , dec = "gruodžio"
                    }
                , narrow =
                    { jan = "S"
                    , feb = "V"
                    , mar = "K"
                    , apr = "B"
                    , may = "G"
                    , jun = "B"
                    , jul = "L"
                    , aug = "R"
                    , sep = "R"
                    , oct = "S"
                    , nov = "L"
                    , dec = "G"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "saus."
                    , feb = "vas."
                    , mar = "kov."
                    , apr = "bal."
                    , may = "geg."
                    , jun = "birž."
                    , jul = "liep."
                    , aug = "rugp."
                    , sep = "rugs."
                    , oct = "spal."
                    , nov = "lapkr."
                    , dec = "gruod."
                    }
                , wide =
                    { jan = "sausis"
                    , feb = "vasaris"
                    , mar = "kovas"
                    , apr = "balandis"
                    , may = "gegužė"
                    , jun = "birželis"
                    , jul = "liepa"
                    , aug = "rugpjūtis"
                    , sep = "rugsėjis"
                    , oct = "spalis"
                    , nov = "lapkritis"
                    , dec = "gruodis"
                    }
                , narrow =
                    { jan = "S"
                    , feb = "V"
                    , mar = "K"
                    , apr = "B"
                    , may = "G"
                    , jun = "B"
                    , jul = "L"
                    , aug = "R"
                    , sep = "R"
                    , oct = "S"
                    , nov = "L"
                    , dec = "G"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "sk"
                    , mon = "pr"
                    , tue = "an"
                    , wed = "tr"
                    , thu = "kt"
                    , fri = "pn"
                    , sat = "št"
                    }
                , wide =
                    { sun = "sekmadienis"
                    , mon = "pirmadienis"
                    , tue = "antradienis"
                    , wed = "trečiadienis"
                    , thu = "ketvirtadienis"
                    , fri = "penktadienis"
                    , sat = "šeštadienis"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "P"
                    , tue = "A"
                    , wed = "T"
                    , thu = "K"
                    , fri = "P"
                    , sat = "Š"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "sk"
                    , mon = "pr"
                    , tue = "an"
                    , wed = "tr"
                    , thu = "kt"
                    , fri = "pn"
                    , sat = "št"
                    }
                , wide =
                    { sun = "sekmadienis"
                    , mon = "pirmadienis"
                    , tue = "antradienis"
                    , wed = "trečiadienis"
                    , thu = "ketvirtadienis"
                    , fri = "penktadienis"
                    , sat = "šeštadienis"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "P"
                    , tue = "A"
                    , wed = "T"
                    , thu = "K"
                    , fri = "P"
                    , sat = "Š"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "pr. Kr.", ad = "po Kr." }
                , wide = { bc = "prieš Kristų", ad = "po Kristaus" }
                , narrow = { bc = "pr. Kr.", ad = "po Kr." }
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
                , ( "d", "dd" )
                , ( "E", "ccc" )
                , ( "EBhm", "h:mm B, E" )
                , ( "EBhms", "h:mm:ss B, E" )
                , ( "Ed", "d, E" )
                , ( "Ehm", "hh:mm a, E" )
                , ( "EHm", "HH:mm, E" )
                , ( "Ehms", "hh:mm:ss a, E" )
                , ( "EHms", "HH:mm:ss, E" )
                , ( "Gy", "y 'm'. G" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "y-MM G" )
                , ( "GyMMMd", "y-MM-dd G" )
                , ( "GyMMMEd", "y-MM-dd G, E" )
                , ( "GyMMMM", "y 'm'. G, LLLL" )
                , ( "GyMMMMd", "y 'm'. G MMMM d 'd'." )
                , ( "GyMMMMEd", "y 'm'. G MMMM d 'd'., E" )
                , ( "h", "hh a" )
                , ( "H", "HH" )
                , ( "hm", "hh:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "hh:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "hh:mm:ss a; v" )
                , ( "Hmsv", "HH:mm:ss; v" )
                , ( "hmv", "hh:mm a; v" )
                , ( "Hmv", "HH:mm; v" )
                , ( "M", "MM" )
                , ( "Md", "MM-d" )
                , ( "MEd", "MM-dd, E" )
                , ( "MMdd", "MM-dd" )
                , ( "MMM", "MM" )
                , ( "MMMd", "MM-dd" )
                , ( "MMMEd", "MM-dd, E" )
                , ( "MMMM", "LLLL" )
                , ( "MMMMd", "MMMM d 'd'." )
                , ( "MMMMEd", "MMMM d 'd'., E" )
                , ( "MMMMW-count-one", "MMMM W 'sav'." )
                , ( "MMMMW-count-few", "MMMM W 'sav'." )
                , ( "MMMMW-count-many", "MMMM W 'sav'." )
                , ( "MMMMW-count-other", "MMMM W 'sav'." )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "y-MM" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "y-MM-dd, E" )
                , ( "yMMM", "y-MM" )
                , ( "yMMMd", "y-MM-dd" )
                , ( "yMMMEd", "y-MM-dd, E" )
                , ( "yMMMM", "y 'm'. LLLL" )
                , ( "yMMMMd", "y 'm'. MMMM d 'd'." )
                , ( "yMMMMEd", "y 'm'. MMMM d 'd'., E" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-one", "Y w 'sav'." )
                , ( "yw-count-few", "Y w 'sav'." )
                , ( "yw-count-many", "Y w 'sav'." )
                , ( "yw-count-other", "Y w 'sav'." )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
