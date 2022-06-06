module Generated.Alt.My exposing (my)

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
        [ ( "my"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd-MM-yy
  - Medium : y- MMM d
  - Long : y- MMMM d
  - Full : y- MMMM d- EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
my : Internal.Locale.Locale
my =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "my"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "နံနက်"
                    , pm = "ညနေ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "နေ့လယ်" )
                            , ( "evening1", "ညနေ" )
                            , ( "midnight", "သန်းခေါင်ယံ" )
                            , ( "morning1", "နံနက်" )
                            , ( "night1", "ည" )
                            , ( "noon", "မွန်းတည့်" )
                            ]
                    }
                , wide =
                    { am = "နံနက်"
                    , pm = "ညနေ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "နေ့လယ်" )
                            , ( "evening1", "ညနေ" )
                            , ( "midnight", "သန်းခေါင်ယံ" )
                            , ( "morning1", "နံနက်" )
                            , ( "night1", "ည" )
                            , ( "noon", "မွန်းတည့်" )
                            ]
                    }
                , narrow =
                    { am = "နံနက်"
                    , pm = "ညနေ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "နေ့လယ်" )
                            , ( "evening1", "ညနေ" )
                            , ( "midnight", "သန်းခေါင်ယံ" )
                            , ( "morning1", "နံနက်" )
                            , ( "night1", "ည" )
                            , ( "noon", "မွန်းတည့်" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd-MM-yy"
                , medium = "y- MMM d"
                , long = "y- MMMM d"
                , full = "y- MMMM d- EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ဇန်"
                    , feb = "ဖေ"
                    , mar = "မတ်"
                    , apr = "ဧ"
                    , may = "မေ"
                    , jun = "ဇွန်"
                    , jul = "ဇူ"
                    , aug = "ဩ"
                    , sep = "စက်"
                    , oct = "အောက်"
                    , nov = "နို"
                    , dec = "ဒီ"
                    }
                , wide =
                    { jan = "ဇန်နဝါရီ"
                    , feb = "ဖေဖော်ဝါရီ"
                    , mar = "မတ်"
                    , apr = "ဧပြီ"
                    , may = "မေ"
                    , jun = "ဇွန်"
                    , jul = "ဇူလိုင်"
                    , aug = "ဩဂုတ်"
                    , sep = "စက်တင်ဘာ"
                    , oct = "အောက်တိုဘာ"
                    , nov = "နိုဝင်ဘာ"
                    , dec = "ဒီဇင်ဘာ"
                    }
                , narrow =
                    { jan = "ဇ"
                    , feb = "ဖ"
                    , mar = "မ"
                    , apr = "ဧ"
                    , may = "မ"
                    , jun = "ဇ"
                    , jul = "ဇ"
                    , aug = "ဩ"
                    , sep = "စ"
                    , oct = "အ"
                    , nov = "န"
                    , dec = "ဒ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ဇန်"
                    , feb = "ဖေ"
                    , mar = "မတ်"
                    , apr = "ဧ"
                    , may = "မေ"
                    , jun = "ဇွန်"
                    , jul = "ဇူ"
                    , aug = "ဩ"
                    , sep = "စက်"
                    , oct = "အောက်"
                    , nov = "နို"
                    , dec = "ဒီ"
                    }
                , wide =
                    { jan = "ဇန်နဝါရီ"
                    , feb = "ဖေဖော်ဝါရီ"
                    , mar = "မတ်"
                    , apr = "ဧပြီ"
                    , may = "မေ"
                    , jun = "ဇွန်"
                    , jul = "ဇူလိုင်"
                    , aug = "ဩဂုတ်"
                    , sep = "စက်တင်ဘာ"
                    , oct = "အောက်တိုဘာ"
                    , nov = "နိုဝင်ဘာ"
                    , dec = "ဒီဇင်ဘာ"
                    }
                , narrow =
                    { jan = "ဇ"
                    , feb = "ဖ"
                    , mar = "မ"
                    , apr = "ဧ"
                    , may = "မ"
                    , jun = "ဇ"
                    , jul = "ဇ"
                    , aug = "ဩ"
                    , sep = "စ"
                    , oct = "အ"
                    , nov = "န"
                    , dec = "ဒ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "တနင်္ဂနွေ"
                    , mon = "တနင်္လာ"
                    , tue = "အင်္ဂါ"
                    , wed = "ဗုဒ္ဓဟူး"
                    , thu = "ကြာသပတေး"
                    , fri = "သောကြာ"
                    , sat = "စနေ"
                    }
                , wide =
                    { sun = "တနင်္ဂနွေ"
                    , mon = "တနင်္လာ"
                    , tue = "အင်္ဂါ"
                    , wed = "ဗုဒ္ဓဟူး"
                    , thu = "ကြာသပတေး"
                    , fri = "သောကြာ"
                    , sat = "စနေ"
                    }
                , narrow =
                    { sun = "တ"
                    , mon = "တ"
                    , tue = "အ"
                    , wed = "ဗ"
                    , thu = "က"
                    , fri = "သ"
                    , sat = "စ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "တနင်္ဂနွေ"
                    , mon = "တနင်္လာ"
                    , tue = "အင်္ဂါ"
                    , wed = "ဗုဒ္ဓဟူး"
                    , thu = "ကြာသပတေး"
                    , fri = "သောကြာ"
                    , sat = "စနေ"
                    }
                , wide =
                    { sun = "တနင်္ဂနွေ"
                    , mon = "တနင်္လာ"
                    , tue = "အင်္ဂါ"
                    , wed = "ဗုဒ္ဓဟူး"
                    , thu = "ကြာသပတေး"
                    , fri = "သောကြာ"
                    , sat = "စနေ"
                    }
                , narrow =
                    { sun = "တ"
                    , mon = "တ"
                    , tue = "အ"
                    , wed = "ဗ"
                    , thu = "က"
                    , fri = "သ"
                    , sat = "စ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ဘီစီ", ad = "အဒေီ" }
                , wide = { bc = "ခရစ်တော် မပေါ်မီနှစ်", ad = "ခရစ်နှစ်" }
                , narrow = { bc = "ဘီစီ", ad = "အဒေီ" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "z HH:mm:ss"
                , full = "zzzz HH:mm:ss"
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
                , ( "E", "cccနေ့" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d ရက် Eနေ့" )
                , ( "Ehm", "E B h:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E B h:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y- MMM d" )
                , ( "GyMMMEd", "G y- MMM d- E" )
                , ( "h", "B h" )
                , ( "H", "HH" )
                , ( "hm", "B h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "B h:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "v a h:mm:ss" )
                , ( "Hmsv", "v HH:mm:ss" )
                , ( "hmv", "v a h:mm" )
                , ( "Hmv", "v HH:mm" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "d-M- E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "MMM d- E" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMEd", "MMMM d ရက် Eနေ့" )
                , ( "MMMMW-count-other", "MMMM လ W ပတ်မြောက်" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "dd-MM-y" )
                , ( "yMEd", "d/M/y- E" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "y- MMM d" )
                , ( "yMMMEd", "y- MMM d- E" )
                , ( "yMMMM", "y MMMM" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-other", "Y ခု w ပတ်မြောက်" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
