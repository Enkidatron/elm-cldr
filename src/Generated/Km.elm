module Generated.Km exposing (km)

{-|

@docs km

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
        [ ( "km"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
km : Internal.Locale.Locale
km =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "km"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "នៅពេលរសៀល" )
                            , ( "evening1", "នៅពេល\u{200B}ល្ងាច" )
                            , ( "midnight", "អធ្រាត្រ" )
                            , ( "morning1", "នៅពេល\u{200B}ព្រឹក" )
                            , ( "night1", "នៅពេល\u{200B}យប់" )
                            , ( "noon", "ថ្ងៃត្រង់" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "នៅពេលរសៀល" )
                            , ( "evening1", "នៅពេល\u{200B}ល្ងាច" )
                            , ( "midnight", "អធ្រាត្រ" )
                            , ( "morning1", "នៅពេល\u{200B}ព្រឹក" )
                            , ( "night1", "នៅពេល\u{200B}យប់" )
                            , ( "noon", "ថ្ងៃត្រង់" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "នៅពេលរសៀល" )
                            , ( "evening1", "នៅពេល\u{200B}ល្ងាច" )
                            , ( "midnight", "អធ្រាត្រ" )
                            , ( "morning1", "នៅពេល\u{200B}ព្រឹក" )
                            , ( "night1", "នៅពេល\u{200B}យប់" )
                            , ( "noon", "ថ្ងៃត្រង់" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "មករា"
                    , feb = "កុម្ភៈ"
                    , mar = "មីនា"
                    , apr = "មេសា"
                    , may = "ឧសភា"
                    , jun = "មិថុនា"
                    , jul = "កក្កដា"
                    , aug = "សីហា"
                    , sep = "កញ្ញា"
                    , oct = "តុលា"
                    , nov = "វិច្ឆិកា"
                    , dec = "ធ្នូ"
                    }
                , wide =
                    { jan = "មករា"
                    , feb = "កុម្ភៈ"
                    , mar = "មីនា"
                    , apr = "មេសា"
                    , may = "ឧសភា"
                    , jun = "មិថុនា"
                    , jul = "កក្កដា"
                    , aug = "សីហា"
                    , sep = "កញ្ញា"
                    , oct = "តុលា"
                    , nov = "វិច្ឆិកា"
                    , dec = "ធ្នូ"
                    }
                , narrow =
                    { jan = "ម"
                    , feb = "ក"
                    , mar = "ម"
                    , apr = "ម"
                    , may = "ឧ"
                    , jun = "ម"
                    , jul = "ក"
                    , aug = "ស"
                    , sep = "ក"
                    , oct = "ត"
                    , nov = "វ"
                    , dec = "ធ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "មករា"
                    , feb = "កុម្ភៈ"
                    , mar = "មីនា"
                    , apr = "មេសា"
                    , may = "ឧសភា"
                    , jun = "មិថុនា"
                    , jul = "កក្កដា"
                    , aug = "សីហា"
                    , sep = "កញ្ញា"
                    , oct = "តុលា"
                    , nov = "វិច្ឆិកា"
                    , dec = "ធ្នូ"
                    }
                , wide =
                    { jan = "មករា"
                    , feb = "កុម្ភៈ"
                    , mar = "មីនា"
                    , apr = "មេសា"
                    , may = "ឧសភា"
                    , jun = "មិថុនា"
                    , jul = "កក្កដា"
                    , aug = "សីហា"
                    , sep = "កញ្ញា"
                    , oct = "តុលា"
                    , nov = "វិច្ឆិកា"
                    , dec = "ធ្នូ"
                    }
                , narrow =
                    { jan = "ម"
                    , feb = "ក"
                    , mar = "ម"
                    , apr = "ម"
                    , may = "ឧ"
                    , jun = "ម"
                    , jul = "ក"
                    , aug = "ស"
                    , sep = "ក"
                    , oct = "ត"
                    , nov = "វ"
                    , dec = "ធ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "អាទិត្យ"
                    , mon = "ចន្ទ"
                    , tue = "អង្គារ"
                    , wed = "ពុធ"
                    , thu = "ព្រហ"
                    , fri = "សុក្រ"
                    , sat = "សៅរ៍"
                    }
                , wide =
                    { sun = "អាទិត្យ"
                    , mon = "ច័ន្ទ"
                    , tue = "អង្គារ"
                    , wed = "ពុធ"
                    , thu = "ព្រហស្បតិ៍"
                    , fri = "សុក្រ"
                    , sat = "សៅរ៍"
                    }
                , narrow =
                    { sun = "អ"
                    , mon = "ច"
                    , tue = "អ"
                    , wed = "ព"
                    , thu = "ព"
                    , fri = "ស"
                    , sat = "ស"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "អាទិត្យ"
                    , mon = "ចន្ទ"
                    , tue = "អង្គារ"
                    , wed = "ពុធ"
                    , thu = "ព្រហ"
                    , fri = "សុក្រ"
                    , sat = "សៅរ៍"
                    }
                , wide =
                    { sun = "អាទិត្យ"
                    , mon = "ចន្ទ"
                    , tue = "អង្គារ"
                    , wed = "ពុធ"
                    , thu = "ព្រហស្បតិ៍"
                    , fri = "សុក្រ"
                    , sat = "សៅរ៍"
                    }
                , narrow =
                    { sun = "អ"
                    , mon = "ច"
                    , tue = "អ"
                    , wed = "ព"
                    , thu = "ព"
                    , fri = "ស"
                    , sat = "ស"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "មុន គ.ស.", ad = "គ.ស." }
                , wide = { bc = "មុន\u{200B}គ្រិស្តសករាជ", ad = "គ្រិស្តសករាជ" }
                , narrow = { bc = "មុន គ.ស.", ad = "គ.ស." }
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
                , long = "{1} នៅ\u{200B}ម៉ោង {0}"
                , full = "{1} នៅ\u{200B}ម៉ោង {0}"
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
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-other", "សប្តាហ៍ទី W នៃខែ MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-other", "សប្តាហ៍ទី w នៃឆ្នាំ Y" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
