module Generated.So exposing (so, so_DJ, so_ET, so_KE)

{-|

@docs so, so_DJ, so_ET, so_KE

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

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
so : Internal.Locale.Locale
so =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "so"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "GH", pm = "GD", dayPeriods = Dict.fromList [] }
                , wide = { am = "GH", pm = "GD", dayPeriods = Dict.fromList [] }
                , narrow = { am = "h", pm = "d", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd-MMM-y"
                , long = "MMMM d, y"
                , full = "EEEE, MMMM d, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Jun"
                    , jul = "Lul"
                    , aug = "Ogs"
                    , sep = "Seb"
                    , oct = "Okt"
                    , nov = "Nof"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Bisha Koobaad"
                    , feb = "Bisha Labaad"
                    , mar = "Bisha Saddexaad"
                    , apr = "Bisha Afraad"
                    , may = "Bisha Shanaad"
                    , jun = "Bisha Lixaad"
                    , jul = "Bisha Todobaad"
                    , aug = "Bisha Sideedaad"
                    , sep = "Bisha Sagaalaad"
                    , oct = "Bisha Tobnaad"
                    , nov = "Bisha Kow iyo Tobnaad"
                    , dec = "Bisha Laba iyo Tobnaad"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "L"
                    , aug = "O"
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
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Jun"
                    , jul = "Lul"
                    , aug = "Ogs"
                    , sep = "Seb"
                    , oct = "Okt"
                    , nov = "Nof"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Jannaayo"
                    , feb = "Febraayo"
                    , mar = "Maarso"
                    , apr = "Abriil"
                    , may = "May"
                    , jun = "Juun"
                    , jul = "Luuliyo"
                    , aug = "Ogosto"
                    , sep = "Sebteembar"
                    , oct = "Oktoobar"
                    , nov = "Noofeembar"
                    , dec = "Diseembar"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "L"
                    , aug = "O"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Axd"
                    , mon = "Isn"
                    , tue = "Tldo"
                    , wed = "Arbc"
                    , thu = "Khms"
                    , fri = "Jmc"
                    , sat = "Sbti"
                    }
                , wide =
                    { sun = "Axad"
                    , mon = "Isniin"
                    , tue = "Talaado"
                    , wed = "Arbaco"
                    , thu = "Khamiis"
                    , fri = "Jimco"
                    , sat = "Sabti"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "T"
                    , wed = "A"
                    , thu = "Kh"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Axd"
                    , mon = "Isn"
                    , tue = "Tldo"
                    , wed = "Arbc"
                    , thu = "Khms"
                    , fri = "Jmc"
                    , sat = "Sbti"
                    }
                , wide =
                    { sun = "Axad"
                    , mon = "Isniin"
                    , tue = "Talaado"
                    , wed = "Arbaco"
                    , thu = "Khamiis"
                    , fri = "Jimco"
                    , sat = "Sabti"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "T"
                    , wed = "A"
                    , thu = "Kh"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "Ciise Hortii", ad = "Ciise Dabadii" }
                , narrow = { bc = "B", ad = "A" }
                }
            , timePatterns =
                { short = "h:mm\u{202F}a"
                , medium = "h:mm:ss\u{202F}a"
                , long = "h:mm:ss\u{202F}a z"
                , full = "h:mm:ss\u{202F}a zzzz"
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
                , ( "Ed", "d, E" )
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
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
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
                , ( "MMMMW-count-one", "'toddobaadka' W 'ee' MMMM" )
                , ( "MMMMW-count-other", "'toddobaadka' W 'ee' MMMM" )
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
                , ( "yw-count-one", "'toddobaadka' w 'ee' Y" )
                , ( "yw-count-other", "'toddobaadka' w 'ee' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
so_DJ : Internal.Locale.Locale
so_DJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "so"
            , script = Nothing
            , territory = Just "DJ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "GH", pm = "GD", dayPeriods = Dict.fromList [] }
                , wide = { am = "GH", pm = "GD", dayPeriods = Dict.fromList [] }
                , narrow = { am = "h", pm = "d", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd-MMM-y"
                , long = "MMMM d, y"
                , full = "EEEE, MMMM d, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Jun"
                    , jul = "Lul"
                    , aug = "Ogs"
                    , sep = "Seb"
                    , oct = "Okt"
                    , nov = "Nof"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Bisha Koobaad"
                    , feb = "Bisha Labaad"
                    , mar = "Bisha Saddexaad"
                    , apr = "Bisha Afraad"
                    , may = "Bisha Shanaad"
                    , jun = "Bisha Lixaad"
                    , jul = "Bisha Todobaad"
                    , aug = "Bisha Sideedaad"
                    , sep = "Bisha Sagaalaad"
                    , oct = "Bisha Tobnaad"
                    , nov = "Bisha Kow iyo Tobnaad"
                    , dec = "Bisha Laba iyo Tobnaad"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "L"
                    , aug = "O"
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
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Jun"
                    , jul = "Lul"
                    , aug = "Ogs"
                    , sep = "Seb"
                    , oct = "Okt"
                    , nov = "Nof"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Jannaayo"
                    , feb = "Febraayo"
                    , mar = "Maarso"
                    , apr = "Abriil"
                    , may = "May"
                    , jun = "Juun"
                    , jul = "Luuliyo"
                    , aug = "Ogosto"
                    , sep = "Sebteembar"
                    , oct = "Oktoobar"
                    , nov = "Noofeembar"
                    , dec = "Diseembar"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "L"
                    , aug = "O"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Axd"
                    , mon = "Isn"
                    , tue = "Tldo"
                    , wed = "Arbc"
                    , thu = "Khms"
                    , fri = "Jmc"
                    , sat = "Sbti"
                    }
                , wide =
                    { sun = "Axad"
                    , mon = "Isniin"
                    , tue = "Talaado"
                    , wed = "Arbaco"
                    , thu = "Khamiis"
                    , fri = "Jimco"
                    , sat = "Sabti"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "T"
                    , wed = "A"
                    , thu = "Kh"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Axd"
                    , mon = "Isn"
                    , tue = "Tldo"
                    , wed = "Arbc"
                    , thu = "Khms"
                    , fri = "Jmc"
                    , sat = "Sbti"
                    }
                , wide =
                    { sun = "Axad"
                    , mon = "Isniin"
                    , tue = "Talaado"
                    , wed = "Arbaco"
                    , thu = "Khamiis"
                    , fri = "Jimco"
                    , sat = "Sabti"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "T"
                    , wed = "A"
                    , thu = "Kh"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "Ciise Hortii", ad = "Ciise Dabadii" }
                , narrow = { bc = "B", ad = "A" }
                }
            , timePatterns =
                { short = "h:mm\u{202F}a"
                , medium = "h:mm:ss\u{202F}a"
                , long = "h:mm:ss\u{202F}a z"
                , full = "h:mm:ss\u{202F}a zzzz"
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
                , ( "Ed", "d, E" )
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
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
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
                , ( "MMMMW-count-one", "'toddobaadka' W 'ee' MMMM" )
                , ( "MMMMW-count-other", "'toddobaadka' W 'ee' MMMM" )
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
                , ( "yw-count-one", "'toddobaadka' w 'ee' Y" )
                , ( "yw-count-other", "'toddobaadka' w 'ee' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
so_ET : Internal.Locale.Locale
so_ET =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "so"
            , script = Nothing
            , territory = Just "ET"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "GH", pm = "GD", dayPeriods = Dict.fromList [] }
                , wide = { am = "GH", pm = "GD", dayPeriods = Dict.fromList [] }
                , narrow = { am = "h", pm = "d", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd-MMM-y"
                , long = "MMMM d, y"
                , full = "EEEE, MMMM d, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Jun"
                    , jul = "Lul"
                    , aug = "Ogs"
                    , sep = "Seb"
                    , oct = "Okt"
                    , nov = "Nof"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Bisha Koobaad"
                    , feb = "Bisha Labaad"
                    , mar = "Bisha Saddexaad"
                    , apr = "Bisha Afraad"
                    , may = "Bisha Shanaad"
                    , jun = "Bisha Lixaad"
                    , jul = "Bisha Todobaad"
                    , aug = "Bisha Sideedaad"
                    , sep = "Bisha Sagaalaad"
                    , oct = "Bisha Tobnaad"
                    , nov = "Bisha Kow iyo Tobnaad"
                    , dec = "Bisha Laba iyo Tobnaad"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "L"
                    , aug = "O"
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
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Jun"
                    , jul = "Lul"
                    , aug = "Ogs"
                    , sep = "Seb"
                    , oct = "Okt"
                    , nov = "Nof"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Jannaayo"
                    , feb = "Febraayo"
                    , mar = "Maarso"
                    , apr = "Abriil"
                    , may = "May"
                    , jun = "Juun"
                    , jul = "Luuliyo"
                    , aug = "Ogosto"
                    , sep = "Sebteembar"
                    , oct = "Oktoobar"
                    , nov = "Noofeembar"
                    , dec = "Diseembar"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "L"
                    , aug = "O"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Axd"
                    , mon = "Isn"
                    , tue = "Tldo"
                    , wed = "Arbc"
                    , thu = "Khms"
                    , fri = "Jmc"
                    , sat = "Sbti"
                    }
                , wide =
                    { sun = "Axad"
                    , mon = "Isniin"
                    , tue = "Talaado"
                    , wed = "Arbaco"
                    , thu = "Khamiis"
                    , fri = "Jimco"
                    , sat = "Sabti"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "T"
                    , wed = "A"
                    , thu = "Kh"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Axd"
                    , mon = "Isn"
                    , tue = "Tldo"
                    , wed = "Arbc"
                    , thu = "Khms"
                    , fri = "Jmc"
                    , sat = "Sbti"
                    }
                , wide =
                    { sun = "Axad"
                    , mon = "Isniin"
                    , tue = "Talaado"
                    , wed = "Arbaco"
                    , thu = "Khamiis"
                    , fri = "Jimco"
                    , sat = "Sabti"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "T"
                    , wed = "A"
                    , thu = "Kh"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "Ciise Hortii", ad = "Ciise Dabadii" }
                , narrow = { bc = "B", ad = "A" }
                }
            , timePatterns =
                { short = "h:mm\u{202F}a"
                , medium = "h:mm:ss\u{202F}a"
                , long = "h:mm:ss\u{202F}a z"
                , full = "h:mm:ss\u{202F}a zzzz"
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
                , ( "Ed", "d, E" )
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
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
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
                , ( "MMMMW-count-one", "'toddobaadka' W 'ee' MMMM" )
                , ( "MMMMW-count-other", "'toddobaadka' W 'ee' MMMM" )
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
                , ( "yw-count-one", "'toddobaadka' w 'ee' Y" )
                , ( "yw-count-other", "'toddobaadka' w 'ee' Y" )
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

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
so_KE : Internal.Locale.Locale
so_KE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "so"
            , script = Nothing
            , territory = Just "KE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "GH", pm = "GD", dayPeriods = Dict.fromList [] }
                , wide = { am = "GH", pm = "GD", dayPeriods = Dict.fromList [] }
                , narrow = { am = "h", pm = "d", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "dd-MMM-y"
                , long = "MMMM d, y"
                , full = "EEEE, MMMM d, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Jun"
                    , jul = "Lul"
                    , aug = "Ogs"
                    , sep = "Seb"
                    , oct = "Okt"
                    , nov = "Nof"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Bisha Koobaad"
                    , feb = "Bisha Labaad"
                    , mar = "Bisha Saddexaad"
                    , apr = "Bisha Afraad"
                    , may = "Bisha Shanaad"
                    , jun = "Bisha Lixaad"
                    , jul = "Bisha Todobaad"
                    , aug = "Bisha Sideedaad"
                    , sep = "Bisha Sagaalaad"
                    , oct = "Bisha Tobnaad"
                    , nov = "Bisha Kow iyo Tobnaad"
                    , dec = "Bisha Laba iyo Tobnaad"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "L"
                    , aug = "O"
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
                    , mar = "Mar"
                    , apr = "Abr"
                    , may = "May"
                    , jun = "Jun"
                    , jul = "Lul"
                    , aug = "Ogs"
                    , sep = "Seb"
                    , oct = "Okt"
                    , nov = "Nof"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Jannaayo"
                    , feb = "Febraayo"
                    , mar = "Maarso"
                    , apr = "Abriil"
                    , may = "May"
                    , jun = "Juun"
                    , jul = "Luuliyo"
                    , aug = "Ogosto"
                    , sep = "Sebteembar"
                    , oct = "Oktoobar"
                    , nov = "Noofeembar"
                    , dec = "Diseembar"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "L"
                    , aug = "O"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Axd"
                    , mon = "Isn"
                    , tue = "Tldo"
                    , wed = "Arbc"
                    , thu = "Khms"
                    , fri = "Jmc"
                    , sat = "Sbti"
                    }
                , wide =
                    { sun = "Axad"
                    , mon = "Isniin"
                    , tue = "Talaado"
                    , wed = "Arbaco"
                    , thu = "Khamiis"
                    , fri = "Jimco"
                    , sat = "Sabti"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "T"
                    , wed = "A"
                    , thu = "Kh"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Axd"
                    , mon = "Isn"
                    , tue = "Tldo"
                    , wed = "Arbc"
                    , thu = "Khms"
                    , fri = "Jmc"
                    , sat = "Sbti"
                    }
                , wide =
                    { sun = "Axad"
                    , mon = "Isniin"
                    , tue = "Talaado"
                    , wed = "Arbaco"
                    , thu = "Khamiis"
                    , fri = "Jimco"
                    , sat = "Sabti"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "T"
                    , wed = "A"
                    , thu = "Kh"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "Ciise Hortii", ad = "Ciise Dabadii" }
                , narrow = { bc = "B", ad = "A" }
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
                , ( "Ed", "d, E" )
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
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
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
                , ( "MMMMW-count-one", "'toddobaadka' W 'ee' MMMM" )
                , ( "MMMMW-count-other", "'toddobaadka' W 'ee' MMMM" )
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
                , ( "yw-count-one", "'toddobaadka' w 'ee' Y" )
                , ( "yw-count-other", "'toddobaadka' w 'ee' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
