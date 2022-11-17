module Generated.Or exposing (or)

{-|

@docs or

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

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
or : Internal.Locale.Locale
or =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "or"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                , wide = { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                , narrow =
                    { am = "ପୂ", pm = "ଅ", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "M/d/yy"
                , medium = "MMM d, y"
                , long = "MMMM d, y"
                , full = "EEEE, MMMM d, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ଜାନୁଆରୀ"
                    , feb = "ଫେବୃଆରୀ"
                    , mar = "ମାର୍ଚ୍ଚ"
                    , apr = "ଅପ୍ରେଲ"
                    , may = "ମଇ"
                    , jun = "ଜୁନ"
                    , jul = "ଜୁଲାଇ"
                    , aug = "ଅଗଷ୍ଟ"
                    , sep = "ସେପ୍ଟେମ୍ବର"
                    , oct = "ଅକ୍ଟୋବର"
                    , nov = "ନଭେମ୍ବର"
                    , dec = "ଡିସେମ୍ବର"
                    }
                , wide =
                    { jan = "ଜାନୁଆରୀ"
                    , feb = "ଫେବୃଆରୀ"
                    , mar = "ମାର୍ଚ୍ଚ"
                    , apr = "ଅପ୍ରେଲ"
                    , may = "ମଇ"
                    , jun = "ଜୁନ"
                    , jul = "ଜୁଲାଇ"
                    , aug = "ଅଗଷ୍ଟ"
                    , sep = "ସେପ୍ଟେମ୍ବର"
                    , oct = "ଅକ୍ଟୋବର"
                    , nov = "ନଭେମ୍ବର"
                    , dec = "ଡିସେମ୍ବର"
                    }
                , narrow =
                    { jan = "ଜା"
                    , feb = "ଫେ"
                    , mar = "ମା"
                    , apr = "ଅ"
                    , may = "ମଇ"
                    , jun = "ଜୁ"
                    , jul = "ଜୁ"
                    , aug = "ଅ"
                    , sep = "ସେ"
                    , oct = "ଅ"
                    , nov = "ନ"
                    , dec = "ଡି"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ଜାନୁଆରୀ"
                    , feb = "ଫେବୃଆରୀ"
                    , mar = "ମାର୍ଚ୍ଚ"
                    , apr = "ଅପ୍ରେଲ"
                    , may = "ମଇ"
                    , jun = "ଜୁନ"
                    , jul = "ଜୁଲାଇ"
                    , aug = "ଅଗଷ୍ଟ"
                    , sep = "ସେପ୍ଟେମ୍ବର"
                    , oct = "ଅକ୍ଟୋବର"
                    , nov = "ନଭେମ୍ବର"
                    , dec = "ଡିସେମ୍ବର"
                    }
                , wide =
                    { jan = "ଜାନୁଆରୀ"
                    , feb = "ଫେବୃଆରୀ"
                    , mar = "ମାର୍ଚ୍ଚ"
                    , apr = "ଅପ୍ରେଲ"
                    , may = "ମଇ"
                    , jun = "ଜୁନ"
                    , jul = "ଜୁଲାଇ"
                    , aug = "ଅଗଷ୍ଟ"
                    , sep = "ସେପ୍ଟେମ୍ବର"
                    , oct = "ଅକ୍ଟୋବର"
                    , nov = "ନଭେମ୍ବର"
                    , dec = "ଡିସେମ୍ବର"
                    }
                , narrow =
                    { jan = "ଜା"
                    , feb = "ଫେ"
                    , mar = "ମା"
                    , apr = "ଅ"
                    , may = "ମଇ"
                    , jun = "ଜୁ"
                    , jul = "ଜୁ"
                    , aug = "ଅ"
                    , sep = "ସେ"
                    , oct = "ଅ"
                    , nov = "ନ"
                    , dec = "ଡି"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ରବି"
                    , mon = "ସୋମ"
                    , tue = "ମଙ୍ଗଳ"
                    , wed = "ବୁଧ"
                    , thu = "ଗୁରୁ"
                    , fri = "ଶୁକ୍ର"
                    , sat = "ଶନି"
                    }
                , wide =
                    { sun = "ରବିବାର"
                    , mon = "ସୋମବାର"
                    , tue = "ମଙ୍ଗଳବାର"
                    , wed = "ବୁଧବାର"
                    , thu = "ଗୁରୁବାର"
                    , fri = "ଶୁକ୍ରବାର"
                    , sat = "ଶନିବାର"
                    }
                , narrow =
                    { sun = "ର"
                    , mon = "ସୋ"
                    , tue = "ମ"
                    , wed = "ବୁ"
                    , thu = "ଗୁ"
                    , fri = "ଶୁ"
                    , sat = "ଶ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ରବି"
                    , mon = "ସୋମ"
                    , tue = "ମଙ୍ଗଳ"
                    , wed = "ବୁଧ"
                    , thu = "ଗୁରୁ"
                    , fri = "ଶୁକ୍ର"
                    , sat = "ଶନି"
                    }
                , wide =
                    { sun = "ରବିବାର"
                    , mon = "ସୋମବାର"
                    , tue = "ମଙ୍ଗଳବାର"
                    , wed = "ବୁଧବାର"
                    , thu = "ଗୁରୁବାର"
                    , fri = "ଶୁକ୍ରବାର"
                    , sat = "ଶନିବାର"
                    }
                , narrow =
                    { sun = "ର"
                    , mon = "ସୋ"
                    , tue = "ମ"
                    , wed = "ବୁ"
                    , thu = "ଗୁ"
                    , fri = "ଶୁ"
                    , sat = "ଶ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "ଖ୍ରୀଷ୍ଟପୂର୍ବ", ad = "ଖ୍ରୀଷ୍ଟାବ୍ଦ" }
                , narrow = { bc = "BC", ad = "AD" }
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
                , long = "{0} ଠାରେ {1}"
                , full = "{0} ଠାରେ {1}"
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
                , ( "GyMMMd", "MMM d, y G" )
                , ( "GyMMMEd", "E, MMM d, y G" )
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
                , ( "Md", "M/d" )
                , ( "MEd", "E, M/d" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "E, MMM d" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-one", "MMMM ର ସପ୍ତାହ W" )
                , ( "MMMMW-count-other", "MMMM ର ସପ୍ତାହ W" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "M/d/y" )
                , ( "yMEd", "E, M/d/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "MMM d, y" )
                , ( "yMMMEd", "E, MMM d, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y ର ସପ୍ତାହ w" )
                , ( "yw-count-other", "Y ର ସପ୍ତାହ w" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
