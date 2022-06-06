module Generated.Alt.Ga exposing (ga, ga_GB)

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
    Dict.fromList []


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ga : Internal.Locale.Locale
ga =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ga"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "r.n.", pm = "i.n.", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "r.n.", pm = "i.n.", dayPeriods = Dict.fromList [] }
                , narrow =
                    { am = "r.n.", pm = "i.n.", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Ean"
                    , feb = "Feabh"
                    , mar = "Márta"
                    , apr = "Aib"
                    , may = "Beal"
                    , jun = "Meith"
                    , jul = "Iúil"
                    , aug = "Lún"
                    , sep = "MFómh"
                    , oct = "DFómh"
                    , nov = "Samh"
                    , dec = "Noll"
                    }
                , wide =
                    { jan = "Eanáir"
                    , feb = "Feabhra"
                    , mar = "Márta"
                    , apr = "Aibreán"
                    , may = "Bealtaine"
                    , jun = "Meitheamh"
                    , jul = "Iúil"
                    , aug = "Lúnasa"
                    , sep = "Meán Fómhair"
                    , oct = "Deireadh Fómhair"
                    , nov = "Samhain"
                    , dec = "Nollaig"
                    }
                , narrow =
                    { jan = "E"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "B"
                    , jun = "M"
                    , jul = "I"
                    , aug = "L"
                    , sep = "M"
                    , oct = "D"
                    , nov = "S"
                    , dec = "N"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Ean"
                    , feb = "Feabh"
                    , mar = "Márta"
                    , apr = "Aib"
                    , may = "Beal"
                    , jun = "Meith"
                    , jul = "Iúil"
                    , aug = "Lún"
                    , sep = "MFómh"
                    , oct = "DFómh"
                    , nov = "Samh"
                    , dec = "Noll"
                    }
                , wide =
                    { jan = "Eanáir"
                    , feb = "Feabhra"
                    , mar = "Márta"
                    , apr = "Aibreán"
                    , may = "Bealtaine"
                    , jun = "Meitheamh"
                    , jul = "Iúil"
                    , aug = "Lúnasa"
                    , sep = "Meán Fómhair"
                    , oct = "Deireadh Fómhair"
                    , nov = "Samhain"
                    , dec = "Nollaig"
                    }
                , narrow =
                    { jan = "E"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "B"
                    , jun = "M"
                    , jul = "I"
                    , aug = "L"
                    , sep = "M"
                    , oct = "D"
                    , nov = "S"
                    , dec = "N"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Domh"
                    , mon = "Luan"
                    , tue = "Máirt"
                    , wed = "Céad"
                    , thu = "Déar"
                    , fri = "Aoine"
                    , sat = "Sath"
                    }
                , wide =
                    { sun = "Dé Domhnaigh"
                    , mon = "Dé Luain"
                    , tue = "Dé Máirt"
                    , wed = "Dé Céadaoin"
                    , thu = "Déardaoin"
                    , fri = "Dé hAoine"
                    , sat = "Dé Sathairn"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "C"
                    , thu = "D"
                    , fri = "A"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Domh"
                    , mon = "Luan"
                    , tue = "Máirt"
                    , wed = "Céad"
                    , thu = "Déar"
                    , fri = "Aoine"
                    , sat = "Sath"
                    }
                , wide =
                    { sun = "Dé Domhnaigh"
                    , mon = "Dé Luain"
                    , tue = "Dé Máirt"
                    , wed = "Dé Céadaoin"
                    , thu = "Déardaoin"
                    , fri = "Dé hAoine"
                    , sat = "Dé Sathairn"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "C"
                    , thu = "D"
                    , fri = "A"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "RC", ad = "AD" }
                , wide = { bc = "Roimh Chríost", ad = "Anno Domini" }
                , narrow = { bc = "RC", ad = "AD" }
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
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
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
                , ( "M", "LL" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'seachtain' 'a' W 'i' MMMM" )
                , ( "MMMMW-count-two", "'seachtain' 'a' W 'i' MMMM" )
                , ( "MMMMW-count-few", "'seachtain' 'a' W 'i' MMMM" )
                , ( "MMMMW-count-many", "'seachtain' 'a' W 'i' MMMM" )
                , ( "MMMMW-count-other", "'seachtain' 'a' W 'i' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'seachtain' 'a' w 'in' Y" )
                , ( "yw-count-two", "'seachtain' 'a' w 'in' Y" )
                , ( "yw-count-few", "'seachtain' 'a' w 'in' Y" )
                , ( "yw-count-many", "'seachtain' 'a' w 'in' Y" )
                , ( "yw-count-other", "'seachtain' 'a' w 'in' Y" )
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
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ga_GB : Internal.Locale.Locale
ga_GB =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ga"
            , script = Nothing
            , territory = Just "GB"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "r.n.", pm = "i.n.", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "r.n.", pm = "i.n.", dayPeriods = Dict.fromList [] }
                , narrow =
                    { am = "r.n.", pm = "i.n.", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "dd/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Ean"
                    , feb = "Feabh"
                    , mar = "Márta"
                    , apr = "Aib"
                    , may = "Beal"
                    , jun = "Meith"
                    , jul = "Iúil"
                    , aug = "Lún"
                    , sep = "MFómh"
                    , oct = "DFómh"
                    , nov = "Samh"
                    , dec = "Noll"
                    }
                , wide =
                    { jan = "Eanáir"
                    , feb = "Feabhra"
                    , mar = "Márta"
                    , apr = "Aibreán"
                    , may = "Bealtaine"
                    , jun = "Meitheamh"
                    , jul = "Iúil"
                    , aug = "Lúnasa"
                    , sep = "Meán Fómhair"
                    , oct = "Deireadh Fómhair"
                    , nov = "Samhain"
                    , dec = "Nollaig"
                    }
                , narrow =
                    { jan = "E"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "B"
                    , jun = "M"
                    , jul = "I"
                    , aug = "L"
                    , sep = "M"
                    , oct = "D"
                    , nov = "S"
                    , dec = "N"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Ean"
                    , feb = "Feabh"
                    , mar = "Márta"
                    , apr = "Aib"
                    , may = "Beal"
                    , jun = "Meith"
                    , jul = "Iúil"
                    , aug = "Lún"
                    , sep = "MFómh"
                    , oct = "DFómh"
                    , nov = "Samh"
                    , dec = "Noll"
                    }
                , wide =
                    { jan = "Eanáir"
                    , feb = "Feabhra"
                    , mar = "Márta"
                    , apr = "Aibreán"
                    , may = "Bealtaine"
                    , jun = "Meitheamh"
                    , jul = "Iúil"
                    , aug = "Lúnasa"
                    , sep = "Meán Fómhair"
                    , oct = "Deireadh Fómhair"
                    , nov = "Samhain"
                    , dec = "Nollaig"
                    }
                , narrow =
                    { jan = "E"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "B"
                    , jun = "M"
                    , jul = "I"
                    , aug = "L"
                    , sep = "M"
                    , oct = "D"
                    , nov = "S"
                    , dec = "N"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Domh"
                    , mon = "Luan"
                    , tue = "Máirt"
                    , wed = "Céad"
                    , thu = "Déar"
                    , fri = "Aoine"
                    , sat = "Sath"
                    }
                , wide =
                    { sun = "Dé Domhnaigh"
                    , mon = "Dé Luain"
                    , tue = "Dé Máirt"
                    , wed = "Dé Céadaoin"
                    , thu = "Déardaoin"
                    , fri = "Dé hAoine"
                    , sat = "Dé Sathairn"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "C"
                    , thu = "D"
                    , fri = "A"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Domh"
                    , mon = "Luan"
                    , tue = "Máirt"
                    , wed = "Céad"
                    , thu = "Déar"
                    , fri = "Aoine"
                    , sat = "Sath"
                    }
                , wide =
                    { sun = "Dé Domhnaigh"
                    , mon = "Dé Luain"
                    , tue = "Dé Máirt"
                    , wed = "Dé Céadaoin"
                    , thu = "Déardaoin"
                    , fri = "Dé hAoine"
                    , sat = "Dé Sathairn"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "C"
                    , thu = "D"
                    , fri = "A"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "RC", ad = "AD" }
                , wide = { bc = "Roimh Chríost", ad = "Anno Domini" }
                , narrow = { bc = "RC", ad = "AD" }
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
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd/MM/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
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
                , ( "M", "LL" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'seachtain' 'a' W 'i' MMMM" )
                , ( "MMMMW-count-two", "'seachtain' 'a' W 'i' MMMM" )
                , ( "MMMMW-count-few", "'seachtain' 'a' W 'i' MMMM" )
                , ( "MMMMW-count-many", "'seachtain' 'a' W 'i' MMMM" )
                , ( "MMMMW-count-other", "'seachtain' 'a' W 'i' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM/y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'seachtain' 'a' w 'in' Y" )
                , ( "yw-count-two", "'seachtain' 'a' w 'in' Y" )
                , ( "yw-count-few", "'seachtain' 'a' w 'in' Y" )
                , ( "yw-count-many", "'seachtain' 'a' w 'in' Y" )
                , ( "yw-count-other", "'seachtain' 'a' w 'in' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
