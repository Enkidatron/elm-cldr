module Generated.Kn exposing (kn)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "kn"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : hh:mm a
  - Medium : hh:mm:ss a
  - Long : hh:mm:ss a z
  - Full : hh:mm:ss a zzzz

-}
kn : Internal.Locale.Locale
kn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "kn"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ಪೂರ್ವಾಹ್ನ"
                    , pm = "ಅಪರಾಹ್ನ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ಮಧ್ಯಾಹ್ನ" )
                            , ( "evening1", "ಸಂಜೆ" )
                            , ( "midnight", "ಮಧ್ಯ ರಾತ್ರಿ" )
                            , ( "morning1", "ಬೆಳಗ್ಗೆ" )
                            , ( "night1", "ರಾತ್ರಿ" )
                            ]
                    }
                , wide =
                    { am = "ಪೂರ್ವಾಹ್ನ"
                    , pm = "ಅಪರಾಹ್ನ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ಮಧ್ಯಾಹ್ನ" )
                            , ( "evening1", "ಸಂಜೆ" )
                            , ( "midnight", "ಮಧ್ಯ ರಾತ್ರಿ" )
                            , ( "morning1", "ಬೆಳಗ್ಗೆ" )
                            , ( "night1", "ರಾತ್ರಿ" )
                            ]
                    }
                , narrow =
                    { am = "ಪೂ"
                    , pm = "ಅ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ಮಧ್ಯಾಹ್ನ" )
                            , ( "evening1", "ಸಂಜೆ" )
                            , ( "midnight", "ಮಧ್ಯರಾತ್ರಿ" )
                            , ( "morning1", "ಬೆಳಗ್ಗೆ" )
                            , ( "night1", "ರಾತ್ರಿ" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "MMM d, y"
                , long = "MMMM d, y"
                , full = "EEEE, MMMM d, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ಜನವರಿ"
                    , feb = "ಫೆಬ್ರವರಿ"
                    , mar = "ಮಾರ್ಚ್"
                    , apr = "ಏಪ್ರಿ"
                    , may = "ಮೇ"
                    , jun = "ಜೂನ್"
                    , jul = "ಜುಲೈ"
                    , aug = "ಆಗ"
                    , sep = "ಸೆಪ್ಟೆಂ"
                    , oct = "ಅಕ್ಟೋ"
                    , nov = "ನವೆಂ"
                    , dec = "ಡಿಸೆಂ"
                    }
                , wide =
                    { jan = "ಜನವರಿ"
                    , feb = "ಫೆಬ್ರವರಿ"
                    , mar = "ಮಾರ್ಚ್"
                    , apr = "ಏಪ್ರಿಲ್"
                    , may = "ಮೇ"
                    , jun = "ಜೂನ್"
                    , jul = "ಜುಲೈ"
                    , aug = "ಆಗಸ್ಟ್"
                    , sep = "ಸೆಪ್ಟೆಂಬರ್"
                    , oct = "ಅಕ್ಟೋಬರ್"
                    , nov = "ನವೆಂಬರ್"
                    , dec = "ಡಿಸೆಂಬರ್"
                    }
                , narrow =
                    { jan = "ಜ"
                    , feb = "ಫೆ"
                    , mar = "ಮಾ"
                    , apr = "ಏ"
                    , may = "ಮೇ"
                    , jun = "ಜೂ"
                    , jul = "ಜು"
                    , aug = "ಆ"
                    , sep = "ಸೆ"
                    , oct = "ಅ"
                    , nov = "ನ"
                    , dec = "ಡಿ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ಜನ"
                    , feb = "ಫೆಬ್ರ"
                    , mar = "ಮಾರ್ಚ್"
                    , apr = "ಏಪ್ರಿ"
                    , may = "ಮೇ"
                    , jun = "ಜೂನ್"
                    , jul = "ಜುಲೈ"
                    , aug = "ಆಗ"
                    , sep = "ಸೆಪ್ಟೆಂ"
                    , oct = "ಅಕ್ಟೋ"
                    , nov = "ನವೆಂ"
                    , dec = "ಡಿಸೆಂ"
                    }
                , wide =
                    { jan = "ಜನವರಿ"
                    , feb = "ಫೆಬ್ರವರಿ"
                    , mar = "ಮಾರ್ಚ್"
                    , apr = "ಏಪ್ರಿಲ್"
                    , may = "ಮೇ"
                    , jun = "ಜೂನ್"
                    , jul = "ಜುಲೈ"
                    , aug = "ಆಗಸ್ಟ್"
                    , sep = "ಸೆಪ್ಟೆಂಬರ್"
                    , oct = "ಅಕ್ಟೋಬರ್"
                    , nov = "ನವೆಂಬರ್"
                    , dec = "ಡಿಸೆಂಬರ್"
                    }
                , narrow =
                    { jan = "ಜ"
                    , feb = "ಫೆ"
                    , mar = "ಮಾ"
                    , apr = "ಏ"
                    , may = "ಮೇ"
                    , jun = "ಜೂ"
                    , jul = "ಜು"
                    , aug = "ಆ"
                    , sep = "ಸೆ"
                    , oct = "ಅ"
                    , nov = "ನ"
                    , dec = "ಡಿ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ಭಾನು"
                    , mon = "ಸೋಮ"
                    , tue = "ಮಂಗಳ"
                    , wed = "ಬುಧ"
                    , thu = "ಗುರು"
                    , fri = "ಶುಕ್ರ"
                    , sat = "ಶನಿ"
                    }
                , wide =
                    { sun = "ಭಾನುವಾರ"
                    , mon = "ಸೋಮವಾರ"
                    , tue = "ಮಂಗಳವಾರ"
                    , wed = "ಬುಧವಾರ"
                    , thu = "ಗುರುವಾರ"
                    , fri = "ಶುಕ್ರವಾರ"
                    , sat = "ಶನಿವಾರ"
                    }
                , narrow =
                    { sun = "ಭಾ"
                    , mon = "ಸೋ"
                    , tue = "ಮಂ"
                    , wed = "ಬು"
                    , thu = "ಗು"
                    , fri = "ಶು"
                    , sat = "ಶ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ಭಾನು"
                    , mon = "ಸೋಮ"
                    , tue = "ಮಂಗಳ"
                    , wed = "ಬುಧ"
                    , thu = "ಗುರು"
                    , fri = "ಶುಕ್ರ"
                    , sat = "ಶನಿ"
                    }
                , wide =
                    { sun = "ಭಾನುವಾರ"
                    , mon = "ಸೋಮವಾರ"
                    , tue = "ಮಂಗಳವಾರ"
                    , wed = "ಬುಧವಾರ"
                    , thu = "ಗುರುವಾರ"
                    , fri = "ಶುಕ್ರವಾರ"
                    , sat = "ಶನಿವಾರ"
                    }
                , narrow =
                    { sun = "ಭಾ"
                    , mon = "ಸೋ"
                    , tue = "ಮಂ"
                    , wed = "ಬು"
                    , thu = "ಗು"
                    , fri = "ಶು"
                    , sat = "ಶ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ಕ್ರಿ.ಪೂ", ad = "ಕ್ರಿ.ಶ" }
                , wide = { bc = "ಕ್ರಿಸ್ತ ಪೂರ್ವ", ad = "ಕ್ರಿಸ್ತ ಶಕ" }
                , narrow = { bc = "ಕ್ರಿ.ಪೂ", ad = "ಕ್ರಿ.ಶ" }
                }
            , timePatterns =
                { short = "hh:mm a"
                , medium = "hh:mm:ss a"
                , long = "hh:mm:ss a z"
                , full = "hh:mm:ss a zzzz"
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
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
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
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'of' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, M/d/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "MMM d,y" )
                , ( "yMMMEd", "E, MMM d, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'week' w 'of' Y" )
                , ( "yw-count-other", "'week' w 'of' Y" )
                ]
            , timeSkeletons =
                { short = "ahhmm"
                , medium = "ahhmmss"
                , long = "ahhmmssz"
                , full = "ahhmmsszzzz"
                }
            }
        )
