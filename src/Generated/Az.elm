module Generated.Az exposing (az, az_Latn)

{-|

@docs az, az_Latn

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
        [ ( "az"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 17, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 17, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night2"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
az : Internal.Locale.Locale
az =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "az"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "gündüz" )
                            , ( "evening1", "axşamüstü" )
                            , ( "midnight", "gecəyarı" )
                            , ( "morning1", "sübh" )
                            , ( "morning2", "səhər" )
                            , ( "night1", "axşam" )
                            , ( "night2", "gecə" )
                            , ( "noon", "günorta" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "gündüz" )
                            , ( "evening1", "axşamüstü" )
                            , ( "midnight", "gecəyarı" )
                            , ( "morning1", "sübh" )
                            , ( "morning2", "səhər" )
                            , ( "night1", "axşam" )
                            , ( "night2", "gecə" )
                            , ( "noon", "günorta" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "gündüz" )
                            , ( "evening1", "axşamüstü" )
                            , ( "midnight", "gecəyarı" )
                            , ( "morning1", "sübh" )
                            , ( "morning2", "səhər" )
                            , ( "night1", "axşam" )
                            , ( "night2", "gecə" )
                            , ( "noon", "g" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "d MMMM y, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "yan"
                    , feb = "fev"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "may"
                    , jun = "iyn"
                    , jul = "iyl"
                    , aug = "avq"
                    , sep = "sen"
                    , oct = "okt"
                    , nov = "noy"
                    , dec = "dek"
                    }
                , wide =
                    { jan = "yanvar"
                    , feb = "fevral"
                    , mar = "mart"
                    , apr = "aprel"
                    , may = "may"
                    , jun = "iyun"
                    , jul = "iyul"
                    , aug = "avqust"
                    , sep = "sentyabr"
                    , oct = "oktyabr"
                    , nov = "noyabr"
                    , dec = "dekabr"
                    }
                , narrow =
                    { jan = "1"
                    , feb = "2"
                    , mar = "3"
                    , apr = "4"
                    , may = "5"
                    , jun = "6"
                    , jul = "7"
                    , aug = "8"
                    , sep = "9"
                    , oct = "10"
                    , nov = "11"
                    , dec = "12"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "yan"
                    , feb = "fev"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "may"
                    , jun = "iyn"
                    , jul = "iyl"
                    , aug = "avq"
                    , sep = "sen"
                    , oct = "okt"
                    , nov = "noy"
                    , dec = "dek"
                    }
                , wide =
                    { jan = "yanvar"
                    , feb = "fevral"
                    , mar = "mart"
                    , apr = "aprel"
                    , may = "may"
                    , jun = "iyun"
                    , jul = "iyul"
                    , aug = "avqust"
                    , sep = "sentyabr"
                    , oct = "oktyabr"
                    , nov = "noyabr"
                    , dec = "dekabr"
                    }
                , narrow =
                    { jan = "1"
                    , feb = "2"
                    , mar = "3"
                    , apr = "4"
                    , may = "5"
                    , jun = "6"
                    , jul = "7"
                    , aug = "8"
                    , sep = "9"
                    , oct = "10"
                    , nov = "11"
                    , dec = "12"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "B."
                    , mon = "B.e."
                    , tue = "Ç.a."
                    , wed = "Ç."
                    , thu = "C.a."
                    , fri = "C."
                    , sat = "Ş."
                    }
                , wide =
                    { sun = "bazar"
                    , mon = "bazar ertəsi"
                    , tue = "çərşənbə axşamı"
                    , wed = "çərşənbə"
                    , thu = "cümə axşamı"
                    , fri = "cümə"
                    , sat = "şənbə"
                    }
                , narrow =
                    { sun = "7"
                    , mon = "1"
                    , tue = "2"
                    , wed = "3"
                    , thu = "4"
                    , fri = "5"
                    , sat = "6"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "B."
                    , mon = "B.E."
                    , tue = "Ç.A."
                    , wed = "Ç."
                    , thu = "C.A."
                    , fri = "C."
                    , sat = "Ş."
                    }
                , wide =
                    { sun = "bazar"
                    , mon = "bazar ertəsi"
                    , tue = "çərşənbə axşamı"
                    , wed = "çərşənbə"
                    , thu = "cümə axşamı"
                    , fri = "cümə"
                    , sat = "şənbə"
                    }
                , narrow =
                    { sun = "7"
                    , mon = "1"
                    , tue = "2"
                    , wed = "3"
                    , thu = "4"
                    , fri = "5"
                    , sat = "6"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "e.ə.", ad = "y.e." }
                , wide = { bc = "eramızdan əvvəl", ad = "yeni era" }
                , narrow = { bc = "e.ə.", ad = "y.e." }
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
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG d MMM y" )
                , ( "GyMMM", "G MMM y" )
                , ( "GyMMMd", "G d MMM y" )
                , ( "GyMMMEd", "G d MMM y, E" )
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
                , ( "Md", "dd.MM" )
                , ( "MEd", "dd.MM, E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "d MMM, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM, W 'həftə'" )
                , ( "MMMMW-count-other", "MMMM, W 'həftə'" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "dd.MM.y, E" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "d MMM y, E" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-one", "Y, w 'həftə'" )
                , ( "yw-count-other", "Y, w 'həftə'" )
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

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
az_Latn : Internal.Locale.Locale
az_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "az"
            , script = Just "Latn"
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "gündüz" )
                            , ( "evening1", "axşamüstü" )
                            , ( "midnight", "gecəyarı" )
                            , ( "morning1", "sübh" )
                            , ( "morning2", "səhər" )
                            , ( "night1", "axşam" )
                            , ( "night2", "gecə" )
                            , ( "noon", "günorta" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "gündüz" )
                            , ( "evening1", "axşamüstü" )
                            , ( "midnight", "gecəyarı" )
                            , ( "morning1", "sübh" )
                            , ( "morning2", "səhər" )
                            , ( "night1", "axşam" )
                            , ( "night2", "gecə" )
                            , ( "noon", "günorta" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "gündüz" )
                            , ( "evening1", "axşamüstü" )
                            , ( "midnight", "gecəyarı" )
                            , ( "morning1", "sübh" )
                            , ( "morning2", "səhər" )
                            , ( "night1", "axşam" )
                            , ( "night2", "gecə" )
                            , ( "noon", "g" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "d MMMM y, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "yan"
                    , feb = "fev"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "may"
                    , jun = "iyn"
                    , jul = "iyl"
                    , aug = "avq"
                    , sep = "sen"
                    , oct = "okt"
                    , nov = "noy"
                    , dec = "dek"
                    }
                , wide =
                    { jan = "yanvar"
                    , feb = "fevral"
                    , mar = "mart"
                    , apr = "aprel"
                    , may = "may"
                    , jun = "iyun"
                    , jul = "iyul"
                    , aug = "avqust"
                    , sep = "sentyabr"
                    , oct = "oktyabr"
                    , nov = "noyabr"
                    , dec = "dekabr"
                    }
                , narrow =
                    { jan = "1"
                    , feb = "2"
                    , mar = "3"
                    , apr = "4"
                    , may = "5"
                    , jun = "6"
                    , jul = "7"
                    , aug = "8"
                    , sep = "9"
                    , oct = "10"
                    , nov = "11"
                    , dec = "12"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "yan"
                    , feb = "fev"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "may"
                    , jun = "iyn"
                    , jul = "iyl"
                    , aug = "avq"
                    , sep = "sen"
                    , oct = "okt"
                    , nov = "noy"
                    , dec = "dek"
                    }
                , wide =
                    { jan = "yanvar"
                    , feb = "fevral"
                    , mar = "mart"
                    , apr = "aprel"
                    , may = "may"
                    , jun = "iyun"
                    , jul = "iyul"
                    , aug = "avqust"
                    , sep = "sentyabr"
                    , oct = "oktyabr"
                    , nov = "noyabr"
                    , dec = "dekabr"
                    }
                , narrow =
                    { jan = "1"
                    , feb = "2"
                    , mar = "3"
                    , apr = "4"
                    , may = "5"
                    , jun = "6"
                    , jul = "7"
                    , aug = "8"
                    , sep = "9"
                    , oct = "10"
                    , nov = "11"
                    , dec = "12"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "B."
                    , mon = "B.e."
                    , tue = "Ç.a."
                    , wed = "Ç."
                    , thu = "C.a."
                    , fri = "C."
                    , sat = "Ş."
                    }
                , wide =
                    { sun = "bazar"
                    , mon = "bazar ertəsi"
                    , tue = "çərşənbə axşamı"
                    , wed = "çərşənbə"
                    , thu = "cümə axşamı"
                    , fri = "cümə"
                    , sat = "şənbə"
                    }
                , narrow =
                    { sun = "7"
                    , mon = "1"
                    , tue = "2"
                    , wed = "3"
                    , thu = "4"
                    , fri = "5"
                    , sat = "6"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "B."
                    , mon = "B.E."
                    , tue = "Ç.A."
                    , wed = "Ç."
                    , thu = "C.A."
                    , fri = "C."
                    , sat = "Ş."
                    }
                , wide =
                    { sun = "bazar"
                    , mon = "bazar ertəsi"
                    , tue = "çərşənbə axşamı"
                    , wed = "çərşənbə"
                    , thu = "cümə axşamı"
                    , fri = "cümə"
                    , sat = "şənbə"
                    }
                , narrow =
                    { sun = "7"
                    , mon = "1"
                    , tue = "2"
                    , wed = "3"
                    , thu = "4"
                    , fri = "5"
                    , sat = "6"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "e.ə.", ad = "y.e." }
                , wide = { bc = "eramızdan əvvəl", ad = "yeni era" }
                , narrow = { bc = "e.ə.", ad = "y.e." }
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
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG d MMM y" )
                , ( "GyMMM", "G MMM y" )
                , ( "GyMMMd", "G d MMM y" )
                , ( "GyMMMEd", "G d MMM y, E" )
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
                , ( "Md", "dd.MM" )
                , ( "MEd", "dd.MM, E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "d MMM, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM, W 'həftə'" )
                , ( "MMMMW-count-other", "MMMM, W 'həftə'" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "dd.MM.y, E" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "d MMM y, E" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-one", "Y, w 'həftə'" )
                , ( "yw-count-other", "Y, w 'həftə'" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
