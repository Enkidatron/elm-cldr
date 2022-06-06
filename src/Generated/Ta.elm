module Generated.Ta exposing (ta, ta_LK, ta_MY, ta_SG)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ta"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 16, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening2"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 5, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 3, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h:mm:ss z
  - Full : a h:mm:ss zzzz

-}
ta : Internal.Locale.Locale
ta =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ta"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "முற்பகல்"
                    , pm = "பிற்பகல்"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதியம்" )
                            , ( "afternoon2", "பிற்பகல்" )
                            , ( "evening1", "மாலை" )
                            , ( "evening2", "அந்தி மாலை" )
                            , ( "midnight", "நள்ளிரவு" )
                            , ( "morning1", "அதிகாலை" )
                            , ( "morning2", "காலை" )
                            , ( "night1", "இரவு" )
                            , ( "noon", "நண்பகல்" )
                            ]
                    }
                , wide =
                    { am = "முற்பகல்"
                    , pm = "பிற்பகல்"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதியம்" )
                            , ( "afternoon2", "பிற்பகல்" )
                            , ( "evening1", "மாலை" )
                            , ( "evening2", "அந்தி மாலை" )
                            , ( "midnight", "நள்ளிரவு" )
                            , ( "morning1", "அதிகாலை" )
                            , ( "morning2", "காலை" )
                            , ( "night1", "இரவு" )
                            , ( "noon", "நண்பகல்" )
                            ]
                    }
                , narrow =
                    { am = "மு.ப"
                    , pm = "பி.ப"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதி." )
                            , ( "afternoon2", "பிற்." )
                            , ( "evening1", "மா." )
                            , ( "evening2", "அந்தி மா." )
                            , ( "midnight", "நள்." )
                            , ( "morning1", "அதி." )
                            , ( "morning2", "கா." )
                            , ( "night1", "இர." )
                            , ( "noon", "நண்." )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE, d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ஜன."
                    , feb = "பிப்."
                    , mar = "மார்."
                    , apr = "ஏப்."
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆக."
                    , sep = "செப்."
                    , oct = "அக்."
                    , nov = "நவ."
                    , dec = "டிச."
                    }
                , wide =
                    { jan = "ஜனவரி"
                    , feb = "பிப்ரவரி"
                    , mar = "மார்ச்"
                    , apr = "ஏப்ரல்"
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆகஸ்ட்"
                    , sep = "செப்டம்பர்"
                    , oct = "அக்டோபர்"
                    , nov = "நவம்பர்"
                    , dec = "டிசம்பர்"
                    }
                , narrow =
                    { jan = "ஜ"
                    , feb = "பி"
                    , mar = "மா"
                    , apr = "ஏ"
                    , may = "மே"
                    , jun = "ஜூ"
                    , jul = "ஜூ"
                    , aug = "ஆ"
                    , sep = "செ"
                    , oct = "அ"
                    , nov = "ந"
                    , dec = "டி"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ஜன."
                    , feb = "பிப்."
                    , mar = "மார்."
                    , apr = "ஏப்."
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆக."
                    , sep = "செப்."
                    , oct = "அக்."
                    , nov = "நவ."
                    , dec = "டிச."
                    }
                , wide =
                    { jan = "ஜனவரி"
                    , feb = "பிப்ரவரி"
                    , mar = "மார்ச்"
                    , apr = "ஏப்ரல்"
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆகஸ்ட்"
                    , sep = "செப்டம்பர்"
                    , oct = "அக்டோபர்"
                    , nov = "நவம்பர்"
                    , dec = "டிசம்பர்"
                    }
                , narrow =
                    { jan = "ஜ"
                    , feb = "பி"
                    , mar = "மா"
                    , apr = "ஏ"
                    , may = "மே"
                    , jun = "ஜூ"
                    , jul = "ஜூ"
                    , aug = "ஆ"
                    , sep = "செ"
                    , oct = "அ"
                    , nov = "ந"
                    , dec = "டி"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ஞாயி."
                    , mon = "திங்."
                    , tue = "செவ்."
                    , wed = "புத."
                    , thu = "வியா."
                    , fri = "வெள்."
                    , sat = "சனி"
                    }
                , wide =
                    { sun = "ஞாயிறு"
                    , mon = "திங்கள்"
                    , tue = "செவ்வாய்"
                    , wed = "புதன்"
                    , thu = "வியாழன்"
                    , fri = "வெள்ளி"
                    , sat = "சனி"
                    }
                , narrow =
                    { sun = "ஞா"
                    , mon = "தி"
                    , tue = "செ"
                    , wed = "பு"
                    , thu = "வி"
                    , fri = "வெ"
                    , sat = "ச"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ஞாயி."
                    , mon = "திங்."
                    , tue = "செவ்."
                    , wed = "புத."
                    , thu = "வியா."
                    , fri = "வெள்."
                    , sat = "சனி"
                    }
                , wide =
                    { sun = "ஞாயிறு"
                    , mon = "திங்கள்"
                    , tue = "செவ்வாய்"
                    , wed = "புதன்"
                    , thu = "வியாழன்"
                    , fri = "வெள்ளி"
                    , sat = "சனி"
                    }
                , narrow =
                    { sun = "ஞா"
                    , mon = "தி"
                    , tue = "செ"
                    , wed = "பு"
                    , thu = "வி"
                    , fri = "வெ"
                    , sat = "ச"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "கி.மு.", ad = "கி.பி." }
                , wide = { bc = "கிறிஸ்துவுக்கு முன்", ad = "அன்னோ டோமினி" }
                , narrow = { bc = "கி.மு.", ad = "கி.பி." }
                }
            , timePatterns =
                { short = "a h:mm"
                , medium = "a h:mm:ss"
                , long = "a h:mm:ss z"
                , full = "a h:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1} அன்று {0}"
                , full = "{1} அன்று {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E a h:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E a h:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "a h" )
                , ( "H", "HH" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "dd-MM, E" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "MMM d, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM W -ஆம் வாரம்" )
                , ( "MMMMW-count-other", "MMMM W -ஆம் வாரம்" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "E, d MMM, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y ஆம் ஆண்டின் w -ஆம் வாரம்" )
                , ( "yw-count-other", "Y ஆம் ஆண்டின் w -ஆம் வாரம்" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ta_LK : Internal.Locale.Locale
ta_LK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ta"
            , script = Nothing
            , territory = Just "LK"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "முற்பகல்"
                    , pm = "பிற்பகல்"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதியம்" )
                            , ( "afternoon2", "பிற்பகல்" )
                            , ( "evening1", "மாலை" )
                            , ( "evening2", "அந்தி மாலை" )
                            , ( "midnight", "நள்ளிரவு" )
                            , ( "morning1", "அதிகாலை" )
                            , ( "morning2", "காலை" )
                            , ( "night1", "இரவு" )
                            , ( "noon", "நண்பகல்" )
                            ]
                    }
                , wide =
                    { am = "முற்பகல்"
                    , pm = "பிற்பகல்"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதியம்" )
                            , ( "afternoon2", "பிற்பகல்" )
                            , ( "evening1", "மாலை" )
                            , ( "evening2", "அந்தி மாலை" )
                            , ( "midnight", "நள்ளிரவு" )
                            , ( "morning1", "அதிகாலை" )
                            , ( "morning2", "காலை" )
                            , ( "night1", "இரவு" )
                            , ( "noon", "நண்பகல்" )
                            ]
                    }
                , narrow =
                    { am = "மு.ப"
                    , pm = "பி.ப"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதி." )
                            , ( "afternoon2", "பிற்." )
                            , ( "evening1", "மா." )
                            , ( "evening2", "அந்தி மா." )
                            , ( "midnight", "நள்." )
                            , ( "morning1", "அதி." )
                            , ( "morning2", "கா." )
                            , ( "night1", "இர." )
                            , ( "noon", "நண்." )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE, d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ஜன."
                    , feb = "பிப்."
                    , mar = "மார்."
                    , apr = "ஏப்."
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆக."
                    , sep = "செப்."
                    , oct = "அக்."
                    , nov = "நவ."
                    , dec = "டிச."
                    }
                , wide =
                    { jan = "ஜனவரி"
                    , feb = "பிப்ரவரி"
                    , mar = "மார்ச்"
                    , apr = "ஏப்ரல்"
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆகஸ்ட்"
                    , sep = "செப்டம்பர்"
                    , oct = "அக்டோபர்"
                    , nov = "நவம்பர்"
                    , dec = "டிசம்பர்"
                    }
                , narrow =
                    { jan = "ஜ"
                    , feb = "பி"
                    , mar = "மா"
                    , apr = "ஏ"
                    , may = "மே"
                    , jun = "ஜூ"
                    , jul = "ஜூ"
                    , aug = "ஆ"
                    , sep = "செ"
                    , oct = "அ"
                    , nov = "ந"
                    , dec = "டி"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ஜன."
                    , feb = "பிப்."
                    , mar = "மார்."
                    , apr = "ஏப்."
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆக."
                    , sep = "செப்."
                    , oct = "அக்."
                    , nov = "நவ."
                    , dec = "டிச."
                    }
                , wide =
                    { jan = "ஜனவரி"
                    , feb = "பிப்ரவரி"
                    , mar = "மார்ச்"
                    , apr = "ஏப்ரல்"
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆகஸ்ட்"
                    , sep = "செப்டம்பர்"
                    , oct = "அக்டோபர்"
                    , nov = "நவம்பர்"
                    , dec = "டிசம்பர்"
                    }
                , narrow =
                    { jan = "ஜ"
                    , feb = "பி"
                    , mar = "மா"
                    , apr = "ஏ"
                    , may = "மே"
                    , jun = "ஜூ"
                    , jul = "ஜூ"
                    , aug = "ஆ"
                    , sep = "செ"
                    , oct = "அ"
                    , nov = "ந"
                    , dec = "டி"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ஞாயி."
                    , mon = "திங்."
                    , tue = "செவ்."
                    , wed = "புத."
                    , thu = "வியா."
                    , fri = "வெள்."
                    , sat = "சனி"
                    }
                , wide =
                    { sun = "ஞாயிறு"
                    , mon = "திங்கள்"
                    , tue = "செவ்வாய்"
                    , wed = "புதன்"
                    , thu = "வியாழன்"
                    , fri = "வெள்ளி"
                    , sat = "சனி"
                    }
                , narrow =
                    { sun = "ஞா"
                    , mon = "தி"
                    , tue = "செ"
                    , wed = "பு"
                    , thu = "வி"
                    , fri = "வெ"
                    , sat = "ச"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ஞாயி."
                    , mon = "திங்."
                    , tue = "செவ்."
                    , wed = "புத."
                    , thu = "வியா."
                    , fri = "வெள்."
                    , sat = "சனி"
                    }
                , wide =
                    { sun = "ஞாயிறு"
                    , mon = "திங்கள்"
                    , tue = "செவ்வாய்"
                    , wed = "புதன்"
                    , thu = "வியாழன்"
                    , fri = "வெள்ளி"
                    , sat = "சனி"
                    }
                , narrow =
                    { sun = "ஞா"
                    , mon = "தி"
                    , tue = "செ"
                    , wed = "பு"
                    , thu = "வி"
                    , fri = "வெ"
                    , sat = "ச"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "கி.மு.", ad = "கி.பி." }
                , wide = { bc = "கிறிஸ்துவுக்கு முன்", ad = "அன்னோ டோமினி" }
                , narrow = { bc = "கி.மு.", ad = "கி.பி." }
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
                , long = "{1} அன்று {0}"
                , full = "{1} அன்று {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E a h:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E a h:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "a h" )
                , ( "H", "HH" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "dd-MM, E" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "MMM d, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM W -ஆம் வாரம்" )
                , ( "MMMMW-count-other", "MMMM W -ஆம் வாரம்" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "E, d MMM, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y ஆம் ஆண்டின் w -ஆம் வாரம்" )
                , ( "yw-count-other", "Y ஆம் ஆண்டின் w -ஆம் வாரம்" )
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

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h:mm:ss z
  - Full : a h:mm:ss zzzz

-}
ta_MY : Internal.Locale.Locale
ta_MY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ta"
            , script = Nothing
            , territory = Just "MY"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "முற்பகல்"
                    , pm = "பிற்பகல்"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதியம்" )
                            , ( "afternoon2", "பிற்பகல்" )
                            , ( "evening1", "மாலை" )
                            , ( "evening2", "அந்தி மாலை" )
                            , ( "midnight", "நள்ளிரவு" )
                            , ( "morning1", "அதிகாலை" )
                            , ( "morning2", "காலை" )
                            , ( "night1", "இரவு" )
                            , ( "noon", "நண்பகல்" )
                            ]
                    }
                , wide =
                    { am = "முற்பகல்"
                    , pm = "பிற்பகல்"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதியம்" )
                            , ( "afternoon2", "பிற்பகல்" )
                            , ( "evening1", "மாலை" )
                            , ( "evening2", "அந்தி மாலை" )
                            , ( "midnight", "நள்ளிரவு" )
                            , ( "morning1", "அதிகாலை" )
                            , ( "morning2", "காலை" )
                            , ( "night1", "இரவு" )
                            , ( "noon", "நண்பகல்" )
                            ]
                    }
                , narrow =
                    { am = "மு.ப"
                    , pm = "பி.ப"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதி." )
                            , ( "afternoon2", "பிற்." )
                            , ( "evening1", "மா." )
                            , ( "evening2", "அந்தி மா." )
                            , ( "midnight", "நள்." )
                            , ( "morning1", "அதி." )
                            , ( "morning2", "கா." )
                            , ( "night1", "இர." )
                            , ( "noon", "நண்." )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE, d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ஜன."
                    , feb = "பிப்."
                    , mar = "மார்."
                    , apr = "ஏப்."
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆக."
                    , sep = "செப்."
                    , oct = "அக்."
                    , nov = "நவ."
                    , dec = "டிச."
                    }
                , wide =
                    { jan = "ஜனவரி"
                    , feb = "பிப்ரவரி"
                    , mar = "மார்ச்"
                    , apr = "ஏப்ரல்"
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆகஸ்ட்"
                    , sep = "செப்டம்பர்"
                    , oct = "அக்டோபர்"
                    , nov = "நவம்பர்"
                    , dec = "டிசம்பர்"
                    }
                , narrow =
                    { jan = "ஜ"
                    , feb = "பி"
                    , mar = "மா"
                    , apr = "ஏ"
                    , may = "மே"
                    , jun = "ஜூ"
                    , jul = "ஜூ"
                    , aug = "ஆ"
                    , sep = "செ"
                    , oct = "அ"
                    , nov = "ந"
                    , dec = "டி"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ஜன."
                    , feb = "பிப்."
                    , mar = "மார்."
                    , apr = "ஏப்."
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆக."
                    , sep = "செப்."
                    , oct = "அக்."
                    , nov = "நவ."
                    , dec = "டிச."
                    }
                , wide =
                    { jan = "ஜனவரி"
                    , feb = "பிப்ரவரி"
                    , mar = "மார்ச்"
                    , apr = "ஏப்ரல்"
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆகஸ்ட்"
                    , sep = "செப்டம்பர்"
                    , oct = "அக்டோபர்"
                    , nov = "நவம்பர்"
                    , dec = "டிசம்பர்"
                    }
                , narrow =
                    { jan = "ஜ"
                    , feb = "பி"
                    , mar = "மா"
                    , apr = "ஏ"
                    , may = "மே"
                    , jun = "ஜூ"
                    , jul = "ஜூ"
                    , aug = "ஆ"
                    , sep = "செ"
                    , oct = "அ"
                    , nov = "ந"
                    , dec = "டி"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ஞாயி."
                    , mon = "திங்."
                    , tue = "செவ்."
                    , wed = "புத."
                    , thu = "வியா."
                    , fri = "வெள்."
                    , sat = "சனி"
                    }
                , wide =
                    { sun = "ஞாயிறு"
                    , mon = "திங்கள்"
                    , tue = "செவ்வாய்"
                    , wed = "புதன்"
                    , thu = "வியாழன்"
                    , fri = "வெள்ளி"
                    , sat = "சனி"
                    }
                , narrow =
                    { sun = "ஞா"
                    , mon = "தி"
                    , tue = "செ"
                    , wed = "பு"
                    , thu = "வி"
                    , fri = "வெ"
                    , sat = "ச"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ஞாயி."
                    , mon = "திங்."
                    , tue = "செவ்."
                    , wed = "புத."
                    , thu = "வியா."
                    , fri = "வெள்."
                    , sat = "சனி"
                    }
                , wide =
                    { sun = "ஞாயிறு"
                    , mon = "திங்கள்"
                    , tue = "செவ்வாய்"
                    , wed = "புதன்"
                    , thu = "வியாழன்"
                    , fri = "வெள்ளி"
                    , sat = "சனி"
                    }
                , narrow =
                    { sun = "ஞா"
                    , mon = "தி"
                    , tue = "செ"
                    , wed = "பு"
                    , thu = "வி"
                    , fri = "வெ"
                    , sat = "ச"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "கி.மு.", ad = "கி.பி." }
                , wide = { bc = "கிறிஸ்துவுக்கு முன்", ad = "அன்னோ டோமினி" }
                , narrow = { bc = "கி.மு.", ad = "கி.பி." }
                }
            , timePatterns =
                { short = "a h:mm"
                , medium = "a h:mm:ss"
                , long = "a h:mm:ss z"
                , full = "a h:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1} அன்று {0}"
                , full = "{1} அன்று {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E a h:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E a h:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "a h" )
                , ( "H", "HH" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "dd-MM, E" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "MMM d, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM W -ஆம் வாரம்" )
                , ( "MMMMW-count-other", "MMMM W -ஆம் வாரம்" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "E, d MMM, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y ஆம் ஆண்டின் w -ஆம் வாரம்" )
                , ( "yw-count-other", "Y ஆம் ஆண்டின் w -ஆம் வாரம்" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h:mm:ss z
  - Full : a h:mm:ss zzzz

-}
ta_SG : Internal.Locale.Locale
ta_SG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ta"
            , script = Nothing
            , territory = Just "SG"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "முற்பகல்"
                    , pm = "பிற்பகல்"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதியம்" )
                            , ( "afternoon2", "பிற்பகல்" )
                            , ( "evening1", "மாலை" )
                            , ( "evening2", "அந்தி மாலை" )
                            , ( "midnight", "நள்ளிரவு" )
                            , ( "morning1", "அதிகாலை" )
                            , ( "morning2", "காலை" )
                            , ( "night1", "இரவு" )
                            , ( "noon", "நண்பகல்" )
                            ]
                    }
                , wide =
                    { am = "முற்பகல்"
                    , pm = "பிற்பகல்"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதியம்" )
                            , ( "afternoon2", "பிற்பகல்" )
                            , ( "evening1", "மாலை" )
                            , ( "evening2", "அந்தி மாலை" )
                            , ( "midnight", "நள்ளிரவு" )
                            , ( "morning1", "அதிகாலை" )
                            , ( "morning2", "காலை" )
                            , ( "night1", "இரவு" )
                            , ( "noon", "நண்பகல்" )
                            ]
                    }
                , narrow =
                    { am = "மு.ப"
                    , pm = "பி.ப"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "மதி." )
                            , ( "afternoon2", "பிற்." )
                            , ( "evening1", "மா." )
                            , ( "evening2", "அந்தி மா." )
                            , ( "midnight", "நள்." )
                            , ( "morning1", "அதி." )
                            , ( "morning2", "கா." )
                            , ( "night1", "இர." )
                            , ( "noon", "நண்." )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE, d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ஜன."
                    , feb = "பிப்."
                    , mar = "மார்."
                    , apr = "ஏப்."
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆக."
                    , sep = "செப்."
                    , oct = "அக்."
                    , nov = "நவ."
                    , dec = "டிச."
                    }
                , wide =
                    { jan = "ஜனவரி"
                    , feb = "பிப்ரவரி"
                    , mar = "மார்ச்"
                    , apr = "ஏப்ரல்"
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆகஸ்ட்"
                    , sep = "செப்டம்பர்"
                    , oct = "அக்டோபர்"
                    , nov = "நவம்பர்"
                    , dec = "டிசம்பர்"
                    }
                , narrow =
                    { jan = "ஜ"
                    , feb = "பி"
                    , mar = "மா"
                    , apr = "ஏ"
                    , may = "மே"
                    , jun = "ஜூ"
                    , jul = "ஜூ"
                    , aug = "ஆ"
                    , sep = "செ"
                    , oct = "அ"
                    , nov = "ந"
                    , dec = "டி"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ஜன."
                    , feb = "பிப்."
                    , mar = "மார்."
                    , apr = "ஏப்."
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆக."
                    , sep = "செப்."
                    , oct = "அக்."
                    , nov = "நவ."
                    , dec = "டிச."
                    }
                , wide =
                    { jan = "ஜனவரி"
                    , feb = "பிப்ரவரி"
                    , mar = "மார்ச்"
                    , apr = "ஏப்ரல்"
                    , may = "மே"
                    , jun = "ஜூன்"
                    , jul = "ஜூலை"
                    , aug = "ஆகஸ்ட்"
                    , sep = "செப்டம்பர்"
                    , oct = "அக்டோபர்"
                    , nov = "நவம்பர்"
                    , dec = "டிசம்பர்"
                    }
                , narrow =
                    { jan = "ஜ"
                    , feb = "பி"
                    , mar = "மா"
                    , apr = "ஏ"
                    , may = "மே"
                    , jun = "ஜூ"
                    , jul = "ஜூ"
                    , aug = "ஆ"
                    , sep = "செ"
                    , oct = "அ"
                    , nov = "ந"
                    , dec = "டி"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ஞாயி."
                    , mon = "திங்."
                    , tue = "செவ்."
                    , wed = "புத."
                    , thu = "வியா."
                    , fri = "வெள்."
                    , sat = "சனி"
                    }
                , wide =
                    { sun = "ஞாயிறு"
                    , mon = "திங்கள்"
                    , tue = "செவ்வாய்"
                    , wed = "புதன்"
                    , thu = "வியாழன்"
                    , fri = "வெள்ளி"
                    , sat = "சனி"
                    }
                , narrow =
                    { sun = "ஞா"
                    , mon = "தி"
                    , tue = "செ"
                    , wed = "பு"
                    , thu = "வி"
                    , fri = "வெ"
                    , sat = "ச"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ஞாயி."
                    , mon = "திங்."
                    , tue = "செவ்."
                    , wed = "புத."
                    , thu = "வியா."
                    , fri = "வெள்."
                    , sat = "சனி"
                    }
                , wide =
                    { sun = "ஞாயிறு"
                    , mon = "திங்கள்"
                    , tue = "செவ்வாய்"
                    , wed = "புதன்"
                    , thu = "வியாழன்"
                    , fri = "வெள்ளி"
                    , sat = "சனி"
                    }
                , narrow =
                    { sun = "ஞா"
                    , mon = "தி"
                    , tue = "செ"
                    , wed = "பு"
                    , thu = "வி"
                    , fri = "வெ"
                    , sat = "ச"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "கி.மு.", ad = "கி.பி." }
                , wide = { bc = "கிறிஸ்துவுக்கு முன்", ad = "அன்னோ டோமினி" }
                , narrow = { bc = "கி.மு.", ad = "கி.பி." }
                }
            , timePatterns =
                { short = "a h:mm"
                , medium = "a h:mm:ss"
                , long = "a h:mm:ss z"
                , full = "a h:mm:ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1} அன்று {0}"
                , full = "{1} அன்று {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E a h:mm" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E a h:mm:ss" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "GGGGG y-MM-dd" )
                , ( "GyMMM", "G y MMM" )
                , ( "GyMMMd", "G y MMM d" )
                , ( "GyMMMEd", "G y MMM d, E" )
                , ( "h", "a h" )
                , ( "H", "HH" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "dd-MM, E" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d" )
                , ( "MMMEd", "MMM d, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM W -ஆம் வாரம்" )
                , ( "MMMMW-count-other", "MMMM W -ஆம் வாரம்" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "E, d MMM, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y ஆம் ஆண்டின் w -ஆம் வாரம்" )
                , ( "yw-count-other", "Y ஆம் ஆண்டின் w -ஆம் வாரம்" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
