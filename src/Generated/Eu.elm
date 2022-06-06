module Generated.Eu exposing (eu)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "eu"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : yy/M/d
  - Medium : y('e')'ko' MMM d('a')
  - Long : y('e')'ko' MMMM'ren' d('a')
  - Full : y('e')'ko' MMMM'ren' d('a'), EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss (z)
  - Full : HH:mm:ss (zzzz)

-}
eu : Internal.Locale.Locale
eu =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "eu"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "eguerd." )
                            , ( "afternoon2", "arrats." )
                            , ( "evening1", "iluntz." )
                            , ( "midnight", "gauerdia" )
                            , ( "morning1", "goizald." )
                            , ( "morning2", "goizeko" )
                            , ( "night1", "gaueko" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "eguerdiko" )
                            , ( "afternoon2", "arratsaldeko" )
                            , ( "evening1", "iluntzeko" )
                            , ( "midnight", "gauerdia" )
                            , ( "morning1", "goizaldeko" )
                            , ( "morning2", "goizeko" )
                            , ( "night1", "gaueko" )
                            ]
                    }
                , narrow =
                    { am = "g"
                    , pm = "a"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "eguerd." )
                            , ( "afternoon2", "arrats." )
                            , ( "evening1", "iluntz." )
                            , ( "midnight", "gauerdia" )
                            , ( "morning1", "goizald." )
                            , ( "morning2", "goizeko" )
                            , ( "night1", "gaueko" )
                            ]
                    }
                }
            , datePatterns =
                { short = "yy/M/d"
                , medium = "y('e')'ko' MMM d('a')"
                , long = "y('e')'ko' MMMM'ren' d('a')"
                , full = "y('e')'ko' MMMM'ren' d('a'), EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "urt."
                    , feb = "ots."
                    , mar = "mar."
                    , apr = "api."
                    , may = "mai."
                    , jun = "eka."
                    , jul = "uzt."
                    , aug = "abu."
                    , sep = "ira."
                    , oct = "urr."
                    , nov = "aza."
                    , dec = "abe."
                    }
                , wide =
                    { jan = "urtarrilak"
                    , feb = "otsailak"
                    , mar = "martxoak"
                    , apr = "apirilak"
                    , may = "maiatzak"
                    , jun = "ekainak"
                    , jul = "uztailak"
                    , aug = "abuztuak"
                    , sep = "irailak"
                    , oct = "urriak"
                    , nov = "azaroak"
                    , dec = "abenduak"
                    }
                , narrow =
                    { jan = "U"
                    , feb = "O"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "E"
                    , jul = "U"
                    , aug = "A"
                    , sep = "I"
                    , oct = "U"
                    , nov = "A"
                    , dec = "A"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "urt."
                    , feb = "ots."
                    , mar = "mar."
                    , apr = "api."
                    , may = "mai."
                    , jun = "eka."
                    , jul = "uzt."
                    , aug = "abu."
                    , sep = "ira."
                    , oct = "urr."
                    , nov = "aza."
                    , dec = "abe."
                    }
                , wide =
                    { jan = "urtarrila"
                    , feb = "otsaila"
                    , mar = "martxoa"
                    , apr = "apirila"
                    , may = "maiatza"
                    , jun = "ekaina"
                    , jul = "uztaila"
                    , aug = "abuztua"
                    , sep = "iraila"
                    , oct = "urria"
                    , nov = "azaroa"
                    , dec = "abendua"
                    }
                , narrow =
                    { jan = "U"
                    , feb = "O"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "E"
                    , jul = "U"
                    , aug = "A"
                    , sep = "I"
                    , oct = "U"
                    , nov = "A"
                    , dec = "A"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ig."
                    , mon = "al."
                    , tue = "ar."
                    , wed = "az."
                    , thu = "og."
                    , fri = "or."
                    , sat = "lr."
                    }
                , wide =
                    { sun = "igandea"
                    , mon = "astelehena"
                    , tue = "asteartea"
                    , wed = "asteazkena"
                    , thu = "osteguna"
                    , fri = "ostirala"
                    , sat = "larunbata"
                    }
                , narrow =
                    { sun = "I"
                    , mon = "A"
                    , tue = "A"
                    , wed = "A"
                    , thu = "O"
                    , fri = "O"
                    , sat = "L"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ig."
                    , mon = "al."
                    , tue = "ar."
                    , wed = "az."
                    , thu = "og."
                    , fri = "or."
                    , sat = "lr."
                    }
                , wide =
                    { sun = "igandea"
                    , mon = "astelehena"
                    , tue = "asteartea"
                    , wed = "asteazkena"
                    , thu = "osteguna"
                    , fri = "ostirala"
                    , sat = "larunbata"
                    }
                , narrow =
                    { sun = "I"
                    , mon = "A"
                    , tue = "A"
                    , wed = "A"
                    , thu = "O"
                    , fri = "O"
                    , sat = "L"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "K.a.", ad = "K.o." }
                , wide = { bc = "K.a.", ad = "Kristo ondoren" }
                , narrow = { bc = "a", ad = "o" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss (z)"
                , full = "HH:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d, E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y. 'urteko' MMM" )
                , ( "GyMMMd", "G y. 'urteko' MMM d" )
                , ( "GyMMMEd", "G y. 'urteko' MMM d, E" )
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
                , ( "MEd", "M/d, E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "MMM d, E" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-one", "MMMM W. 'astea'" )
                , ( "MMMMW-count-other", "MMMM W. 'astea'" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "y/M" )
                , ( "yMd", "y/M/d" )
                , ( "yMEd", "y/M/d, E" )
                , ( "yMMM", "y MMM" )
                , ( "yMMMd", "y MMM d" )
                , ( "yMMMEd", "y MMM d, E" )
                , ( "yMMMM", "y('e')'ko' MMMM" )
                , ( "yMMMMd", "y('e')'ko' MMMM'ren' d" )
                , ( "yMMMMEd", "y('e')'ko' MMMM'k' d, E" )
                , ( "yQQQ", "y('e')'ko' QQQ" )
                , ( "yQQQQ", "y('e')'ko' QQQQ" )
                , ( "yw-count-one", "Y. 'urteko' w. 'astea'" )
                , ( "yw-count-other", "Y. 'urteko' w. 'astea'" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
