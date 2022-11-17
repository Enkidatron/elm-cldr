module Generated.Ml exposing (ml)

{-|

@docs ml

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
        [ ( "ml"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 15, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 15, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 19, 0 ) "evening2"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 3, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y, MMM d
  - Long : y, MMMM d
  - Full : y, MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ml : Internal.Locale.Locale
ml =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ml"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ഉച്ചയ്ക്ക്" )
                            , ( "afternoon2", "ഉച്ചതിരിഞ്ഞ്" )
                            , ( "evening1", "വൈകുന്നേരം" )
                            , ( "evening2", "സന്ധ്യ" )
                            , ( "midnight", "അർദ്ധരാത്രി" )
                            , ( "morning1", "പുലർച്ചെ" )
                            , ( "morning2", "രാവിലെ" )
                            , ( "night1", "രാത്രി" )
                            , ( "noon", "ഉച്ച" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ഉച്ചയ്ക്ക്" )
                            , ( "afternoon2", "ഉച്ചതിരിഞ്ഞ്" )
                            , ( "evening1", "വൈകുന്നേരം" )
                            , ( "evening2", "സന്ധ്യ" )
                            , ( "midnight", "അർദ്ധരാത്രി" )
                            , ( "morning1", "പുലർച്ചെ" )
                            , ( "morning2", "രാവിലെ" )
                            , ( "night1", "രാത്രി" )
                            , ( "noon", "ഉച്ച" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ഉച്ചയ്ക്ക്" )
                            , ( "afternoon2", "ഉച്ചതിരിഞ്ഞ്" )
                            , ( "evening1", "വൈകുന്നേരം" )
                            , ( "evening2", "സന്ധ്യ" )
                            , ( "midnight", "അ" )
                            , ( "morning1", "പുലർച്ചെ" )
                            , ( "morning2", "രാവിലെ" )
                            , ( "night1", "രാത്രി" )
                            , ( "noon", "ഉച്ച" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "y, MMM d"
                , long = "y, MMMM d"
                , full = "y, MMMM d, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ജനു"
                    , feb = "ഫെബ്രു"
                    , mar = "മാർ"
                    , apr = "ഏപ്രി"
                    , may = "മേയ്"
                    , jun = "ജൂൺ"
                    , jul = "ജൂലൈ"
                    , aug = "ഓഗ"
                    , sep = "സെപ്റ്റം"
                    , oct = "ഒക്ടോ"
                    , nov = "നവം"
                    , dec = "ഡിസം"
                    }
                , wide =
                    { jan = "ജനുവരി"
                    , feb = "ഫെബ്രുവരി"
                    , mar = "മാർച്ച്"
                    , apr = "ഏപ്രിൽ"
                    , may = "മേയ്"
                    , jun = "ജൂൺ"
                    , jul = "ജൂലൈ"
                    , aug = "ഓഗസ്റ്റ്"
                    , sep = "സെപ്റ്റംബർ"
                    , oct = "ഒക്\u{200C}ടോബർ"
                    , nov = "നവംബർ"
                    , dec = "ഡിസംബർ"
                    }
                , narrow =
                    { jan = "ജ"
                    , feb = "ഫെ"
                    , mar = "മാ"
                    , apr = "ഏ"
                    , may = "മെ"
                    , jun = "ജൂൺ"
                    , jul = "ജൂ"
                    , aug = "ഓ"
                    , sep = "സെ"
                    , oct = "ഒ"
                    , nov = "ന"
                    , dec = "ഡി"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ജനു"
                    , feb = "ഫെബ്രു"
                    , mar = "മാർ"
                    , apr = "ഏപ്രി"
                    , may = "മേയ്"
                    , jun = "ജൂൺ"
                    , jul = "ജൂലൈ"
                    , aug = "ഓഗ"
                    , sep = "സെപ്റ്റം"
                    , oct = "ഒക്ടോ"
                    , nov = "നവം"
                    , dec = "ഡിസം"
                    }
                , wide =
                    { jan = "ജനുവരി"
                    , feb = "ഫെബ്രുവരി"
                    , mar = "മാർച്ച്"
                    , apr = "ഏപ്രിൽ"
                    , may = "മേയ്"
                    , jun = "ജൂൺ"
                    , jul = "ജൂലൈ"
                    , aug = "ഓഗസ്റ്റ്"
                    , sep = "സെപ്റ്റംബർ"
                    , oct = "ഒക്\u{200C}ടോബർ"
                    , nov = "നവംബർ"
                    , dec = "ഡിസംബർ"
                    }
                , narrow =
                    { jan = "ജ"
                    , feb = "ഫെ"
                    , mar = "മാ"
                    , apr = "ഏ"
                    , may = "മെ"
                    , jun = "ജൂൺ"
                    , jul = "ജൂ"
                    , aug = "ഓ"
                    , sep = "സെ"
                    , oct = "ഒ"
                    , nov = "ന"
                    , dec = "ഡി"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ഞായർ"
                    , mon = "തിങ്കൾ"
                    , tue = "ചൊവ്വ"
                    , wed = "ബുധൻ"
                    , thu = "വ്യാഴം"
                    , fri = "വെള്ളി"
                    , sat = "ശനി"
                    }
                , wide =
                    { sun = "ഞായറാഴ്\u{200C}ച"
                    , mon = "തിങ്കളാഴ്\u{200C}ച"
                    , tue = "ചൊവ്വാഴ്ച"
                    , wed = "ബുധനാഴ്\u{200C}ച"
                    , thu = "വ്യാഴാഴ്\u{200C}ച"
                    , fri = "വെള്ളിയാഴ്\u{200C}ച"
                    , sat = "ശനിയാഴ്\u{200C}ച"
                    }
                , narrow =
                    { sun = "ഞ"
                    , mon = "തി"
                    , tue = "ചൊ"
                    , wed = "ബു"
                    , thu = "വ്യാ"
                    , fri = "വെ"
                    , sat = "ശ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ഞായർ"
                    , mon = "തിങ്കൾ"
                    , tue = "ചൊവ്വ"
                    , wed = "ബുധൻ"
                    , thu = "വ്യാഴം"
                    , fri = "വെള്ളി"
                    , sat = "ശനി"
                    }
                , wide =
                    { sun = "ഞായറാഴ്\u{200C}ച"
                    , mon = "തിങ്കളാഴ്\u{200C}ച"
                    , tue = "ചൊവ്വാഴ്\u{200C}ച"
                    , wed = "ബുധനാഴ്\u{200C}ച"
                    , thu = "വ്യാഴാഴ്\u{200C}ച"
                    , fri = "വെള്ളിയാഴ്\u{200C}ച"
                    , sat = "ശനിയാഴ്\u{200C}ച"
                    }
                , narrow =
                    { sun = "ഞാ"
                    , mon = "തി"
                    , tue = "ചൊ"
                    , wed = "ബു"
                    , thu = "വ്യാ"
                    , fri = "വെ"
                    , sat = "ശ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ക്രി.മു.", ad = "എഡി" }
                , wide = { bc = "ക്രിസ്\u{200C}തുവിന് മുമ്പ്", ad = "ആന്നോ ഡൊമിനി" }
                , narrow = { bc = "ക്രി.മു.", ad = "എഡി" }
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
                , ( "EBhm", "E, B h:mm" )
                , ( "EBhms", "E, B h:mm:ss" )
                , ( "Ed", "d, E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "M/d/y GGGGG" )
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
                , ( "Md", "d/M" )
                , ( "MEd", "d/M, E" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "MMM d, E" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMEd", "MMMM d, E" )
                , ( "MMMMW-count-one", "MMMM - ആഴ്ച W" )
                , ( "MMMMW-count-other", "MMMM - ആഴ്ച W" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "y-MM" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "d-M-y, E" )
                , ( "yMM", "y-MM" )
                , ( "yMMM", "y MMM" )
                , ( "yMMMd", "y MMM d" )
                , ( "yMMMEd", "y MMM d, E" )
                , ( "yMMMM", "y MMMM" )
                , ( "yQQQ", "y QQQ" )
                , ( "yQQQQ", "y QQQQ" )
                , ( "yw-count-one", "Y-ലെ ആഴ്ച w" )
                , ( "yw-count-other", "Y-ലെ ആഴ്ച w" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
