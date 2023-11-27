module Generated.Gd exposing (gd)

{-|

@docs gd

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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d'mh' MMMM y
  - Full : EEEE, d'mh' MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
gd : Internal.Locale.Locale
gd =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "gd"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "m", pm = "f", dayPeriods = Dict.fromList [] }
                , wide = { am = "m", pm = "f", dayPeriods = Dict.fromList [] }
                , narrow = { am = "m", pm = "f", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d'mh' MMMM y"
                , full = "EEEE, d'mh' MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Faoi"
                    , feb = "Gearr"
                    , mar = "Màrt"
                    , apr = "Gibl"
                    , may = "Cèit"
                    , jun = "Ògmh"
                    , jul = "Iuch"
                    , aug = "Lùna"
                    , sep = "Sult"
                    , oct = "Dàmh"
                    , nov = "Samh"
                    , dec = "Dùbh"
                    }
                , wide =
                    { jan = "dhen Fhaoilleach"
                    , feb = "dhen Ghearran"
                    , mar = "dhen Mhàrt"
                    , apr = "dhen Ghiblean"
                    , may = "dhen Chèitean"
                    , jun = "dhen Ògmhios"
                    , jul = "dhen Iuchar"
                    , aug = "dhen Lùnastal"
                    , sep = "dhen t-Sultain"
                    , oct = "dhen Dàmhair"
                    , nov = "dhen t-Samhain"
                    , dec = "dhen Dùbhlachd"
                    }
                , narrow =
                    { jan = "F"
                    , feb = "G"
                    , mar = "M"
                    , apr = "G"
                    , may = "C"
                    , jun = "Ò"
                    , jul = "I"
                    , aug = "L"
                    , sep = "S"
                    , oct = "D"
                    , nov = "S"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Faoi"
                    , feb = "Gearr"
                    , mar = "Màrt"
                    , apr = "Gibl"
                    , may = "Cèit"
                    , jun = "Ògmh"
                    , jul = "Iuch"
                    , aug = "Lùna"
                    , sep = "Sult"
                    , oct = "Dàmh"
                    , nov = "Samh"
                    , dec = "Dùbh"
                    }
                , wide =
                    { jan = "Am Faoilleach"
                    , feb = "An Gearran"
                    , mar = "Am Màrt"
                    , apr = "An Giblean"
                    , may = "An Cèitean"
                    , jun = "An t-Ògmhios"
                    , jul = "An t-Iuchar"
                    , aug = "An Lùnastal"
                    , sep = "An t-Sultain"
                    , oct = "An Dàmhair"
                    , nov = "An t-Samhain"
                    , dec = "An Dùbhlachd"
                    }
                , narrow =
                    { jan = "F"
                    , feb = "G"
                    , mar = "M"
                    , apr = "G"
                    , may = "C"
                    , jun = "Ò"
                    , jul = "I"
                    , aug = "L"
                    , sep = "S"
                    , oct = "D"
                    , nov = "S"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "DiD"
                    , mon = "DiL"
                    , tue = "DiM"
                    , wed = "DiC"
                    , thu = "Dia"
                    , fri = "Dih"
                    , sat = "DiS"
                    }
                , wide =
                    { sun = "DiDòmhnaich"
                    , mon = "DiLuain"
                    , tue = "DiMàirt"
                    , wed = "DiCiadain"
                    , thu = "DiarDaoin"
                    , fri = "DihAoine"
                    , sat = "DiSathairne"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "C"
                    , thu = "A"
                    , fri = "H"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "DiD"
                    , mon = "DiL"
                    , tue = "DiM"
                    , wed = "DiC"
                    , thu = "Dia"
                    , fri = "Dih"
                    , sat = "DiS"
                    }
                , wide =
                    { sun = "DiDòmhnaich"
                    , mon = "DiLuain"
                    , tue = "DiMàirt"
                    , wed = "DiCiadain"
                    , thu = "DiarDaoin"
                    , fri = "DihAoine"
                    , sat = "DiSathairne"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "C"
                    , thu = "A"
                    , fri = "H"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "RC", ad = "AD" }
                , wide = { bc = "Ro Chrìosta", ad = "An dèidh Chrìosta" }
                , narrow = { bc = "R", ad = "A" }
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
                [ ( "Bh", "hB" )
                , ( "Bhm", "h:mmB" )
                , ( "Bhms", "h:mm:ssB" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mmB" )
                , ( "EBhms", "E h:mm:ssB" )
                , ( "Ed", "E, d" )
                , ( "Ehm", "E h:mma" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y G" )
                , ( "GyMMM", "LLL y G" )
                , ( "GyMMMd", "d'mh' MMM y G" )
                , ( "GyMMMEd", "E, d'mh' MMM y G" )
                , ( "h", "ha" )
                , ( "H", "HH" )
                , ( "hm", "h:mma" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mma v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d'mh' MMMM" )
                , ( "MMMMW-count-one", "'seachdain' W MMMM" )
                , ( "MMMMW-count-two", "'seachdain' W MMMM" )
                , ( "MMMMW-count-few", "'seachdain' W MMMM" )
                , ( "MMMMW-count-other", "'seachdain' W MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "L/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "LL/y" )
                , ( "yMMM", "LLL Y" )
                , ( "yMMMd", "d'mh' MMM y" )
                , ( "yMMMEd", "E, d'mh' MMM y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'seachdain' w 'dhe' Y" )
                , ( "yw-count-two", "'seachdain' w 'dhe' Y" )
                , ( "yw-count-few", "'seachdain' w 'dhe' Y" )
                , ( "yw-count-other", "'seachdain' w 'dhe' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
