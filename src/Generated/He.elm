module Generated.He exposing (he)

{-|

@docs he

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
        [ ( "he"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 3, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 6, 0 ) "night2"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.M.y
  - Medium : d בMMM y
  - Long : d בMMMM y
  - Full : EEEE, d בMMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
he : Internal.Locale.Locale
he =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "he"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "לפנה״צ"
                    , pm = "אחה״צ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "צהריים" )
                            , ( "afternoon2", "אחר הצהריים" )
                            , ( "evening1", "ערב" )
                            , ( "midnight", "חצות" )
                            , ( "morning1", "בוקר" )
                            , ( "night1", "לילה" )
                            , ( "night2", "לפנות בוקר" )
                            ]
                    }
                , wide =
                    { am = "לפנה״צ"
                    , pm = "אחה״צ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "בצהריים" )
                            , ( "afternoon2", "אחר הצהריים" )
                            , ( "evening1", "בערב" )
                            , ( "midnight", "חצות" )
                            , ( "morning1", "בבוקר" )
                            , ( "night1", "בלילה" )
                            , ( "night2", "לפנות בוקר" )
                            ]
                    }
                , narrow =
                    { am = "לפנה״צ"
                    , pm = "אחה״צ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "בצהריים" )
                            , ( "afternoon2", "אחה״צ" )
                            , ( "evening1", "בערב" )
                            , ( "midnight", "חצות" )
                            , ( "morning1", "בבוקר" )
                            , ( "night1", "בלילה" )
                            , ( "night2", "לפנות בוקר" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.y"
                , medium = "d בMMM y"
                , long = "d בMMMM y"
                , full = "EEEE, d בMMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ינו׳"
                    , feb = "פבר׳"
                    , mar = "מרץ"
                    , apr = "אפר׳"
                    , may = "מאי"
                    , jun = "יוני"
                    , jul = "יולי"
                    , aug = "אוג׳"
                    , sep = "ספט׳"
                    , oct = "אוק׳"
                    , nov = "נוב׳"
                    , dec = "דצמ׳"
                    }
                , wide =
                    { jan = "ינואר"
                    , feb = "פברואר"
                    , mar = "מרץ"
                    , apr = "אפריל"
                    , may = "מאי"
                    , jun = "יוני"
                    , jul = "יולי"
                    , aug = "אוגוסט"
                    , sep = "ספטמבר"
                    , oct = "אוקטובר"
                    , nov = "נובמבר"
                    , dec = "דצמבר"
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
                    { jan = "ינו׳"
                    , feb = "פבר׳"
                    , mar = "מרץ"
                    , apr = "אפר׳"
                    , may = "מאי"
                    , jun = "יוני"
                    , jul = "יולי"
                    , aug = "אוג׳"
                    , sep = "ספט׳"
                    , oct = "אוק׳"
                    , nov = "נוב׳"
                    , dec = "דצמ׳"
                    }
                , wide =
                    { jan = "ינואר"
                    , feb = "פברואר"
                    , mar = "מרץ"
                    , apr = "אפריל"
                    , may = "מאי"
                    , jun = "יוני"
                    , jul = "יולי"
                    , aug = "אוגוסט"
                    , sep = "ספטמבר"
                    , oct = "אוקטובר"
                    , nov = "נובמבר"
                    , dec = "דצמבר"
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
                    { sun = "יום א׳"
                    , mon = "יום ב׳"
                    , tue = "יום ג׳"
                    , wed = "יום ד׳"
                    , thu = "יום ה׳"
                    , fri = "יום ו׳"
                    , sat = "שבת"
                    }
                , wide =
                    { sun = "יום ראשון"
                    , mon = "יום שני"
                    , tue = "יום שלישי"
                    , wed = "יום רביעי"
                    , thu = "יום חמישי"
                    , fri = "יום שישי"
                    , sat = "יום שבת"
                    }
                , narrow =
                    { sun = "א׳"
                    , mon = "ב׳"
                    , tue = "ג׳"
                    , wed = "ד׳"
                    , thu = "ה׳"
                    , fri = "ו׳"
                    , sat = "ש׳"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "יום א׳"
                    , mon = "יום ב׳"
                    , tue = "יום ג׳"
                    , wed = "יום ד׳"
                    , thu = "יום ה׳"
                    , fri = "יום ו׳"
                    , sat = "שבת"
                    }
                , wide =
                    { sun = "יום ראשון"
                    , mon = "יום שני"
                    , tue = "יום שלישי"
                    , wed = "יום רביעי"
                    , thu = "יום חמישי"
                    , fri = "יום שישי"
                    , sat = "יום שבת"
                    }
                , narrow =
                    { sun = "א׳"
                    , mon = "ב׳"
                    , tue = "ג׳"
                    , wed = "ד׳"
                    , thu = "ה׳"
                    , fri = "ו׳"
                    , sat = "ש׳"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "לפנה״ס", ad = "לספירה" }
                , wide = { bc = "לפני הספירה", ad = "לספירה" }
                , narrow = { bc = "לפני", ad = "אחריי" }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss zzzz"
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
                , ( "Ed", "E ה-d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E H:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E H:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d/M/y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d בMMM y G" )
                , ( "GyMMMEd", "E, d בMMM y G" )
                , ( "h", "\u{200F}h a" )
                , ( "H", "H" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M" )
                , ( "MEd", "E, d.M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d בMMM" )
                , ( "MMMEd", "E, d בMMM" )
                , ( "MMMMd", "d בMMMM" )
                , ( "MMMMW-count-one", "שבוע W בMMMM" )
                , ( "MMMMW-count-two", "שבוע W בMMMM" )
                , ( "MMMMW-count-other", "שבוע W בMMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMM", "M.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d בMMM y" )
                , ( "yMMMEd", "E, d בMMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "שבוע w בשנת Y" )
                , ( "yw-count-two", "שבוע w בשנת Y" )
                , ( "yw-count-other", "שבוע w בשנת Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
