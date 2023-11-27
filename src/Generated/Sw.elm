module Generated.Sw exposing (sw, sw_CD, sw_KE, sw_UG)

{-|

@docs sw, sw_CD, sw_KE, sw_UG

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
        [ ( "sw"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 7, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 7, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw : Internal.Locale.Locale
sw =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sw"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "saa sita za usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "adhuhuri" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "saa sita za usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "saa sita za mchana" )
                            ]
                    }
                , narrow =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "mchana" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ago"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Machi"
                    , apr = "Aprili"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Julai"
                    , aug = "Agosti"
                    , sep = "Septemba"
                    , oct = "Oktoba"
                    , nov = "Novemba"
                    , dec = "Desemba"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ago"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Machi"
                    , apr = "Aprili"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Julai"
                    , aug = "Agosti"
                    , sep = "Septemba"
                    , oct = "Oktoba"
                    , nov = "Novemba"
                    , dec = "Desemba"
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
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , wide =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "W"
                    , thu = "T"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , wide =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "W"
                    , thu = "T"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "KK", ad = "BK" }
                , wide = { bc = "Kabla ya Kristo", ad = "Baada ya Kristo" }
                , narrow = { bc = "KK", ad = "BK" }
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
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'wiki' W 'ya' MMMM" )
                , ( "MMMMW-count-other", "'wiki' W 'ya' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'wiki' w 'ya' Y" )
                , ( "yw-count-other", "'wiki' w 'ya' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw_CD : Internal.Locale.Locale
sw_CD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sw"
            , script = Nothing
            , territory = Just "CD"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "saa sita za usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "adhuhuri" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "saa sita za usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "saa sita za mchana" )
                            ]
                    }
                , narrow =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "mchana" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ago"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Machi"
                    , apr = "Aprili"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Julai"
                    , aug = "Agosti"
                    , sep = "Septemba"
                    , oct = "Oktoba"
                    , nov = "Novemba"
                    , dec = "Desemba"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ago"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Machi"
                    , apr = "Aprili"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Julai"
                    , aug = "Agosti"
                    , sep = "Septemba"
                    , oct = "Oktoba"
                    , nov = "Novemba"
                    , dec = "Desemba"
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
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , wide =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "W"
                    , thu = "T"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , wide =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "W"
                    , thu = "T"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "KK", ad = "BK" }
                , wide = { bc = "Kabla ya Kristo", ad = "Baada ya Kristo" }
                , narrow = { bc = "KK", ad = "BK" }
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
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'wiki' W 'ya' MMMM" )
                , ( "MMMMW-count-other", "'wiki' W 'ya' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'wiki' w 'ya' Y" )
                , ( "yw-count-other", "'wiki' w 'ya' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw_KE : Internal.Locale.Locale
sw_KE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sw"
            , script = Nothing
            , territory = Just "KE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "saa sita za usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "adhuhuri" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "saa sita za usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "saa sita za mchana" )
                            ]
                    }
                , narrow =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "mchana" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ago"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Machi"
                    , apr = "Aprili"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Julai"
                    , aug = "Agosti"
                    , sep = "Septemba"
                    , oct = "Oktoba"
                    , nov = "Novemba"
                    , dec = "Desemba"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ago"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Machi"
                    , apr = "Aprili"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Julai"
                    , aug = "Agosti"
                    , sep = "Septemba"
                    , oct = "Oktoba"
                    , nov = "Novemba"
                    , dec = "Desemba"
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
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , wide =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "W"
                    , thu = "T"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , wide =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "W"
                    , thu = "T"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "KK", ad = "BK" }
                , wide = { bc = "Kabla ya Kristo", ad = "Baada ya Kristo" }
                , narrow = { bc = "KK", ad = "BK" }
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
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y G" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'wiki' W 'ya' MMMM" )
                , ( "MMMMW-count-other", "'wiki' W 'ya' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'wiki' w 'ya' Y" )
                , ( "yw-count-other", "'wiki' w 'ya' Y" )
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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw_UG : Internal.Locale.Locale
sw_UG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sw"
            , script = Nothing
            , territory = Just "UG"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "saa sita za usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "adhuhuri" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "saa sita za usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "saa sita za mchana" )
                            ]
                    }
                , narrow =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "mchana" )
                            , ( "evening1", "jioni" )
                            , ( "midnight", "usiku" )
                            , ( "morning1", "alfajiri" )
                            , ( "morning2", "asubuhi" )
                            , ( "night1", "usiku" )
                            , ( "noon", "mchana" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ago"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Machi"
                    , apr = "Aprili"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Julai"
                    , aug = "Agosti"
                    , sep = "Septemba"
                    , oct = "Oktoba"
                    , nov = "Novemba"
                    , dec = "Desemba"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ago"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Machi"
                    , apr = "Aprili"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Julai"
                    , aug = "Agosti"
                    , sep = "Septemba"
                    , oct = "Oktoba"
                    , nov = "Novemba"
                    , dec = "Desemba"
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
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , wide =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "W"
                    , thu = "T"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , wide =
                    { sun = "Jumapili"
                    , mon = "Jumatatu"
                    , tue = "Jumanne"
                    , wed = "Jumatano"
                    , thu = "Alhamisi"
                    , fri = "Ijumaa"
                    , sat = "Jumamosi"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "W"
                    , thu = "T"
                    , fri = "F"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "KK", ad = "BK" }
                , wide = { bc = "Kabla ya Kristo", ad = "Baada ya Kristo" }
                , narrow = { bc = "KK", ad = "BK" }
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
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'wiki' W 'ya' MMMM" )
                , ( "MMMMW-count-other", "'wiki' W 'ya' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'wiki' w 'ya' Y" )
                , ( "yw-count-other", "'wiki' w 'ya' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
