module Generated.Alt.Ms exposing (ms, ms_BN, ms_ID, ms_SG)

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
        [ ( "ms"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 1, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 1, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms : Internal.Locale.Locale
ms =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ms"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "PG"
                    , pm = "PTG"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "pagi" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                , wide =
                    { am = "PG"
                    , pm = "PTG"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "tengah malam" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "pagi" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/MM/yy"
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
                    , aug = "Ogo"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Mac"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Julai"
                    , aug = "Ogos"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Disember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
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
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ogo"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Mac"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Julai"
                    , aug = "Ogos"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Disember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "O"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Ahd"
                    , mon = "Isn"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kha"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Isnin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Khamis"
                    , fri = "Jumaat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Ahd"
                    , mon = "Isn"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kha"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Isnin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Khamis"
                    , fri = "Jumaat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "S.M.", ad = "TM" }
                , wide = { bc = "S.M.", ad = "TM" }
                , narrow = { bc = "S.M.", ad = "TM" }
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
                , ( "Gy", "y G" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
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
                , ( "Md", "d-M" )
                , ( "MEd", "E, d-M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
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


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : dd MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms_BN : Internal.Locale.Locale
ms_BN =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ms"
            , script = Nothing
            , territory = Just "BN"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "PG"
                    , pm = "PTG"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "pagi" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                , wide =
                    { am = "PG"
                    , pm = "PTG"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "tengah malam" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "pagi" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/MM/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "dd MMMM y"
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
                    , aug = "Ogo"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Mac"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Julai"
                    , aug = "Ogos"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Disember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
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
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ogo"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Mac"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Julai"
                    , aug = "Ogos"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Disember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "O"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Ahd"
                    , mon = "Isn"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kha"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Isnin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Khamis"
                    , fri = "Jumaat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Ahd"
                    , mon = "Isn"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kha"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Isnin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Khamis"
                    , fri = "Jumaat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "S.M.", ad = "TM" }
                , wide = { bc = "S.M.", ad = "TM" }
                , narrow = { bc = "S.M.", ad = "TM" }
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
                , ( "Gy", "y G" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
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
                , ( "Md", "d-M" )
                , ( "MEd", "E, d-M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
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


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
ms_ID : Internal.Locale.Locale
ms_ID =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ms"
            , script = Nothing
            , territory = Just "ID"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "PG"
                    , pm = "PTG"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "pagi" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                , wide =
                    { am = "PG"
                    , pm = "PTG"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "tengah malam" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "pagi" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, dd MMMM y"
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
                    , aug = "Ogo"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Mac"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Julai"
                    , aug = "Ogos"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Disember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
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
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ogo"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Mac"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Julai"
                    , aug = "Ogos"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Disember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "O"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Ahd"
                    , mon = "Isn"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kha"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Isnin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Khamis"
                    , fri = "Jumaat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Ahd"
                    , mon = "Isn"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kha"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Isnin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Khamis"
                    , fri = "Jumaat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "S.M.", ad = "TM" }
                , wide = { bc = "S.M.", ad = "TM" }
                , narrow = { bc = "S.M.", ad = "TM" }
                }
            , timePatterns =
                { short = "HH.mm"
                , medium = "HH.mm.ss"
                , long = "HH.mm.ss z"
                , full = "HH.mm.ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h.mm B" )
                , ( "Bhms", "h.mm.ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h.mm B" )
                , ( "EBhms", "E h.mm.ss B" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E h.mm a" )
                , ( "EHm", "E HH.mm" )
                , ( "Ehms", "E h.mm.ss a" )
                , ( "EHms", "E HH.mm.ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h.mm a" )
                , ( "Hm", "HH.mm" )
                , ( "hms", "h.mm.ss a" )
                , ( "Hms", "HH.mm.ss" )
                , ( "hmsv", "h.mm.ss. a v" )
                , ( "Hmsv", "HH.mm.ss v" )
                , ( "hmv", "h.mm a v" )
                , ( "Hmv", "HH.mm v" )
                , ( "M", "L" )
                , ( "Md", "d-M" )
                , ( "MEd", "E, d-M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-other", "'week' w 'of' Y" )
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

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms_SG : Internal.Locale.Locale
ms_SG =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ms"
            , script = Nothing
            , territory = Just "SG"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "PG"
                    , pm = "PTG"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "pagi" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                , wide =
                    { am = "PG"
                    , pm = "PTG"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "tengah malam" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "tengah hari" )
                            , ( "evening1", "petang" )
                            , ( "morning1", "pagi" )
                            , ( "morning2", "pagi" )
                            , ( "night1", "malam" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/MM/yy"
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
                    , aug = "Ogo"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Mac"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Julai"
                    , aug = "Ogos"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Disember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
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
                    , mar = "Mac"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Ogo"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Mac"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Julai"
                    , aug = "Ogos"
                    , sep = "September"
                    , oct = "Oktober"
                    , nov = "November"
                    , dec = "Disember"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "O"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Ahd"
                    , mon = "Isn"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kha"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Isnin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Khamis"
                    , fri = "Jumaat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Ahd"
                    , mon = "Isn"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kha"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Ahad"
                    , mon = "Isnin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Khamis"
                    , fri = "Jumaat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "A"
                    , mon = "I"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "S.M.", ad = "TM" }
                , wide = { bc = "S.M.", ad = "TM" }
                , narrow = { bc = "S.M.", ad = "TM" }
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
                , ( "Gy", "y G" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
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
                , ( "Md", "d-M" )
                , ( "MEd", "E, d-M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
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
