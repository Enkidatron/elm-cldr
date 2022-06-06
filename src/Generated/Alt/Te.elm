module Generated.Alt.Te exposing (te)

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
        [ ( "te"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd-MM-yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : d, MMMM y, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
te : Internal.Locale.Locale
te =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "te"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "మధ్యాహ్నం" )
                            , ( "evening1", "సాయంత్రం" )
                            , ( "midnight", "అర్ధరాత్రి" )
                            , ( "morning1", "ఉదయం" )
                            , ( "night1", "రాత్రి" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "మధ్యాహ్నం" )
                            , ( "evening1", "సాయంత్రం" )
                            , ( "midnight", "అర్ధరాత్రి" )
                            , ( "morning1", "ఉదయం" )
                            , ( "night1", "రాత్రి" )
                            ]
                    }
                , narrow =
                    { am = "ఉ"
                    , pm = "సా"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "మధ్యాహ్నం" )
                            , ( "evening1", "సాయంత్రం" )
                            , ( "midnight", "అర్ధరాత్రి" )
                            , ( "morning1", "ఉదయం" )
                            , ( "night1", "రాత్రి" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd-MM-yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "d, MMMM y, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "జన"
                    , feb = "ఫిబ్ర"
                    , mar = "మార్చి"
                    , apr = "ఏప్రి"
                    , may = "మే"
                    , jun = "జూన్"
                    , jul = "జులై"
                    , aug = "ఆగ"
                    , sep = "సెప్టెం"
                    , oct = "అక్టో"
                    , nov = "నవం"
                    , dec = "డిసెం"
                    }
                , wide =
                    { jan = "జనవరి"
                    , feb = "ఫిబ్రవరి"
                    , mar = "మార్చి"
                    , apr = "ఏప్రిల్"
                    , may = "మే"
                    , jun = "జూన్"
                    , jul = "జులై"
                    , aug = "ఆగస్టు"
                    , sep = "సెప్టెంబర్"
                    , oct = "అక్టోబర్"
                    , nov = "నవంబర్"
                    , dec = "డిసెంబర్"
                    }
                , narrow =
                    { jan = "జ"
                    , feb = "ఫి"
                    , mar = "మా"
                    , apr = "ఏ"
                    , may = "మే"
                    , jun = "జూ"
                    , jul = "జు"
                    , aug = "ఆ"
                    , sep = "సె"
                    , oct = "అ"
                    , nov = "న"
                    , dec = "డి"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "జన"
                    , feb = "ఫిబ్ర"
                    , mar = "మార్చి"
                    , apr = "ఏప్రి"
                    , may = "మే"
                    , jun = "జూన్"
                    , jul = "జులై"
                    , aug = "ఆగ"
                    , sep = "సెప్టెం"
                    , oct = "అక్టో"
                    , nov = "నవం"
                    , dec = "డిసెం"
                    }
                , wide =
                    { jan = "జనవరి"
                    , feb = "ఫిబ్రవరి"
                    , mar = "మార్చి"
                    , apr = "ఏప్రిల్"
                    , may = "మే"
                    , jun = "జూన్"
                    , jul = "జులై"
                    , aug = "ఆగస్టు"
                    , sep = "సెప్టెంబర్"
                    , oct = "అక్టోబర్"
                    , nov = "నవంబర్"
                    , dec = "డిసెంబర్"
                    }
                , narrow =
                    { jan = "జ"
                    , feb = "ఫి"
                    , mar = "మా"
                    , apr = "ఏ"
                    , may = "మే"
                    , jun = "జూ"
                    , jul = "జు"
                    , aug = "ఆ"
                    , sep = "సె"
                    , oct = "అ"
                    , nov = "న"
                    , dec = "డి"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ఆది"
                    , mon = "సోమ"
                    , tue = "మంగళ"
                    , wed = "బుధ"
                    , thu = "గురు"
                    , fri = "శుక్ర"
                    , sat = "శని"
                    }
                , wide =
                    { sun = "ఆదివారం"
                    , mon = "సోమవారం"
                    , tue = "మంగళవారం"
                    , wed = "బుధవారం"
                    , thu = "గురువారం"
                    , fri = "శుక్రవారం"
                    , sat = "శనివారం"
                    }
                , narrow =
                    { sun = "ఆ"
                    , mon = "సో"
                    , tue = "మ"
                    , wed = "బు"
                    , thu = "గు"
                    , fri = "శు"
                    , sat = "శ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ఆది"
                    , mon = "సోమ"
                    , tue = "మంగళ"
                    , wed = "బుధ"
                    , thu = "గురు"
                    , fri = "శుక్ర"
                    , sat = "శని"
                    }
                , wide =
                    { sun = "ఆదివారం"
                    , mon = "సోమవారం"
                    , tue = "మంగళవారం"
                    , wed = "బుధవారం"
                    , thu = "గురువారం"
                    , fri = "శుక్రవారం"
                    , sat = "శనివారం"
                    }
                , narrow =
                    { sun = "ఆ"
                    , mon = "సో"
                    , tue = "మ"
                    , wed = "బు"
                    , thu = "గు"
                    , fri = "శు"
                    , sat = "శ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "క్రీపూ", ad = "క్రీశ" }
                , wide = { bc = "క్రీస్తు పూర్వం", ad = "క్రీస్తు శకం" }
                , narrow = { bc = "క్రీపూ", ad = "క్రీశ" }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}కి"
                , full = "{1} {0}కి"
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
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G MMM y" )
                , ( "GyMMMd", "G d, MMM y" )
                , ( "GyMMMEd", "G, d MMM, y, E" )
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
                , ( "Md", "d/M" )
                , ( "MEd", "d/M, E" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "d MMM, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMMలో Wవ వారం" )
                , ( "MMMMW-count-other", "MMMMలో Wవ వారం" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "d/M/y, E" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d, MMM y" )
                , ( "yMMMEd", "d MMM, y, E" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Yలో wవ వారం" )
                , ( "yw-count-other", "Yలో wవ వారం" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
