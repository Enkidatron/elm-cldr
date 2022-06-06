module Generated.Af exposing (af, af_NA)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "af"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
af : Internal.Locale.Locale
af =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "af"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "vm."
                    , pm = "nm."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "die middag" )
                            , ( "evening1", "die aand" )
                            , ( "midnight", "middernag" )
                            , ( "morning1", "die oggend" )
                            , ( "night1", "die nag" )
                            ]
                    }
                , wide =
                    { am = "vm."
                    , pm = "nm."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "die middag" )
                            , ( "evening1", "die aand" )
                            , ( "midnight", "middernag" )
                            , ( "morning1", "die oggend" )
                            , ( "night1", "die nag" )
                            ]
                    }
                , narrow =
                    { am = "v"
                    , pm = "n"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "m" )
                            , ( "evening1", "a" )
                            , ( "midnight", "mn" )
                            , ( "morning1", "o" )
                            , ( "night1", "n" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "dd MMM y"
                , long = "dd MMMM y"
                , full = "EEEE dd MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan."
                    , feb = "Feb."
                    , mar = "Mrt."
                    , apr = "Apr."
                    , may = "Mei"
                    , jun = "Jun."
                    , jul = "Jul."
                    , aug = "Aug."
                    , sep = "Sep."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Des."
                    }
                , wide =
                    { jan = "Januarie"
                    , feb = "Februarie"
                    , mar = "Maart"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Junie"
                    , jul = "Julie"
                    , aug = "Augustus"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Desember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Jan."
                    , feb = "Feb."
                    , mar = "Mrt."
                    , apr = "Apr."
                    , may = "Mei"
                    , jun = "Jun."
                    , jul = "Jul."
                    , aug = "Aug."
                    , sep = "Sep."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Des."
                    }
                , wide =
                    { jan = "Januarie"
                    , feb = "Februarie"
                    , mar = "Maart"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Junie"
                    , jul = "Julie"
                    , aug = "Augustus"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Desember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "So."
                    , mon = "Ma."
                    , tue = "Di."
                    , wed = "Wo."
                    , thu = "Do."
                    , fri = "Vr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sondag"
                    , mon = "Maandag"
                    , tue = "Dinsdag"
                    , wed = "Woensdag"
                    , thu = "Donderdag"
                    , fri = "Vrydag"
                    , sat = "Saterdag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "So."
                    , mon = "Ma."
                    , tue = "Di."
                    , wed = "Wo."
                    , thu = "Do."
                    , fri = "Vr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sondag"
                    , mon = "Maandag"
                    , tue = "Dinsdag"
                    , wed = "Woensdag"
                    , thu = "Donderdag"
                    , fri = "Vrydag"
                    , sat = "Saterdag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v.C.", ad = "n.C." }
                , wide = { bc = "voor Christus", ad = "na Christus" }
                , narrow = { bc = "v.C.", ad = "n.C." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E hh:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E hh:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "dd MMM y G" )
                , ( "GyMMMEd", "E dd MMM y G" )
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
                , ( "Md", "dd-MM" )
                , ( "MEd", "E d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'van' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'van' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM-y" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "E y-MM-dd" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'week' w 'van' Y" )
                , ( "yw-count-other", "'week' w 'van' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE dd MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
af_NA : Internal.Locale.Locale
af_NA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "af"
            , script = Nothing
            , territory = Just "NA"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "vm."
                    , pm = "nm."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "die middag" )
                            , ( "evening1", "die aand" )
                            , ( "midnight", "middernag" )
                            , ( "morning1", "die oggend" )
                            , ( "night1", "die nag" )
                            ]
                    }
                , wide =
                    { am = "vm."
                    , pm = "nm."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "die middag" )
                            , ( "evening1", "die aand" )
                            , ( "midnight", "middernag" )
                            , ( "morning1", "die oggend" )
                            , ( "night1", "die nag" )
                            ]
                    }
                , narrow =
                    { am = "v"
                    , pm = "n"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "m" )
                            , ( "evening1", "a" )
                            , ( "midnight", "mn" )
                            , ( "morning1", "o" )
                            , ( "night1", "n" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "dd MMM y"
                , long = "dd MMMM y"
                , full = "EEEE dd MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan."
                    , feb = "Feb."
                    , mar = "Mrt."
                    , apr = "Apr."
                    , may = "Mei"
                    , jun = "Jun."
                    , jul = "Jul."
                    , aug = "Aug."
                    , sep = "Sep."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Des."
                    }
                , wide =
                    { jan = "Januarie"
                    , feb = "Februarie"
                    , mar = "Maart"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Junie"
                    , jul = "Julie"
                    , aug = "Augustus"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Desember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Jan."
                    , feb = "Feb."
                    , mar = "Mrt."
                    , apr = "Apr."
                    , may = "Mei"
                    , jun = "Jun."
                    , jul = "Jul."
                    , aug = "Aug."
                    , sep = "Sep."
                    , oct = "Okt."
                    , nov = "Nov."
                    , dec = "Des."
                    }
                , wide =
                    { jan = "Januarie"
                    , feb = "Februarie"
                    , mar = "Maart"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Junie"
                    , jul = "Julie"
                    , aug = "Augustus"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Desember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "So."
                    , mon = "Ma."
                    , tue = "Di."
                    , wed = "Wo."
                    , thu = "Do."
                    , fri = "Vr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sondag"
                    , mon = "Maandag"
                    , tue = "Dinsdag"
                    , wed = "Woensdag"
                    , thu = "Donderdag"
                    , fri = "Vrydag"
                    , sat = "Saterdag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "So."
                    , mon = "Ma."
                    , tue = "Di."
                    , wed = "Wo."
                    , thu = "Do."
                    , fri = "Vr."
                    , sat = "Sa."
                    }
                , wide =
                    { sun = "Sondag"
                    , mon = "Maandag"
                    , tue = "Dinsdag"
                    , wed = "Woensdag"
                    , thu = "Donderdag"
                    , fri = "Vrydag"
                    , sat = "Saterdag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v.C.", ad = "n.C." }
                , wide = { bc = "voor Christus", ad = "na Christus" }
                , narrow = { bc = "v.C.", ad = "n.C." }
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
                , ( "Bhm", "hh:mm B" )
                , ( "Bhms", "hh:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E hh:mm B" )
                , ( "EBhms", "E hh:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E hh:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E hh:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "dd MMM y G" )
                , ( "GyMMMEd", "E dd MMM y G" )
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
                , ( "Md", "dd-MM" )
                , ( "MEd", "E d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'van' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'van' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM-y" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "E y-MM-dd" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'week' w 'van' Y" )
                , ( "yw-count-other", "'week' w 'van' Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
