module Generated.Ha exposing (ha, ha_GH, ha_NE)

{-|

@docs ha, ha_GH, ha_NE

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.Structures


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ha : Internal.Locale.Locale
ha =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ha"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "SF", pm = "YM", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "Safiya"
                    , pm = "Yamma"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "SF", pm = "YM", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Fab"
                    , mar = "Mar"
                    , apr = "Afi"
                    , may = "May"
                    , jun = "Yun"
                    , jul = "Yul"
                    , aug = "Agu"
                    , sep = "Sat"
                    , oct = "Okt"
                    , nov = "Nuw"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Janairu"
                    , feb = "Faburairu"
                    , mar = "Maris"
                    , apr = "Afirilu"
                    , may = "Mayu"
                    , jun = "Yuni"
                    , jul = "Yuli"
                    , aug = "Agusta"
                    , sep = "Satumba"
                    , oct = "Oktoba"
                    , nov = "Nuwamba"
                    , dec = "Disamba"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "Y"
                    , jul = "Y"
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
                    , feb = "Fab"
                    , mar = "Mar"
                    , apr = "Afi"
                    , may = "May"
                    , jun = "Yun"
                    , jul = "Yul"
                    , aug = "Agu"
                    , sep = "Sat"
                    , oct = "Okt"
                    , nov = "Nuw"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Janairu"
                    , feb = "Faburairu"
                    , mar = "Maris"
                    , apr = "Afirilu"
                    , may = "Mayu"
                    , jun = "Yuni"
                    , jul = "Yuli"
                    , aug = "Agusta"
                    , sep = "Satumba"
                    , oct = "Oktoba"
                    , nov = "Nuwamba"
                    , dec = "Disamba"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "Y"
                    , jul = "Y"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Lah"
                    , mon = "Lit"
                    , tue = "Tal"
                    , wed = "Lar"
                    , thu = "Alh"
                    , fri = "Jum"
                    , sat = "Asa"
                    }
                , wide =
                    { sun = "Lahadi"
                    , mon = "Litinin"
                    , tue = "Talata"
                    , wed = "Laraba"
                    , thu = "Alhamis"
                    , fri = "Jummaʼa"
                    , sat = "Asabar"
                    }
                , narrow =
                    { sun = "L"
                    , mon = "L"
                    , tue = "T"
                    , wed = "L"
                    , thu = "A"
                    , fri = "J"
                    , sat = "A"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Lah"
                    , mon = "Lit"
                    , tue = "Tal"
                    , wed = "Lar"
                    , thu = "Alh"
                    , fri = "Jum"
                    , sat = "Asa"
                    }
                , wide =
                    { sun = "Lahadi"
                    , mon = "Litinin"
                    , tue = "Talata"
                    , wed = "Laraba"
                    , thu = "Alhamis"
                    , fri = "Jummaʼa"
                    , sat = "Asabar"
                    }
                , narrow =
                    { sun = "L"
                    , mon = "L"
                    , tue = "T"
                    , wed = "L"
                    , thu = "A"
                    , fri = "J"
                    , sat = "A"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "K.H", ad = "BHAI" }
                , wide =
                    { bc = "Kafin haihuwar annab", ad = "Bayan haihuwar annab" }
                , narrow = { bc = "K.H", ad = "BHAI" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
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
                , ( "Ed", "E, d" )
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
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
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
                , ( "MMMMEd", "E, MMMM d" )
                , ( "MMMMW-count-one", "'satin' W 'cikin' MMMM" )
                , ( "MMMMW-count-other", "'satin' W 'cikin' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "E, M/d/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "y MMM d, E" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'sati' w 'cikin' Y" )
                , ( "yw-count-other", "'sati' w 'cikin' Y" )
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

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ha_GH : Internal.Locale.Locale
ha_GH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ha"
            , script = Nothing
            , territory = Just "GH"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "SF", pm = "YM", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "Safiya"
                    , pm = "Yamma"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "SF", pm = "YM", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Fab"
                    , mar = "Mar"
                    , apr = "Afi"
                    , may = "May"
                    , jun = "Yun"
                    , jul = "Yul"
                    , aug = "Agu"
                    , sep = "Sat"
                    , oct = "Okt"
                    , nov = "Nuw"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Janairu"
                    , feb = "Faburairu"
                    , mar = "Maris"
                    , apr = "Afirilu"
                    , may = "Mayu"
                    , jun = "Yuni"
                    , jul = "Yuli"
                    , aug = "Agusta"
                    , sep = "Satumba"
                    , oct = "Oktoba"
                    , nov = "Nuwamba"
                    , dec = "Disamba"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "Y"
                    , jul = "Y"
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
                    , feb = "Fab"
                    , mar = "Mar"
                    , apr = "Afi"
                    , may = "May"
                    , jun = "Yun"
                    , jul = "Yul"
                    , aug = "Agu"
                    , sep = "Sat"
                    , oct = "Okt"
                    , nov = "Nuw"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Janairu"
                    , feb = "Faburairu"
                    , mar = "Maris"
                    , apr = "Afirilu"
                    , may = "Mayu"
                    , jun = "Yuni"
                    , jul = "Yuli"
                    , aug = "Agusta"
                    , sep = "Satumba"
                    , oct = "Oktoba"
                    , nov = "Nuwamba"
                    , dec = "Disamba"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "Y"
                    , jul = "Y"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Lah"
                    , mon = "Lit"
                    , tue = "Tal"
                    , wed = "Lar"
                    , thu = "Alh"
                    , fri = "Jum"
                    , sat = "Asa"
                    }
                , wide =
                    { sun = "Lahadi"
                    , mon = "Litinin"
                    , tue = "Talata"
                    , wed = "Laraba"
                    , thu = "Alhamis"
                    , fri = "Jummaʼa"
                    , sat = "Asabar"
                    }
                , narrow =
                    { sun = "L"
                    , mon = "L"
                    , tue = "T"
                    , wed = "L"
                    , thu = "A"
                    , fri = "J"
                    , sat = "A"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Lah"
                    , mon = "Lit"
                    , tue = "Tal"
                    , wed = "Lar"
                    , thu = "Alh"
                    , fri = "Jum"
                    , sat = "Asa"
                    }
                , wide =
                    { sun = "Lahadi"
                    , mon = "Litinin"
                    , tue = "Talata"
                    , wed = "Laraba"
                    , thu = "Alhamis"
                    , fri = "Jummaʼa"
                    , sat = "Asabar"
                    }
                , narrow =
                    { sun = "L"
                    , mon = "L"
                    , tue = "T"
                    , wed = "L"
                    , thu = "A"
                    , fri = "J"
                    , sat = "A"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "K.H", ad = "BHAI" }
                , wide =
                    { bc = "Kafin haihuwar annab", ad = "Bayan haihuwar annab" }
                , narrow = { bc = "K.H", ad = "BHAI" }
                }
            , timePatterns =
                { short = "h:mm\u{202F}a"
                , medium = "h:mm:ss\u{202F}a"
                , long = "h:mm:ss\u{202F}a z"
                , full = "h:mm:ss\u{202F}a zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
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
                , ( "Ed", "E, d" )
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
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
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
                , ( "MMMMEd", "E, MMMM d" )
                , ( "MMMMW-count-one", "'satin' W 'cikin' MMMM" )
                , ( "MMMMW-count-other", "'satin' W 'cikin' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "E, M/d/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "y MMM d, E" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'sati' w 'cikin' Y" )
                , ( "yw-count-other", "'sati' w 'cikin' Y" )
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
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ha_NE : Internal.Locale.Locale
ha_NE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ha"
            , script = Nothing
            , territory = Just "NE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "SF", pm = "YM", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "Safiya"
                    , pm = "Yamma"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "SF", pm = "YM", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Fab"
                    , mar = "Mar"
                    , apr = "Afi"
                    , may = "May"
                    , jun = "Yun"
                    , jul = "Yul"
                    , aug = "Agu"
                    , sep = "Sat"
                    , oct = "Okt"
                    , nov = "Nuw"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Janairu"
                    , feb = "Faburairu"
                    , mar = "Maris"
                    , apr = "Afirilu"
                    , may = "Mayu"
                    , jun = "Yuni"
                    , jul = "Yuli"
                    , aug = "Agusta"
                    , sep = "Satumba"
                    , oct = "Oktoba"
                    , nov = "Nuwamba"
                    , dec = "Disamba"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "Y"
                    , jul = "Y"
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
                    , feb = "Fab"
                    , mar = "Mar"
                    , apr = "Afi"
                    , may = "May"
                    , jun = "Yun"
                    , jul = "Yul"
                    , aug = "Agu"
                    , sep = "Sat"
                    , oct = "Okt"
                    , nov = "Nuw"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Janairu"
                    , feb = "Faburairu"
                    , mar = "Maris"
                    , apr = "Afirilu"
                    , may = "Mayu"
                    , jun = "Yuni"
                    , jul = "Yuli"
                    , aug = "Agusta"
                    , sep = "Satumba"
                    , oct = "Oktoba"
                    , nov = "Nuwamba"
                    , dec = "Disamba"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "Y"
                    , jul = "Y"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Lah"
                    , mon = "Lit"
                    , tue = "Tal"
                    , wed = "Lar"
                    , thu = "Alh"
                    , fri = "Jum"
                    , sat = "Asa"
                    }
                , wide =
                    { sun = "Lahadi"
                    , mon = "Litinin"
                    , tue = "Talata"
                    , wed = "Laraba"
                    , thu = "Alhamis"
                    , fri = "Jummaʼa"
                    , sat = "Asabar"
                    }
                , narrow =
                    { sun = "L"
                    , mon = "L"
                    , tue = "T"
                    , wed = "L"
                    , thu = "A"
                    , fri = "J"
                    , sat = "A"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Lah"
                    , mon = "Lit"
                    , tue = "Tal"
                    , wed = "Lar"
                    , thu = "Alh"
                    , fri = "Jum"
                    , sat = "Asa"
                    }
                , wide =
                    { sun = "Lahadi"
                    , mon = "Litinin"
                    , tue = "Talata"
                    , wed = "Laraba"
                    , thu = "Alhamis"
                    , fri = "Jummaʼa"
                    , sat = "Asabar"
                    }
                , narrow =
                    { sun = "L"
                    , mon = "L"
                    , tue = "T"
                    , wed = "L"
                    , thu = "A"
                    , fri = "J"
                    , sat = "A"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "K.H", ad = "BHAI" }
                , wide =
                    { bc = "Kafin haihuwar annab", ad = "Bayan haihuwar annab" }
                , narrow = { bc = "K.H", ad = "BHAI" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
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
                , ( "Ed", "E, d" )
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
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
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
                , ( "MMMMEd", "E, MMMM d" )
                , ( "MMMMW-count-one", "'satin' W 'cikin' MMMM" )
                , ( "MMMMW-count-other", "'satin' W 'cikin' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "E, M/d/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "y MMM d, E" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'sati' w 'cikin' Y" )
                , ( "yw-count-other", "'sati' w 'cikin' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
