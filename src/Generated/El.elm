module Generated.El exposing (el, el_CY)

{-|

@docs el, el_CY

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
        [ ( "el"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 17, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 17, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el : Internal.Locale.Locale
el =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "el"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "π.μ."
                    , pm = "μ.μ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "μεσημ." )
                            , ( "evening1", "απόγ." )
                            , ( "morning1", "πρωί" )
                            , ( "night1", "βράδυ" )
                            ]
                    }
                , wide =
                    { am = "π.μ."
                    , pm = "μ.μ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "το μεσημέρι" )
                            , ( "evening1", "το απόγευμα" )
                            , ( "morning1", "το πρωί" )
                            , ( "night1", "το βράδυ" )
                            ]
                    }
                , narrow =
                    { am = "πμ"
                    , pm = "μμ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "μεσημ." )
                            , ( "evening1", "απόγ." )
                            , ( "morning1", "πρωί" )
                            , ( "night1", "βράδυ" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Ιαν"
                    , feb = "Φεβ"
                    , mar = "Μαρ"
                    , apr = "Απρ"
                    , may = "Μαΐ"
                    , jun = "Ιουν"
                    , jul = "Ιουλ"
                    , aug = "Αυγ"
                    , sep = "Σεπ"
                    , oct = "Οκτ"
                    , nov = "Νοε"
                    , dec = "Δεκ"
                    }
                , wide =
                    { jan = "Ιανουαρίου"
                    , feb = "Φεβρουαρίου"
                    , mar = "Μαρτίου"
                    , apr = "Απριλίου"
                    , may = "Μαΐου"
                    , jun = "Ιουνίου"
                    , jul = "Ιουλίου"
                    , aug = "Αυγούστου"
                    , sep = "Σεπτεμβρίου"
                    , oct = "Οκτωβρίου"
                    , nov = "Νοεμβρίου"
                    , dec = "Δεκεμβρίου"
                    }
                , narrow =
                    { jan = "Ι"
                    , feb = "Φ"
                    , mar = "Μ"
                    , apr = "Α"
                    , may = "Μ"
                    , jun = "Ι"
                    , jul = "Ι"
                    , aug = "Α"
                    , sep = "Σ"
                    , oct = "Ο"
                    , nov = "Ν"
                    , dec = "Δ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Ιαν"
                    , feb = "Φεβ"
                    , mar = "Μάρ"
                    , apr = "Απρ"
                    , may = "Μάι"
                    , jun = "Ιούν"
                    , jul = "Ιούλ"
                    , aug = "Αύγ"
                    , sep = "Σεπ"
                    , oct = "Οκτ"
                    , nov = "Νοέ"
                    , dec = "Δεκ"
                    }
                , wide =
                    { jan = "Ιανουάριος"
                    , feb = "Φεβρουάριος"
                    , mar = "Μάρτιος"
                    , apr = "Απρίλιος"
                    , may = "Μάιος"
                    , jun = "Ιούνιος"
                    , jul = "Ιούλιος"
                    , aug = "Αύγουστος"
                    , sep = "Σεπτέμβριος"
                    , oct = "Οκτώβριος"
                    , nov = "Νοέμβριος"
                    , dec = "Δεκέμβριος"
                    }
                , narrow =
                    { jan = "Ι"
                    , feb = "Φ"
                    , mar = "Μ"
                    , apr = "Α"
                    , may = "Μ"
                    , jun = "Ι"
                    , jul = "Ι"
                    , aug = "Α"
                    , sep = "Σ"
                    , oct = "Ο"
                    , nov = "Ν"
                    , dec = "Δ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Κυρ"
                    , mon = "Δευ"
                    , tue = "Τρί"
                    , wed = "Τετ"
                    , thu = "Πέμ"
                    , fri = "Παρ"
                    , sat = "Σάβ"
                    }
                , wide =
                    { sun = "Κυριακή"
                    , mon = "Δευτέρα"
                    , tue = "Τρίτη"
                    , wed = "Τετάρτη"
                    , thu = "Πέμπτη"
                    , fri = "Παρασκευή"
                    , sat = "Σάββατο"
                    }
                , narrow =
                    { sun = "Κ"
                    , mon = "Δ"
                    , tue = "Τ"
                    , wed = "Τ"
                    , thu = "Π"
                    , fri = "Π"
                    , sat = "Σ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Κυρ"
                    , mon = "Δευ"
                    , tue = "Τρί"
                    , wed = "Τετ"
                    , thu = "Πέμ"
                    , fri = "Παρ"
                    , sat = "Σάβ"
                    }
                , wide =
                    { sun = "Κυριακή"
                    , mon = "Δευτέρα"
                    , tue = "Τρίτη"
                    , wed = "Τετάρτη"
                    , thu = "Πέμπτη"
                    , fri = "Παρασκευή"
                    , sat = "Σάββατο"
                    }
                , narrow =
                    { sun = "Κ"
                    , mon = "Δ"
                    , tue = "Τ"
                    , wed = "Τ"
                    , thu = "Π"
                    , fri = "Π"
                    , sat = "Σ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "π.Χ.", ad = "μ.Χ." }
                , wide = { bc = "προ Χριστού", ad = "μετά Χριστόν" }
                , narrow = { bc = "π.Χ.", ad = "μ.Χ." }
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
                , long = "{1} - {0}"
                , full = "{1} - {0}"
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
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "LLL y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
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
                , ( "MEd", "E d/M" )
                , ( "MMM", "MMM" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMW-count-one", "εβδομάδα W του MMMM" )
                , ( "MMMMW-count-other", "εβδομάδα W του MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "εβδομάδα w του Y" )
                , ( "yw-count-other", "εβδομάδα w του Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el_CY : Internal.Locale.Locale
el_CY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "el"
            , script = Nothing
            , territory = Just "CY"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "π.μ."
                    , pm = "μ.μ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "μεσημ." )
                            , ( "evening1", "απόγ." )
                            , ( "morning1", "πρωί" )
                            , ( "night1", "βράδυ" )
                            ]
                    }
                , wide =
                    { am = "π.μ."
                    , pm = "μ.μ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "το μεσημέρι" )
                            , ( "evening1", "το απόγευμα" )
                            , ( "morning1", "το πρωί" )
                            , ( "night1", "το βράδυ" )
                            ]
                    }
                , narrow =
                    { am = "πμ"
                    , pm = "μμ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "μεσημ." )
                            , ( "evening1", "απόγ." )
                            , ( "morning1", "πρωί" )
                            , ( "night1", "βράδυ" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Ιαν"
                    , feb = "Φεβ"
                    , mar = "Μαρ"
                    , apr = "Απρ"
                    , may = "Μαΐ"
                    , jun = "Ιουν"
                    , jul = "Ιουλ"
                    , aug = "Αυγ"
                    , sep = "Σεπ"
                    , oct = "Οκτ"
                    , nov = "Νοε"
                    , dec = "Δεκ"
                    }
                , wide =
                    { jan = "Ιανουαρίου"
                    , feb = "Φεβρουαρίου"
                    , mar = "Μαρτίου"
                    , apr = "Απριλίου"
                    , may = "Μαΐου"
                    , jun = "Ιουνίου"
                    , jul = "Ιουλίου"
                    , aug = "Αυγούστου"
                    , sep = "Σεπτεμβρίου"
                    , oct = "Οκτωβρίου"
                    , nov = "Νοεμβρίου"
                    , dec = "Δεκεμβρίου"
                    }
                , narrow =
                    { jan = "Ι"
                    , feb = "Φ"
                    , mar = "Μ"
                    , apr = "Α"
                    , may = "Μ"
                    , jun = "Ι"
                    , jul = "Ι"
                    , aug = "Α"
                    , sep = "Σ"
                    , oct = "Ο"
                    , nov = "Ν"
                    , dec = "Δ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Ιαν"
                    , feb = "Φεβ"
                    , mar = "Μάρ"
                    , apr = "Απρ"
                    , may = "Μάι"
                    , jun = "Ιούν"
                    , jul = "Ιούλ"
                    , aug = "Αύγ"
                    , sep = "Σεπ"
                    , oct = "Οκτ"
                    , nov = "Νοέ"
                    , dec = "Δεκ"
                    }
                , wide =
                    { jan = "Ιανουάριος"
                    , feb = "Φεβρουάριος"
                    , mar = "Μάρτιος"
                    , apr = "Απρίλιος"
                    , may = "Μάιος"
                    , jun = "Ιούνιος"
                    , jul = "Ιούλιος"
                    , aug = "Αύγουστος"
                    , sep = "Σεπτέμβριος"
                    , oct = "Οκτώβριος"
                    , nov = "Νοέμβριος"
                    , dec = "Δεκέμβριος"
                    }
                , narrow =
                    { jan = "Ι"
                    , feb = "Φ"
                    , mar = "Μ"
                    , apr = "Α"
                    , may = "Μ"
                    , jun = "Ι"
                    , jul = "Ι"
                    , aug = "Α"
                    , sep = "Σ"
                    , oct = "Ο"
                    , nov = "Ν"
                    , dec = "Δ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Κυρ"
                    , mon = "Δευ"
                    , tue = "Τρί"
                    , wed = "Τετ"
                    , thu = "Πέμ"
                    , fri = "Παρ"
                    , sat = "Σάβ"
                    }
                , wide =
                    { sun = "Κυριακή"
                    , mon = "Δευτέρα"
                    , tue = "Τρίτη"
                    , wed = "Τετάρτη"
                    , thu = "Πέμπτη"
                    , fri = "Παρασκευή"
                    , sat = "Σάββατο"
                    }
                , narrow =
                    { sun = "Κ"
                    , mon = "Δ"
                    , tue = "Τ"
                    , wed = "Τ"
                    , thu = "Π"
                    , fri = "Π"
                    , sat = "Σ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Κυρ"
                    , mon = "Δευ"
                    , tue = "Τρί"
                    , wed = "Τετ"
                    , thu = "Πέμ"
                    , fri = "Παρ"
                    , sat = "Σάβ"
                    }
                , wide =
                    { sun = "Κυριακή"
                    , mon = "Δευτέρα"
                    , tue = "Τρίτη"
                    , wed = "Τετάρτη"
                    , thu = "Πέμπτη"
                    , fri = "Παρασκευή"
                    , sat = "Σάββατο"
                    }
                , narrow =
                    { sun = "Κ"
                    , mon = "Δ"
                    , tue = "Τ"
                    , wed = "Τ"
                    , thu = "Π"
                    , fri = "Π"
                    , sat = "Σ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "π.Χ.", ad = "μ.Χ." }
                , wide = { bc = "προ Χριστού", ad = "μετά Χριστόν" }
                , narrow = { bc = "π.Χ.", ad = "μ.Χ." }
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
                , long = "{1} - {0}"
                , full = "{1} - {0}"
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
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "LLL y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
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
                , ( "MEd", "E d/M" )
                , ( "MMM", "MMM" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMW-count-one", "εβδομάδα W του MMMM" )
                , ( "MMMMW-count-other", "εβδομάδα W του MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "εβδομάδα w του Y" )
                , ( "yw-count-other", "εβδομάδα w του Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
