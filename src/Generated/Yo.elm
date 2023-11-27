module Generated.Yo exposing (yo, yo_BJ)

{-|

@docs yo, yo_BJ

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

  - Short : d/M/y
  - Medium : d MM y
  - Long : d MMM y
  - Full : EEEE, d MMM y

Time format strings:

  - Short : H:m
  - Medium : H:m:s
  - Long : H:mm:ss z
  - Full : HH:mm:ss zzzz

-}
yo : Internal.Locale.Locale
yo =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "yo"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "Àárọ̀"
                    , pm = "Ọ̀sán"
                    , dayPeriods = Dict.fromList []
                    }
                , wide =
                    { am = "Àárọ̀"
                    , pm = "Ọ̀sán"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "Àárọ̀"
                    , pm = "Ọ̀sán"
                    , dayPeriods = Dict.fromList []
                    }
                }
            , datePatterns =
                { short = "d/M/y"
                , medium = "d MM y"
                , long = "d MMM y"
                , full = "EEEE, d MMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Ṣẹ́r"
                    , feb = "Èrèl"
                    , mar = "Ẹrẹ̀n"
                    , apr = "Ìgb"
                    , may = "Ẹ̀bi"
                    , jun = "Òkú"
                    , jul = "Agẹ"
                    , aug = "Ògú"
                    , sep = "Owe"
                    , oct = "Ọ̀wà"
                    , nov = "Bél"
                    , dec = "Ọ̀pẹ"
                    }
                , wide =
                    { jan = "Oṣù Ṣẹ́rẹ́"
                    , feb = "Oṣù Èrèlè"
                    , mar = "Oṣù Ẹrẹ̀nà"
                    , apr = "Oṣù Ìgbé"
                    , may = "Oṣù Ẹ̀bibi"
                    , jun = "Oṣù Òkúdu"
                    , jul = "Oṣù Agẹmọ"
                    , aug = "Oṣù Ògún"
                    , sep = "Oṣù Owewe"
                    , oct = "Oṣù Ọ̀wàrà"
                    , nov = "Oṣù Bélú"
                    , dec = "Oṣù Ọ̀pẹ̀"
                    }
                , narrow =
                    { jan = "S"
                    , feb = "È"
                    , mar = "Ẹ"
                    , apr = "Ì"
                    , may = "Ẹ̀"
                    , jun = "Ò"
                    , jul = "A"
                    , aug = "Ò"
                    , sep = "O"
                    , oct = "Ọ̀"
                    , nov = "B"
                    , dec = "Ọ̀"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Ṣẹ́"
                    , feb = "Èr"
                    , mar = "Ẹr"
                    , apr = "Ìg"
                    , may = "Ẹ̀b"
                    , jun = "Òk"
                    , jul = "Ag"
                    , aug = "Òg"
                    , sep = "Ow"
                    , oct = "Ọ̀w"
                    , nov = "Bé"
                    , dec = "Ọ̀p"
                    }
                , wide =
                    { jan = "Ṣẹ́rẹ́"
                    , feb = "Èrèlè"
                    , mar = "Ẹrẹ̀nà"
                    , apr = "Ìgbé"
                    , may = "Ẹ̀bibi"
                    , jun = "Òkúdu"
                    , jul = "Agẹmọ"
                    , aug = "Ògún"
                    , sep = "Owewe"
                    , oct = "Ọ̀wàrà"
                    , nov = "Bélú"
                    , dec = "Ọ̀pẹ̀"
                    }
                , narrow =
                    { jan = "S"
                    , feb = "È"
                    , mar = "Ẹ"
                    , apr = "Ì"
                    , may = "Ẹ̀"
                    , jun = "Ò"
                    , jul = "A"
                    , aug = "Ò"
                    , sep = "O"
                    , oct = "Ọ̀"
                    , nov = "B"
                    , dec = "Ọ̀"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Àìk"
                    , mon = "Aj"
                    , tue = "Ìsẹ́g"
                    , wed = "Ọjọ́r"
                    , thu = "Ọjọ́b"
                    , fri = "Ẹt"
                    , sat = "Àbám"
                    }
                , wide =
                    { sun = "Ọjọ́ Àìkú"
                    , mon = "Ọjọ́ Ajé"
                    , tue = "Ọjọ́ Ìsẹ́gun"
                    , wed = "Ọjọ́rú"
                    , thu = "Ọjọ́bọ"
                    , fri = "Ọjọ́ Ẹtì"
                    , sat = "Ọjọ́ Àbámẹ́ta"
                    }
                , narrow =
                    { sun = "À"
                    , mon = "A"
                    , tue = "Ì"
                    , wed = "Ọ"
                    , thu = "Ọ"
                    , fri = "Ẹ"
                    , sat = "À"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Àìk"
                    , mon = "Aj"
                    , tue = "Ìsẹ́g"
                    , wed = "Ọjọ́r"
                    , thu = "Ọjọ́b"
                    , fri = "Ẹt"
                    , sat = "Àbám"
                    }
                , wide =
                    { sun = "Àìkú"
                    , mon = "Ajé"
                    , tue = "Ìsẹ́gun"
                    , wed = "Ọjọ́rú"
                    , thu = "Ọjọ́bọ"
                    , fri = "Ẹtì"
                    , sat = "Àbámẹ́ta"
                    }
                , narrow =
                    { sun = "À"
                    , mon = "A"
                    , tue = "Ì"
                    , wed = "Ọ"
                    , thu = "Ọ"
                    , fri = "Ẹ"
                    , sat = "À"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BCE", ad = "AD" }
                , wide = { bc = "Saju Kristi", ad = "Lehin Kristi" }
                , narrow = { bc = "BCE", ad = "AD" }
                }
            , timePatterns =
                { short = "H:m"
                , medium = "H:m:s"
                , long = "H:mm:ss z"
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
                , ( "Ed", "E, d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "d MMM, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "d, MMMM E" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "d/M/y, E" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM , y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-other", "'week' w 'of' Y" )
                ]
            , timeSkeletons =
                { short = "Hm"
                , medium = "Hms"
                , long = "Hmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : d MM y
  - Long : d MMM y
  - Full : EEEE, d MMM y

Time format strings:

  - Short : H:m
  - Medium : H:m:s
  - Long : H:mm:ss z
  - Full : HH:mm:ss zzzz

-}
yo_BJ : Internal.Locale.Locale
yo_BJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "yo"
            , script = Nothing
            , territory = Just "BJ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "Àárɔ̀"
                    , pm = "Ɔ̀sán"
                    , dayPeriods = Dict.fromList []
                    }
                , wide =
                    { am = "Àárɔ̀"
                    , pm = "Ɔ̀sán"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "Àárɔ̀"
                    , pm = "Ɔ̀sán"
                    , dayPeriods = Dict.fromList []
                    }
                }
            , datePatterns =
                { short = "d/M/y"
                , medium = "d MM y"
                , long = "d MMM y"
                , full = "EEEE, d MMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "Shɛ́r"
                    , feb = "Èrèl"
                    , mar = "Ɛrɛ̀n"
                    , apr = "Ìgb"
                    , may = "Ɛ̀bi"
                    , jun = "Òkú"
                    , jul = "Agɛ"
                    , aug = "Ògú"
                    , sep = "Owe"
                    , oct = "Ɔ̀wà"
                    , nov = "Bél"
                    , dec = "Ɔ̀pɛ"
                    }
                , wide =
                    { jan = "Oshù Shɛ́rɛ́"
                    , feb = "Oshù Èrèlè"
                    , mar = "Oshù Ɛrɛ̀nà"
                    , apr = "Oshù Ìgbé"
                    , may = "Oshù Ɛ̀bibi"
                    , jun = "Oshù Òkúdu"
                    , jul = "Oshù Agɛmɔ"
                    , aug = "Oshù Ògún"
                    , sep = "Oshù Owewe"
                    , oct = "Oshù Ɔ̀wàrà"
                    , nov = "Oshù Bélú"
                    , dec = "Oshù Ɔ̀pɛ̀"
                    }
                , narrow =
                    { jan = "S"
                    , feb = "È"
                    , mar = "Ɛ"
                    , apr = "Ì"
                    , may = "Ɛ̀"
                    , jun = "Ò"
                    , jul = "A"
                    , aug = "Ò"
                    , sep = "O"
                    , oct = "Ɔ̀"
                    , nov = "B"
                    , dec = "Ɔ̀"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "Shɛ́"
                    , feb = "Èr"
                    , mar = "Ɛr"
                    , apr = "Ìg"
                    , may = "Ɛ̀b"
                    , jun = "Òk"
                    , jul = "Ag"
                    , aug = "Òg"
                    , sep = "Ow"
                    , oct = "Ɔ̀w"
                    , nov = "Bé"
                    , dec = "Ɔ̀p"
                    }
                , wide =
                    { jan = "Shɛ́rɛ́"
                    , feb = "Èrèlè"
                    , mar = "Ɛrɛ̀nà"
                    , apr = "Ìgbé"
                    , may = "Ɛ̀bibi"
                    , jun = "Òkúdu"
                    , jul = "Agɛmɔ"
                    , aug = "Ògún"
                    , sep = "Owewe"
                    , oct = "Ɔ̀wàrà"
                    , nov = "Bélú"
                    , dec = "Ɔ̀pɛ̀"
                    }
                , narrow =
                    { jan = "S"
                    , feb = "È"
                    , mar = "Ɛ"
                    , apr = "Ì"
                    , may = "Ɛ̀"
                    , jun = "Ò"
                    , jul = "A"
                    , aug = "Ò"
                    , sep = "O"
                    , oct = "Ɔ̀"
                    , nov = "B"
                    , dec = "Ɔ̀"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Àìk"
                    , mon = "Aj"
                    , tue = "Ìsɛ́g"
                    , wed = "Ɔjɔ́r"
                    , thu = "Ɔjɔ́b"
                    , fri = "Ɛt"
                    , sat = "Àbám"
                    }
                , wide =
                    { sun = "Ɔjɔ́ Àìkú"
                    , mon = "Ɔjɔ́ Ajé"
                    , tue = "Ɔjɔ́ Ìsɛ́gun"
                    , wed = "Ɔjɔ́rú"
                    , thu = "Ɔjɔ́bɔ"
                    , fri = "Ɔjɔ́ Ɛtì"
                    , sat = "Ɔjɔ́ Àbámɛ́ta"
                    }
                , narrow =
                    { sun = "À"
                    , mon = "A"
                    , tue = "Ì"
                    , wed = "Ɔ"
                    , thu = "Ɔ"
                    , fri = "Ɛ"
                    , sat = "À"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Àìk"
                    , mon = "Aj"
                    , tue = "Ìsɛ́g"
                    , wed = "Ɔjɔ́r"
                    , thu = "Ɔjɔ́b"
                    , fri = "Ɛt"
                    , sat = "Àbám"
                    }
                , wide =
                    { sun = "Àìkú"
                    , mon = "Ajé"
                    , tue = "Ìsɛ́gun"
                    , wed = "Ɔjɔ́rú"
                    , thu = "Ɔjɔ́bɔ"
                    , fri = "Ɛtì"
                    , sat = "Àbámɛ́ta"
                    }
                , narrow =
                    { sun = "À"
                    , mon = "A"
                    , tue = "Ì"
                    , wed = "Ɔ"
                    , thu = "Ɔ"
                    , fri = "Ɛ"
                    , sat = "À"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BCE", ad = "AD" }
                , wide = { bc = "Saju Kristi", ad = "Lehin Kristi" }
                , narrow = { bc = "BCE", ad = "AD" }
                }
            , timePatterns =
                { short = "H:m"
                , medium = "H:m:s"
                , long = "H:mm:ss z"
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
                , ( "Ed", "E, d" )
                , ( "Ehm", "E h:mm\u{202F}a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss\u{202F}a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss\u{202F}a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm\u{202F}a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "d MMM, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "d, MMMM E" )
                , ( "MMMMW-count-other", "'week' W 'of' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "d/M/y, E" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM , y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-other", "'week' w 'of' Y" )
                ]
            , timeSkeletons =
                { short = "Hm"
                , medium = "Hms"
                , long = "Hmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
