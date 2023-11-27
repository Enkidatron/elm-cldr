module Generated.Am exposing (am)

{-|

@docs am

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
        [ ( "am"
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
am : Internal.Locale.Locale
am =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "am"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ጥዋት"
                    , pm = "ከሰዓት"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ከሰዓት" )
                            , ( "evening1", "በምሽት" )
                            , ( "midnight", "እኩለ ሌሊት" )
                            , ( "morning1", "ጥዋት" )
                            , ( "night1", "በሌሊት" )
                            , ( "noon", "ቀትር" )
                            ]
                    }
                , wide =
                    { am = "ጥዋት"
                    , pm = "ከሰዓት"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ከሰዓት" )
                            , ( "evening1", "በምሽት" )
                            , ( "midnight", "እኩለ ሌሊት" )
                            , ( "morning1", "ጥዋት" )
                            , ( "night1", "በሌሊት" )
                            , ( "noon", "ቀትር" )
                            ]
                    }
                , narrow =
                    { am = "ጠ"
                    , pm = "ከ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ከሰዓት" )
                            , ( "evening1", "በምሽት" )
                            , ( "midnight", "እኩለ ሌሊት" )
                            , ( "morning1", "ጥዋት" )
                            , ( "night1", "በሌሊት" )
                            , ( "noon", "ቀ" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "y MMMM d, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ጃን"
                    , feb = "ፌብ"
                    , mar = "ማርች"
                    , apr = "ኤፕሪ"
                    , may = "ሜይ"
                    , jun = "ጁን"
                    , jul = "ጁላይ"
                    , aug = "ኦገስ"
                    , sep = "ሴፕቴ"
                    , oct = "ኦክቶ"
                    , nov = "ኖቬም"
                    , dec = "ዲሴም"
                    }
                , wide =
                    { jan = "ጃንዋሪ"
                    , feb = "ፌብሩዋሪ"
                    , mar = "ማርች"
                    , apr = "ኤፕሪል"
                    , may = "ሜይ"
                    , jun = "ጁን"
                    , jul = "ጁላይ"
                    , aug = "ኦገስት"
                    , sep = "ሴፕቴምበር"
                    , oct = "ኦክቶበር"
                    , nov = "ኖቬምበር"
                    , dec = "ዲሴምበር"
                    }
                , narrow =
                    { jan = "ጃ"
                    , feb = "ፌ"
                    , mar = "ማ"
                    , apr = "ኤ"
                    , may = "ሜ"
                    , jun = "ጁ"
                    , jul = "ጁ"
                    , aug = "ኦ"
                    , sep = "ሴ"
                    , oct = "ኦ"
                    , nov = "ኖ"
                    , dec = "ዲ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ጃን"
                    , feb = "ፌብ"
                    , mar = "ማርች"
                    , apr = "ኤፕሪ"
                    , may = "ሜይ"
                    , jun = "ጁን"
                    , jul = "ጁላይ"
                    , aug = "ኦገስ"
                    , sep = "ሴፕቴ"
                    , oct = "ኦክቶ"
                    , nov = "ኖቬም"
                    , dec = "ዲሴም"
                    }
                , wide =
                    { jan = "ጃንዋሪ"
                    , feb = "ፌብሩዋሪ"
                    , mar = "ማርች"
                    , apr = "ኤፕሪል"
                    , may = "ሜይ"
                    , jun = "ጁን"
                    , jul = "ጁላይ"
                    , aug = "ኦገስት"
                    , sep = "ሴፕቴምበር"
                    , oct = "ኦክቶበር"
                    , nov = "ኖቬምበር"
                    , dec = "ዲሴምበር"
                    }
                , narrow =
                    { jan = "ጃ"
                    , feb = "ፌ"
                    , mar = "ማ"
                    , apr = "ኤ"
                    , may = "ሜ"
                    , jun = "ጁ"
                    , jul = "ጁ"
                    , aug = "ኦ"
                    , sep = "ሴ"
                    , oct = "ኦ"
                    , nov = "ኖ"
                    , dec = "ዲ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "እሑድ"
                    , mon = "ሰኞ"
                    , tue = "ማክሰ"
                    , wed = "ረቡዕ"
                    , thu = "ሐሙስ"
                    , fri = "ዓርብ"
                    , sat = "ቅዳሜ"
                    }
                , wide =
                    { sun = "እሑድ"
                    , mon = "ሰኞ"
                    , tue = "ማክሰኞ"
                    , wed = "ረቡዕ"
                    , thu = "ሐሙስ"
                    , fri = "ዓርብ"
                    , sat = "ቅዳሜ"
                    }
                , narrow =
                    { sun = "እ"
                    , mon = "ሰ"
                    , tue = "ማ"
                    , wed = "ረ"
                    , thu = "ሐ"
                    , fri = "ዓ"
                    , sat = "ቅ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "እሑድ"
                    , mon = "ሰኞ"
                    , tue = "ማክሰ"
                    , wed = "ረቡዕ"
                    , thu = "ሐሙስ"
                    , fri = "ዓርብ"
                    , sat = "ቅዳሜ"
                    }
                , wide =
                    { sun = "እሑድ"
                    , mon = "ሰኞ"
                    , tue = "ማክሰኞ"
                    , wed = "ረቡዕ"
                    , thu = "ሐሙስ"
                    , fri = "ዓርብ"
                    , sat = "ቅዳሜ"
                    }
                , narrow =
                    { sun = "እ"
                    , mon = "ሰ"
                    , tue = "ማ"
                    , wed = "ረ"
                    , thu = "ሐ"
                    , fri = "ዓ"
                    , sat = "ቅ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ዓ/ዓ", ad = "ዓ/ም" }
                , wide = { bc = "ዓመተ ዓለም", ad = "ዓመተ ምሕረት" }
                , narrow = { bc = "ዓ/ዓ", ad = "ዓ/ም" }
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
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "M/d/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "h a" )
                , ( "H", "H" )
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
                , ( "MEd", "E፣ M/d" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "E፣ MMM d" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMEd", "E፣ MMMM d" )
                , ( "MMMMW-count-one", "ሳምንት W የ MMMM" )
                , ( "MMMMW-count-other", "ሳምንት W የ MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E፣ d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E፣ MMM d y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-other", "'week' w 'of' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
