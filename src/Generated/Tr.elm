module Generated.Tr exposing (tr, tr_CY)

{-|

@docs tr, tr_CY

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
        [ ( "tr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 11, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 11, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
tr : Internal.Locale.Locale
tr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "tr"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ÖÖ"
                    , pm = "ÖS"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "öğleden sonra" )
                            , ( "afternoon2", "akşamüstü" )
                            , ( "evening1", "akşam" )
                            , ( "midnight", "gece yarısı" )
                            , ( "morning1", "sabah" )
                            , ( "morning2", "öğleden önce" )
                            , ( "night1", "gece" )
                            , ( "noon", "öğle" )
                            ]
                    }
                , wide =
                    { am = "ÖÖ"
                    , pm = "ÖS"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "öğleden sonra" )
                            , ( "afternoon2", "akşamüstü" )
                            , ( "evening1", "akşam" )
                            , ( "midnight", "gece yarısı" )
                            , ( "morning1", "sabah" )
                            , ( "morning2", "öğleden önce" )
                            , ( "night1", "gece" )
                            , ( "noon", "öğle" )
                            ]
                    }
                , narrow =
                    { am = "öö"
                    , pm = "ös"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "öğleden sonra" )
                            , ( "afternoon2", "akşamüstü" )
                            , ( "evening1", "akşam" )
                            , ( "midnight", "gece" )
                            , ( "morning1", "sabah" )
                            , ( "morning2", "öğleden önce" )
                            , ( "night1", "gece" )
                            , ( "noon", "ö" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.MM.y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "d MMMM y EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Oca"
                    , feb = "Şub"
                    , mar = "Mar"
                    , apr = "Nis"
                    , may = "May"
                    , jun = "Haz"
                    , jul = "Tem"
                    , aug = "Ağu"
                    , sep = "Eyl"
                    , oct = "Eki"
                    , nov = "Kas"
                    , dec = "Ara"
                    }
                , wide =
                    { jan = "Ocak"
                    , feb = "Şubat"
                    , mar = "Mart"
                    , apr = "Nisan"
                    , may = "Mayıs"
                    , jun = "Haziran"
                    , jul = "Temmuz"
                    , aug = "Ağustos"
                    , sep = "Eylül"
                    , oct = "Ekim"
                    , nov = "Kasım"
                    , dec = "Aralık"
                    }
                , narrow =
                    { jan = "O"
                    , feb = "Ş"
                    , mar = "M"
                    , apr = "N"
                    , may = "M"
                    , jun = "H"
                    , jul = "T"
                    , aug = "A"
                    , sep = "E"
                    , oct = "E"
                    , nov = "K"
                    , dec = "A"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Oca"
                    , feb = "Şub"
                    , mar = "Mar"
                    , apr = "Nis"
                    , may = "May"
                    , jun = "Haz"
                    , jul = "Tem"
                    , aug = "Ağu"
                    , sep = "Eyl"
                    , oct = "Eki"
                    , nov = "Kas"
                    , dec = "Ara"
                    }
                , wide =
                    { jan = "Ocak"
                    , feb = "Şubat"
                    , mar = "Mart"
                    , apr = "Nisan"
                    , may = "Mayıs"
                    , jun = "Haziran"
                    , jul = "Temmuz"
                    , aug = "Ağustos"
                    , sep = "Eylül"
                    , oct = "Ekim"
                    , nov = "Kasım"
                    , dec = "Aralık"
                    }
                , narrow =
                    { jan = "O"
                    , feb = "Ş"
                    , mar = "M"
                    , apr = "N"
                    , may = "M"
                    , jun = "H"
                    , jul = "T"
                    , aug = "A"
                    , sep = "E"
                    , oct = "E"
                    , nov = "K"
                    , dec = "A"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Paz"
                    , mon = "Pzt"
                    , tue = "Sal"
                    , wed = "Çar"
                    , thu = "Per"
                    , fri = "Cum"
                    , sat = "Cmt"
                    }
                , wide =
                    { sun = "Pazar"
                    , mon = "Pazartesi"
                    , tue = "Salı"
                    , wed = "Çarşamba"
                    , thu = "Perşembe"
                    , fri = "Cuma"
                    , sat = "Cumartesi"
                    }
                , narrow =
                    { sun = "P"
                    , mon = "P"
                    , tue = "S"
                    , wed = "Ç"
                    , thu = "P"
                    , fri = "C"
                    , sat = "C"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Paz"
                    , mon = "Pzt"
                    , tue = "Sal"
                    , wed = "Çar"
                    , thu = "Per"
                    , fri = "Cum"
                    , sat = "Cmt"
                    }
                , wide =
                    { sun = "Pazar"
                    , mon = "Pazartesi"
                    , tue = "Salı"
                    , wed = "Çarşamba"
                    , thu = "Perşembe"
                    , fri = "Cuma"
                    , sat = "Cumartesi"
                    }
                , narrow =
                    { sun = "P"
                    , mon = "P"
                    , tue = "S"
                    , wed = "Ç"
                    , thu = "P"
                    , fri = "C"
                    , sat = "C"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "MÖ", ad = "MS" }
                , wide = { bc = "Milattan Önce", ad = "Milattan Sonra" }
                , narrow = { bc = "MÖ", ad = "MS" }
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
                , ( "Ehm", "E a h:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E a h:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "G MMM y" )
                , ( "GyMMMd", "G d MMM y" )
                , ( "GyMMMEd", "G d MMM y E" )
                , ( "h", "a h" )
                , ( "H", "HH" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "d/MM E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "d MMMM E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "d MMMM E" )
                , ( "MMMMW-count-one", "MMMM 'ayının' W. 'haftası'" )
                , ( "MMMMW-count-other", "MMMM 'ayının' W. 'haftası'" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "d.M.y E" )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "d MMM y E" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-one", "Y 'yılının' w. 'haftası'" )
                , ( "yw-count-other", "Y 'yılının' w. 'haftası'" )
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

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
tr_CY : Internal.Locale.Locale
tr_CY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "tr"
            , script = Nothing
            , territory = Just "CY"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ÖÖ"
                    , pm = "ÖS"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "öğleden sonra" )
                            , ( "afternoon2", "akşamüstü" )
                            , ( "evening1", "akşam" )
                            , ( "midnight", "gece yarısı" )
                            , ( "morning1", "sabah" )
                            , ( "morning2", "öğleden önce" )
                            , ( "night1", "gece" )
                            , ( "noon", "öğle" )
                            ]
                    }
                , wide =
                    { am = "ÖÖ"
                    , pm = "ÖS"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "öğleden sonra" )
                            , ( "afternoon2", "akşamüstü" )
                            , ( "evening1", "akşam" )
                            , ( "midnight", "gece yarısı" )
                            , ( "morning1", "sabah" )
                            , ( "morning2", "öğleden önce" )
                            , ( "night1", "gece" )
                            , ( "noon", "öğle" )
                            ]
                    }
                , narrow =
                    { am = "öö"
                    , pm = "ös"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "öğleden sonra" )
                            , ( "afternoon2", "akşamüstü" )
                            , ( "evening1", "akşam" )
                            , ( "midnight", "gece" )
                            , ( "morning1", "sabah" )
                            , ( "morning2", "öğleden önce" )
                            , ( "night1", "gece" )
                            , ( "noon", "ö" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.MM.y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "d MMMM y EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Oca"
                    , feb = "Şub"
                    , mar = "Mar"
                    , apr = "Nis"
                    , may = "May"
                    , jun = "Haz"
                    , jul = "Tem"
                    , aug = "Ağu"
                    , sep = "Eyl"
                    , oct = "Eki"
                    , nov = "Kas"
                    , dec = "Ara"
                    }
                , wide =
                    { jan = "Ocak"
                    , feb = "Şubat"
                    , mar = "Mart"
                    , apr = "Nisan"
                    , may = "Mayıs"
                    , jun = "Haziran"
                    , jul = "Temmuz"
                    , aug = "Ağustos"
                    , sep = "Eylül"
                    , oct = "Ekim"
                    , nov = "Kasım"
                    , dec = "Aralık"
                    }
                , narrow =
                    { jan = "O"
                    , feb = "Ş"
                    , mar = "M"
                    , apr = "N"
                    , may = "M"
                    , jun = "H"
                    , jul = "T"
                    , aug = "A"
                    , sep = "E"
                    , oct = "E"
                    , nov = "K"
                    , dec = "A"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Oca"
                    , feb = "Şub"
                    , mar = "Mar"
                    , apr = "Nis"
                    , may = "May"
                    , jun = "Haz"
                    , jul = "Tem"
                    , aug = "Ağu"
                    , sep = "Eyl"
                    , oct = "Eki"
                    , nov = "Kas"
                    , dec = "Ara"
                    }
                , wide =
                    { jan = "Ocak"
                    , feb = "Şubat"
                    , mar = "Mart"
                    , apr = "Nisan"
                    , may = "Mayıs"
                    , jun = "Haziran"
                    , jul = "Temmuz"
                    , aug = "Ağustos"
                    , sep = "Eylül"
                    , oct = "Ekim"
                    , nov = "Kasım"
                    , dec = "Aralık"
                    }
                , narrow =
                    { jan = "O"
                    , feb = "Ş"
                    , mar = "M"
                    , apr = "N"
                    , may = "M"
                    , jun = "H"
                    , jul = "T"
                    , aug = "A"
                    , sep = "E"
                    , oct = "E"
                    , nov = "K"
                    , dec = "A"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Paz"
                    , mon = "Pzt"
                    , tue = "Sal"
                    , wed = "Çar"
                    , thu = "Per"
                    , fri = "Cum"
                    , sat = "Cmt"
                    }
                , wide =
                    { sun = "Pazar"
                    , mon = "Pazartesi"
                    , tue = "Salı"
                    , wed = "Çarşamba"
                    , thu = "Perşembe"
                    , fri = "Cuma"
                    , sat = "Cumartesi"
                    }
                , narrow =
                    { sun = "P"
                    , mon = "P"
                    , tue = "S"
                    , wed = "Ç"
                    , thu = "P"
                    , fri = "C"
                    , sat = "C"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Paz"
                    , mon = "Pzt"
                    , tue = "Sal"
                    , wed = "Çar"
                    , thu = "Per"
                    , fri = "Cum"
                    , sat = "Cmt"
                    }
                , wide =
                    { sun = "Pazar"
                    , mon = "Pazartesi"
                    , tue = "Salı"
                    , wed = "Çarşamba"
                    , thu = "Perşembe"
                    , fri = "Cuma"
                    , sat = "Cumartesi"
                    }
                , narrow =
                    { sun = "P"
                    , mon = "P"
                    , tue = "S"
                    , wed = "Ç"
                    , thu = "P"
                    , fri = "C"
                    , sat = "C"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "MÖ", ad = "MS" }
                , wide = { bc = "Milattan Önce", ad = "Milattan Sonra" }
                , narrow = { bc = "MÖ", ad = "MS" }
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
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E a h:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E a h:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "G MMM y" )
                , ( "GyMMMd", "G d MMM y" )
                , ( "GyMMMEd", "G d MMM y E" )
                , ( "h", "a h" )
                , ( "H", "HH" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "d/MM E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "d MMMM E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "d MMMM E" )
                , ( "MMMMW-count-one", "MMMM 'ayının' W. 'haftası'" )
                , ( "MMMMW-count-other", "MMMM 'ayının' W. 'haftası'" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "d.M.y E" )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "d MMM y E" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-one", "Y 'yılının' w. 'haftası'" )
                , ( "yw-count-other", "Y 'yılının' w. 'haftası'" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
