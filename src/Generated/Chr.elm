module Generated.Chr exposing (chr)

{-|

@docs chr

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
        [ ( "chr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 24, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning1"
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

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
chr : Internal.Locale.Locale
chr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "chr"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ᏌᎾᎴ"
                    , pm = "ᏒᎯᏱᎢ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ᏒᎯᏱᎢᏗᏢ" )
                            , ( "morning1", "ᏌᎾᎴ" )
                            , ( "noon", "ᎢᎦ" )
                            ]
                    }
                , wide =
                    { am = "ᏌᎾᎴ"
                    , pm = "ᏒᎯᏱᎢᏗᏢ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ᏒᎯᏱᎢᏗᏢ" )
                            , ( "morning1", "ᏌᎾᎴ" )
                            , ( "noon", "ᎢᎦ" )
                            ]
                    }
                , narrow =
                    { am = "Ꮜ"
                    , pm = "Ꮢ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ᏒᎯᏱᎢᏗᏢ" )
                            , ( "morning1", "ᏌᎾᎴ" )
                            , ( "noon", "Ꭲ" )
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
                    { jan = "ᎤᏃ"
                    , feb = "ᎧᎦ"
                    , mar = "ᎠᏅ"
                    , apr = "ᎧᏬ"
                    , may = "ᎠᏂ"
                    , jun = "ᏕᎭ"
                    , jul = "ᎫᏰ"
                    , aug = "ᎦᎶ"
                    , sep = "ᏚᎵ"
                    , oct = "ᏚᏂ"
                    , nov = "ᏅᏓ"
                    , dec = "ᎥᏍ"
                    }
                , wide =
                    { jan = "ᎤᏃᎸᏔᏅ"
                    , feb = "ᎧᎦᎵ"
                    , mar = "ᎠᏅᏱ"
                    , apr = "ᎧᏬᏂ"
                    , may = "ᎠᏂᏍᎬᏘ"
                    , jun = "ᏕᎭᎷᏱ"
                    , jul = "ᎫᏰᏉᏂ"
                    , aug = "ᎦᎶᏂ"
                    , sep = "ᏚᎵᏍᏗ"
                    , oct = "ᏚᏂᏅᏗ"
                    , nov = "ᏅᏓᏕᏆ"
                    , dec = "ᎥᏍᎩᏱ"
                    }
                , narrow =
                    { jan = "Ꭴ"
                    , feb = "Ꭷ"
                    , mar = "Ꭰ"
                    , apr = "Ꭷ"
                    , may = "Ꭰ"
                    , jun = "Ꮥ"
                    , jul = "Ꭻ"
                    , aug = "Ꭶ"
                    , sep = "Ꮪ"
                    , oct = "Ꮪ"
                    , nov = "Ꮕ"
                    , dec = "Ꭵ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ᎤᏃ"
                    , feb = "ᎧᎦ"
                    , mar = "ᎠᏅ"
                    , apr = "ᎧᏬ"
                    , may = "ᎠᏂ"
                    , jun = "ᏕᎭ"
                    , jul = "ᎫᏰ"
                    , aug = "ᎦᎶ"
                    , sep = "ᏚᎵ"
                    , oct = "ᏚᏂ"
                    , nov = "ᏅᏓ"
                    , dec = "ᎥᏍ"
                    }
                , wide =
                    { jan = "ᎤᏃᎸᏔᏅ"
                    , feb = "ᎧᎦᎵ"
                    , mar = "ᎠᏅᏱ"
                    , apr = "ᎧᏬᏂ"
                    , may = "ᎠᏂᏍᎬᏘ"
                    , jun = "ᏕᎭᎷᏱ"
                    , jul = "ᎫᏰᏉᏂ"
                    , aug = "ᎦᎶᏂ"
                    , sep = "ᏚᎵᏍᏗ"
                    , oct = "ᏚᏂᏅᏗ"
                    , nov = "ᏅᏓᏕᏆ"
                    , dec = "ᎥᏍᎩᏱ"
                    }
                , narrow =
                    { jan = "Ꭴ"
                    , feb = "Ꭷ"
                    , mar = "Ꭰ"
                    , apr = "Ꭷ"
                    , may = "Ꭰ"
                    , jun = "Ꮥ"
                    , jul = "Ꭻ"
                    , aug = "Ꭶ"
                    , sep = "Ꮪ"
                    , oct = "Ꮪ"
                    , nov = "Ꮕ"
                    , dec = "Ꭵ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ᏆᏍᎬ"
                    , mon = "ᏉᏅᎯ"
                    , tue = "ᏔᎵᏁ"
                    , wed = "ᏦᎢᏁ"
                    , thu = "ᏅᎩᏁ"
                    , fri = "ᏧᎾᎩ"
                    , sat = "ᏈᏕᎾ"
                    }
                , wide =
                    { sun = "ᎤᎾᏙᏓᏆᏍᎬ"
                    , mon = "ᎤᎾᏙᏓᏉᏅᎯ"
                    , tue = "ᏔᎵᏁᎢᎦ"
                    , wed = "ᏦᎢᏁᎢᎦ"
                    , thu = "ᏅᎩᏁᎢᎦ"
                    , fri = "ᏧᎾᎩᎶᏍᏗ"
                    , sat = "ᎤᎾᏙᏓᏈᏕᎾ"
                    }
                , narrow =
                    { sun = "Ꮖ"
                    , mon = "Ꮙ"
                    , tue = "Ꮤ"
                    , wed = "Ꮶ"
                    , thu = "Ꮕ"
                    , fri = "Ꮷ"
                    , sat = "Ꭴ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ᏆᏍᎬ"
                    , mon = "ᏉᏅᎯ"
                    , tue = "ᏔᎵᏁ"
                    , wed = "ᏦᎢᏁ"
                    , thu = "ᏅᎩᏁ"
                    , fri = "ᏧᎾᎩ"
                    , sat = "ᏈᏕᎾ"
                    }
                , wide =
                    { sun = "ᎤᎾᏙᏓᏆᏍᎬ"
                    , mon = "ᎤᎾᏙᏓᏉᏅᎯ"
                    , tue = "ᏔᎵᏁᎢᎦ"
                    , wed = "ᏦᎢᏁᎢᎦ"
                    , thu = "ᏅᎩᏁᎢᎦ"
                    , fri = "ᏧᎾᎩᎶᏍᏗ"
                    , sat = "ᎤᎾᏙᏓᏈᏕᎾ"
                    }
                , narrow =
                    { sun = "Ꮖ"
                    , mon = "Ꮙ"
                    , tue = "Ꮤ"
                    , wed = "Ꮶ"
                    , thu = "Ꮕ"
                    , fri = "Ꮷ"
                    , sat = "Ꭴ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "ᏧᏓᎷᎸ ᎤᎷᎯᏍᏗ ᎦᎶᏁᏛ", ad = "ᎠᏃ ᏙᎻᏂ" }
                , narrow = { bc = "BC", ad = "AD" }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
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
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "M/d/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "MMM d, y G" )
                , ( "GyMMMEd", "E, MMM d, y G" )
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
                , ( "M", "L" )
                , ( "Md", "M/d" )
                , ( "MEd", "E, M/d" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "E, MMM d" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-one", "ᏒᎾᏙᏓᏆᏍᏗ W ᎾᎿ MMMM" )
                , ( "MMMMW-count-other", "ᏒᎾᏙᏓᏆᏍᏗ W ᎾᎿ MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "M/d/y" )
                , ( "yMEd", "E, M/d/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "MMM d, y" )
                , ( "yMMMEd", "E, MMM d, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "’ᏒᎾᏙᏓᏆᏍᏗ’ w ’ᎾᎿ’ Y" )
                , ( "yw-count-other", "’ᏒᎾᏙᏓᏆᏍᏗ’ w ’ᎾᎿ’ Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
