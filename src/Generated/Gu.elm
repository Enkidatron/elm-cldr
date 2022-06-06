module Generated.Gu exposing (gu)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "gu"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : hh:mm a
  - Medium : hh:mm:ss a
  - Long : hh:mm:ss a z
  - Full : hh:mm:ss a zzzz

-}
gu : Internal.Locale.Locale
gu =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "gu"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "બપોરે" )
                            , ( "evening1", "સાંજે" )
                            , ( "midnight", "મધ્યરાત્રિ" )
                            , ( "morning1", "સવારે" )
                            , ( "night1", "રાત્રે" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "બપોરે" )
                            , ( "evening1", "સાંજે" )
                            , ( "midnight", "મધ્યરાત્રિ" )
                            , ( "morning1", "સવારે" )
                            , ( "night1", "રાત્રે" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "બપોરે" )
                            , ( "evening1", "સાંજે" )
                            , ( "midnight", "મ.રાત્રિ" )
                            , ( "morning1", "સવારે" )
                            , ( "night1", "રાત્રે" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE, d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "જાન્યુ"
                    , feb = "ફેબ્રુ"
                    , mar = "માર્ચ"
                    , apr = "એપ્રિલ"
                    , may = "મે"
                    , jun = "જૂન"
                    , jul = "જુલાઈ"
                    , aug = "ઑગસ્ટ"
                    , sep = "સપ્ટે"
                    , oct = "ઑક્ટો"
                    , nov = "નવે"
                    , dec = "ડિસે"
                    }
                , wide =
                    { jan = "જાન્યુઆરી"
                    , feb = "ફેબ્રુઆરી"
                    , mar = "માર્ચ"
                    , apr = "એપ્રિલ"
                    , may = "મે"
                    , jun = "જૂન"
                    , jul = "જુલાઈ"
                    , aug = "ઑગસ્ટ"
                    , sep = "સપ્ટેમ્બર"
                    , oct = "ઑક્ટોબર"
                    , nov = "નવેમ્બર"
                    , dec = "ડિસેમ્બર"
                    }
                , narrow =
                    { jan = "જા"
                    , feb = "ફે"
                    , mar = "મા"
                    , apr = "એ"
                    , may = "મે"
                    , jun = "જૂ"
                    , jul = "જુ"
                    , aug = "ઑ"
                    , sep = "સ"
                    , oct = "ઑ"
                    , nov = "ન"
                    , dec = "ડિ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "જાન્યુ"
                    , feb = "ફેબ્રુ"
                    , mar = "માર્ચ"
                    , apr = "એપ્રિલ"
                    , may = "મે"
                    , jun = "જૂન"
                    , jul = "જુલાઈ"
                    , aug = "ઑગસ્ટ"
                    , sep = "સપ્ટે"
                    , oct = "ઑક્ટો"
                    , nov = "નવે"
                    , dec = "ડિસે"
                    }
                , wide =
                    { jan = "જાન્યુઆરી"
                    , feb = "ફેબ્રુઆરી"
                    , mar = "માર્ચ"
                    , apr = "એપ્રિલ"
                    , may = "મે"
                    , jun = "જૂન"
                    , jul = "જુલાઈ"
                    , aug = "ઑગસ્ટ"
                    , sep = "સપ્ટેમ્બર"
                    , oct = "ઑક્ટોબર"
                    , nov = "નવેમ્બર"
                    , dec = "ડિસેમ્બર"
                    }
                , narrow =
                    { jan = "જા"
                    , feb = "ફે"
                    , mar = "મા"
                    , apr = "એ"
                    , may = "મે"
                    , jun = "જૂ"
                    , jul = "જુ"
                    , aug = "ઑ"
                    , sep = "સ"
                    , oct = "ઑ"
                    , nov = "ન"
                    , dec = "ડિ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "રવિ"
                    , mon = "સોમ"
                    , tue = "મંગળ"
                    , wed = "બુધ"
                    , thu = "ગુરુ"
                    , fri = "શુક્ર"
                    , sat = "શનિ"
                    }
                , wide =
                    { sun = "રવિવાર"
                    , mon = "સોમવાર"
                    , tue = "મંગળવાર"
                    , wed = "બુધવાર"
                    , thu = "ગુરુવાર"
                    , fri = "શુક્રવાર"
                    , sat = "શનિવાર"
                    }
                , narrow =
                    { sun = "ર"
                    , mon = "સો"
                    , tue = "મં"
                    , wed = "બુ"
                    , thu = "ગુ"
                    , fri = "શુ"
                    , sat = "શ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "રવિ"
                    , mon = "સોમ"
                    , tue = "મંગળ"
                    , wed = "બુધ"
                    , thu = "ગુરુ"
                    , fri = "શુક્ર"
                    , sat = "શનિ"
                    }
                , wide =
                    { sun = "રવિવાર"
                    , mon = "સોમવાર"
                    , tue = "મંગળવાર"
                    , wed = "બુધવાર"
                    , thu = "ગુરુવાર"
                    , fri = "શુક્રવાર"
                    , sat = "શનિવાર"
                    }
                , narrow =
                    { sun = "ર"
                    , mon = "સો"
                    , tue = "મં"
                    , wed = "બુ"
                    , thu = "ગુ"
                    , fri = "શુ"
                    , sat = "શ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ઈ.સ.પૂર્વે", ad = "ઈ.સ." }
                , wide = { bc = "ઈસવીસન પૂર્વે", ad = "ઇસવીસન" }
                , narrow = { bc = "ઇ સ પુ", ad = "ઇસ" }
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
                , long = "{1} એ {0} વાગ્યે"
                , full = "{1} એ {0} વાગ્યે"
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
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "MMM, G y" )
                , ( "GyMMMd", "d MMM, G y" )
                , ( "GyMMMEd", "E, d MMM, G y" )
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
                , ( "MEd", "E, d/M" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMMના W અઠવાડિયા" )
                , ( "MMMMW-count-other", "MMMMના W અઠવાડિયા" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "E, d MMM, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-one", "Y ના w અઠવાડિયા" )
                , ( "yw-count-other", "Y ના w અઠવાડિયા" )
                ]
            , timeSkeletons =
                { short = "ahhmm"
                , medium = "ahhmmss"
                , long = "ahhmmssz"
                , full = "ahhmmsszzzz"
                }
            }
        )
