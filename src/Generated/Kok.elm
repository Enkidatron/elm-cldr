module Generated.Kok exposing (kok)

{-|

@docs kok

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

  - Short : d-M-yy
  - Medium : d-MMM-y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
kok : Internal.Locale.Locale
kok =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "kok"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "सकाळ", pm = "सांज", dayPeriods = Dict.fromList [] }
                , narrow = { am = "a", pm = "p", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "d-M-yy"
                , medium = "d-MMM-y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "जानेवारी"
                    , feb = "फेब्रुवारी"
                    , mar = "मार्च"
                    , apr = "एप्रील"
                    , may = "मे"
                    , jun = "जून"
                    , jul = "जुलय"
                    , aug = "ऑगस्ट"
                    , sep = "सप्टेंबर"
                    , oct = "ऑक्टोबर"
                    , nov = "नोव्हेंबर"
                    , dec = "डिसेंबर"
                    }
                , wide =
                    { jan = "जानेवारी"
                    , feb = "फेब्रुवारी"
                    , mar = "मार्च"
                    , apr = "एप्रील"
                    , may = "मे"
                    , jun = "जून"
                    , jul = "जुलय"
                    , aug = "ऑगस्ट"
                    , sep = "सप्टेंबर"
                    , oct = "ऑक्टोबर"
                    , nov = "नोव्हेंबर"
                    , dec = "डिसेंबर"
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
                    { jan = "जाने"
                    , feb = "फेब्रु"
                    , mar = "मार्च"
                    , apr = "एप्री"
                    , may = "मे"
                    , jun = "जून"
                    , jul = "जुल"
                    , aug = "ऑग"
                    , sep = "सप्टें"
                    , oct = "ऑक्टो"
                    , nov = "नो"
                    , dec = "डिसे"
                    }
                , wide =
                    { jan = "जानेवारी"
                    , feb = "फेब्रुवारी"
                    , mar = "मार्च"
                    , apr = "एप्रील"
                    , may = "मे"
                    , jun = "जून"
                    , jul = "जुलय"
                    , aug = "ऑगस्ट"
                    , sep = "सप्टेंबर"
                    , oct = "ऑक्टोबर"
                    , nov = "नोव्हेंबर"
                    , dec = "डिसेंबर"
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
                    { sun = "आयतार"
                    , mon = "सोमार"
                    , tue = "मंगळार"
                    , wed = "बुधवार"
                    , thu = "बिरेस्तार"
                    , fri = "शुक्रार"
                    , sat = "शेनवार"
                    }
                , wide =
                    { sun = "आयतार"
                    , mon = "सोमार"
                    , tue = "मंगळार"
                    , wed = "बुधवार"
                    , thu = "बिरेस्तार"
                    , fri = "शुक्रार"
                    , sat = "शेनवार"
                    }
                , narrow =
                    { sun = "आ"
                    , mon = "सो"
                    , tue = "मं"
                    , wed = "बु"
                    , thu = "बि"
                    , fri = "शु"
                    , sat = "शे"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "आयतार"
                    , mon = "सोमार"
                    , tue = "मंगळार"
                    , wed = "बुधवार"
                    , thu = "बिरेस्तार"
                    , fri = "शुक्रार"
                    , sat = "शेनवार"
                    }
                , wide =
                    { sun = "आयतार"
                    , mon = "सोमार"
                    , tue = "मंगळार"
                    , wed = "बुधवार"
                    , thu = "बिरेस्तार"
                    , fri = "शुक्रार"
                    , sat = "शेनवार"
                    }
                , narrow =
                    { sun = "आ"
                    , mon = "सो"
                    , tue = "मं"
                    , wed = "बु"
                    , thu = "ब"
                    , fri = "शु"
                    , sat = "शे"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "क्रिस्तपूर्व", ad = "क्रि.श." }
                , wide = { bc = "क्रिस्तपूर्व", ad = "क्रिस्तशक" }
                , narrow = { bc = "क्रिस्तपूर्व", ad = "क्रि.श." }
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
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
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
                , ( "MEd", "d-M, E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d-M-y" )
                , ( "yMEd", "d-M-y, E" )
                , ( "yMMM", "y MMM" )
                , ( "yMMMd", "y MMM d" )
                , ( "yMMMEd", "y MMM d, E" )
                , ( "yMMMM", "MMMM, y" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
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
