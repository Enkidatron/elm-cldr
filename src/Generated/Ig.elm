module Generated.Ig exposing (ig)

{-|

@docs ig

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
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ig : Internal.Locale.Locale
ig =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ig"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "A.M.", pm = "P.M.", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "N’ụtụtụ"
                    , pm = "N’abali"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "A.M.", pm = "P.M.", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Jen"
                    , feb = "Feb"
                    , mar = "Maa"
                    , apr = "Epr"
                    , may = "Mee"
                    , jun = "Juu"
                    , jul = "Jul"
                    , aug = "Ọgọ"
                    , sep = "Sep"
                    , oct = "Ọkt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Jenụwarị"
                    , feb = "Febrụwarị"
                    , mar = "Maachị"
                    , apr = "Epreel"
                    , may = "Mee"
                    , jun = "Juun"
                    , jul = "Julaị"
                    , aug = "Ọgọọst"
                    , sep = "Septemba"
                    , oct = "Ọktoba"
                    , nov = "Novemba"
                    , dec = "Disemba"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "E"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "Ọ"
                    , sep = "S"
                    , oct = "Ọ"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Jen"
                    , feb = "Feb"
                    , mar = "Maa"
                    , apr = "Epr"
                    , may = "Mee"
                    , jun = "Juu"
                    , jul = "Jul"
                    , aug = "Ọgọ"
                    , sep = "Sep"
                    , oct = "Ọkt"
                    , nov = "Nov"
                    , dec = "Dis"
                    }
                , wide =
                    { jan = "Jenụwarị"
                    , feb = "Febrụwarị"
                    , mar = "Maachị"
                    , apr = "Epreel"
                    , may = "Mee"
                    , jun = "Juun"
                    , jul = "Julaị"
                    , aug = "Ọgọọst"
                    , sep = "Septemba"
                    , oct = "Ọktoba"
                    , nov = "Novemba"
                    , dec = "Disemba"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "E"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "Ọ"
                    , sep = "S"
                    , oct = "Ọ"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Sọn"
                    , mon = "Mọn"
                    , tue = "Tiu"
                    , wed = "Wen"
                    , thu = "Tọọ"
                    , fri = "Fraị"
                    , sat = "Sat"
                    }
                , wide =
                    { sun = "Sọndee"
                    , mon = "Mọnde"
                    , tue = "Tiuzdee"
                    , wed = "Wenezdee"
                    , thu = "Tọọzdee"
                    , fri = "Fraịdee"
                    , sat = "Satọdee"
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
                    { sun = "Sọn"
                    , mon = "Mọn"
                    , tue = "Tiu"
                    , wed = "Wen"
                    , thu = "Tọọ"
                    , fri = "Fraị"
                    , sat = "Sat"
                    }
                , wide =
                    { sun = "Sọndee"
                    , mon = "Mọnde"
                    , tue = "Tiuzdee"
                    , wed = "Wenezdee"
                    , thu = "Tọọzdee"
                    , fri = "Fraịdee"
                    , sat = "Satọdee"
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
                { abbreviated = { bc = "T.K.", ad = "A.K." }
                , wide = { bc = "Tupu Kraist", ad = "Afọ Kraịst" }
                , narrow = { bc = "T.K.", ad = "A.K." }
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
                , full = "{1}, {0}"
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
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "MMM G y" )
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
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-other", "'Izu' W 'n'‘'ime' MMMM" )
                , ( "ms", "mm:ss" )
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
                , ( "yw-count-other", "'Izu' w 'n' 'ime' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
