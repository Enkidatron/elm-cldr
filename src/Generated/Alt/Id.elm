module Generated.Alt.Id exposing (id)

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
        [ ( "id"
          , [ Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 15, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 15, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


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
id : Internal.Locale.Locale
id =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "id"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "siang" )
                            , ( "evening1", "sore" )
                            , ( "midnight", "tengah malam" )
                            , ( "morning1", "pagi" )
                            , ( "night1", "malam" )
                            , ( "noon", "tengah hari" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "siang" )
                            , ( "evening1", "sore" )
                            , ( "midnight", "tengah malam" )
                            , ( "morning1", "pagi" )
                            , ( "night1", "malam" )
                            , ( "noon", "tengah hari" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "siang" )
                            , ( "evening1", "sore" )
                            , ( "midnight", "tengah malam" )
                            , ( "morning1", "pagi" )
                            , ( "night1", "malam" )
                            , ( "noon", "tengah hari" )
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
                    , mar = "Mar"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Agu"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Maret"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Agustus"
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
                    { jan = "Jan"
                    , feb = "Feb"
                    , mar = "Mar"
                    , apr = "Apr"
                    , may = "Mei"
                    , jun = "Jun"
                    , jul = "Jul"
                    , aug = "Agu"
                    , sep = "Sep"
                    , oct = "Okt"
                    , nov = "Nov"
                    , dec = "Des"
                    }
                , wide =
                    { jan = "Januari"
                    , feb = "Februari"
                    , mar = "Maret"
                    , apr = "April"
                    , may = "Mei"
                    , jun = "Juni"
                    , jul = "Juli"
                    , aug = "Agustus"
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
                    { sun = "Min"
                    , mon = "Sen"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kam"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Minggu"
                    , mon = "Senin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Kamis"
                    , fri = "Jumat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "M"
                    , mon = "S"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Min"
                    , mon = "Sen"
                    , tue = "Sel"
                    , wed = "Rab"
                    , thu = "Kam"
                    , fri = "Jum"
                    , sat = "Sab"
                    }
                , wide =
                    { sun = "Minggu"
                    , mon = "Senin"
                    , tue = "Selasa"
                    , wed = "Rabu"
                    , thu = "Kamis"
                    , fri = "Jumat"
                    , sat = "Sabtu"
                    }
                , narrow =
                    { sun = "M"
                    , mon = "S"
                    , tue = "S"
                    , wed = "R"
                    , thu = "K"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "SM", ad = "M" }
                , wide = { bc = "Sebelum Masehi", ad = "Masehi" }
                , narrow = { bc = "SM", ad = "M" }
                }
            , timePatterns =
                { short = "HH.mm"
                , medium = "HH.mm.ss"
                , long = "HH.mm.ss z"
                , full = "HH.mm.ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
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
                , ( "Ed", "E, d" )
                , ( "Ehm", "E h.mm a" )
                , ( "EHm", "E HH.mm" )
                , ( "Ehms", "E h.mm.ss a" )
                , ( "EHms", "E HH.mm.ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
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
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-other", "'minggu' 'ke'-W MMMM" )
                , ( "ms", "mm.ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-other", "'minggu' 'ke'-w Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
