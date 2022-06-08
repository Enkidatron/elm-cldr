module Generated.Pa exposing (pa, pa_Guru)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "pa"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa : Internal.Locale.Locale
pa =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pa"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ਪੂ.ਦੁ."
                    , pm = "ਬਾ.ਦੁ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ਦੁਪਹਿਰੇ" )
                            , ( "evening1", "ਸ਼ਾਮੀਂ" )
                            , ( "midnight", "ਅੱਧੀ ਰਾਤ" )
                            , ( "morning1", "ਸਵੇਰੇ" )
                            , ( "night1", "ਰਾਤੀਂ" )
                            ]
                    }
                , wide =
                    { am = "ਪੂ.ਦੁ."
                    , pm = "ਬਾ.ਦੁ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ਦੁਪਹਿਰੇ" )
                            , ( "evening1", "ਸ਼ਾਮੀਂ" )
                            , ( "midnight", "ਅੱਧੀ ਰਾਤ" )
                            , ( "morning1", "ਸਵੇਰੇ" )
                            , ( "night1", "ਰਾਤੀਂ" )
                            ]
                    }
                , narrow =
                    { am = "ਸ."
                    , pm = "ਸ਼."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ਦੁਪਹਿਰੇ" )
                            , ( "evening1", "ਸ਼ਾਮੀਂ" )
                            , ( "midnight", "ਅੱਧੀ ਰਾਤ" )
                            , ( "morning1", "ਸਵੇਰੇ" )
                            , ( "night1", "ਰਾਤੀਂ" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ਜਨ"
                    , feb = "ਫ਼ਰ"
                    , mar = "ਮਾਰਚ"
                    , apr = "ਅਪ੍ਰੈ"
                    , may = "ਮਈ"
                    , jun = "ਜੂਨ"
                    , jul = "ਜੁਲਾ"
                    , aug = "ਅਗ"
                    , sep = "ਸਤੰ"
                    , oct = "ਅਕਤੂ"
                    , nov = "ਨਵੰ"
                    , dec = "ਦਸੰ"
                    }
                , wide =
                    { jan = "ਜਨਵਰੀ"
                    , feb = "ਫ਼ਰਵਰੀ"
                    , mar = "ਮਾਰਚ"
                    , apr = "ਅਪ੍ਰੈਲ"
                    , may = "ਮਈ"
                    , jun = "ਜੂਨ"
                    , jul = "ਜੁਲਾਈ"
                    , aug = "ਅਗਸਤ"
                    , sep = "ਸਤੰਬਰ"
                    , oct = "ਅਕਤੂਬਰ"
                    , nov = "ਨਵੰਬਰ"
                    , dec = "ਦਸੰਬਰ"
                    }
                , narrow =
                    { jan = "ਜ"
                    , feb = "ਫ਼"
                    , mar = "ਮਾ"
                    , apr = "ਅ"
                    , may = "ਮ"
                    , jun = "ਜੂ"
                    , jul = "ਜੁ"
                    , aug = "ਅ"
                    , sep = "ਸ"
                    , oct = "ਅ"
                    , nov = "ਨ"
                    , dec = "ਦ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ਜਨ"
                    , feb = "ਫ਼ਰ"
                    , mar = "ਮਾਰਚ"
                    , apr = "ਅਪ੍ਰੈ"
                    , may = "ਮਈ"
                    , jun = "ਜੂਨ"
                    , jul = "ਜੁਲਾ"
                    , aug = "ਅਗ"
                    , sep = "ਸਤੰ"
                    , oct = "ਅਕਤੂ"
                    , nov = "ਨਵੰ"
                    , dec = "ਦਸੰ"
                    }
                , wide =
                    { jan = "ਜਨਵਰੀ"
                    , feb = "ਫ਼ਰਵਰੀ"
                    , mar = "ਮਾਰਚ"
                    , apr = "ਅਪ੍ਰੈਲ"
                    , may = "ਮਈ"
                    , jun = "ਜੂਨ"
                    , jul = "ਜੁਲਾਈ"
                    , aug = "ਅਗਸਤ"
                    , sep = "ਸਤੰਬਰ"
                    , oct = "ਅਕਤੂਬਰ"
                    , nov = "ਨਵੰਬਰ"
                    , dec = "ਦਸੰਬਰ"
                    }
                , narrow =
                    { jan = "ਜ"
                    , feb = "ਫ਼"
                    , mar = "ਮਾ"
                    , apr = "ਅ"
                    , may = "ਮ"
                    , jun = "ਜੂ"
                    , jul = "ਜੁ"
                    , aug = "ਅ"
                    , sep = "ਸ"
                    , oct = "ਅ"
                    , nov = "ਨ"
                    , dec = "ਦ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ਐਤ"
                    , mon = "ਸੋਮ"
                    , tue = "ਮੰਗਲ"
                    , wed = "ਬੁੱਧ"
                    , thu = "ਵੀਰ"
                    , fri = "ਸ਼ੁੱਕਰ"
                    , sat = "ਸ਼ਨਿੱਚਰ"
                    }
                , wide =
                    { sun = "ਐਤਵਾਰ"
                    , mon = "ਸੋਮਵਾਰ"
                    , tue = "ਮੰਗਲਵਾਰ"
                    , wed = "ਬੁੱਧਵਾਰ"
                    , thu = "ਵੀਰਵਾਰ"
                    , fri = "ਸ਼ੁੱਕਰਵਾਰ"
                    , sat = "ਸ਼ਨਿੱਚਰਵਾਰ"
                    }
                , narrow =
                    { sun = "ਐ"
                    , mon = "ਸੋ"
                    , tue = "ਮੰ"
                    , wed = "ਬੁੱ"
                    , thu = "ਵੀ"
                    , fri = "ਸ਼ੁੱ"
                    , sat = "ਸ਼"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ਐਤ"
                    , mon = "ਸੋਮ"
                    , tue = "ਮੰਗਲ"
                    , wed = "ਬੁੱਧ"
                    , thu = "ਵੀਰ"
                    , fri = "ਸ਼ੁੱਕਰ"
                    , sat = "ਸ਼ਨਿੱਚਰ"
                    }
                , wide =
                    { sun = "ਐਤਵਾਰ"
                    , mon = "ਸੋਮਵਾਰ"
                    , tue = "ਮੰਗਲਵਾਰ"
                    , wed = "ਬੁੱਧਵਾਰ"
                    , thu = "ਵੀਰਵਾਰ"
                    , fri = "ਸ਼ੁੱਕਰਵਾਰ"
                    , sat = "ਸ਼ਨਿੱਚਰਵਾਰ"
                    }
                , narrow =
                    { sun = "ਐ"
                    , mon = "ਸੋ"
                    , tue = "ਮੰ"
                    , wed = "ਬੁੱ"
                    , thu = "ਵੀ"
                    , fri = "ਸ਼ੁੱ"
                    , sat = "ਸ਼"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ਈ. ਪੂ.", ad = "ਸੰਨ" }
                , wide = { bc = "ਈਸਵੀ ਪੂਰਵ", ad = "ਈਸਵੀ ਸੰਨ" }
                , narrow = { bc = "ਈ.ਪੂ.", ad = "ਸੰਨ" }
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
                , ( "GyMd", "d/M/GGGGG y" )
                , ( "GyMMM", "MMM, G y" )
                , ( "GyMMMd", "d MMM, G y" )
                , ( "GyMMMEd", "E d MMM, G y" )
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
                , ( "MEd", "E, dd-MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-one", "MMMM ਦਾ W ਹਫ਼ਤਾ" )
                , ( "MMMMW-count-other", "MMMM ਦਾ W ਹਫ਼ਤਾ" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y ਦਾ w ਹਫ਼ਤਾ" )
                , ( "yw-count-other", "Y ਦਾ w ਹਫ਼ਤਾ" )
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
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa_Guru : Internal.Locale.Locale
pa_Guru =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "pa"
            , script = Just "Guru"
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ਪੂ.ਦੁ."
                    , pm = "ਬਾ.ਦੁ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ਦੁਪਹਿਰੇ" )
                            , ( "evening1", "ਸ਼ਾਮੀਂ" )
                            , ( "midnight", "ਅੱਧੀ ਰਾਤ" )
                            , ( "morning1", "ਸਵੇਰੇ" )
                            , ( "night1", "ਰਾਤੀਂ" )
                            ]
                    }
                , wide =
                    { am = "ਪੂ.ਦੁ."
                    , pm = "ਬਾ.ਦੁ."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ਦੁਪਹਿਰੇ" )
                            , ( "evening1", "ਸ਼ਾਮੀਂ" )
                            , ( "midnight", "ਅੱਧੀ ਰਾਤ" )
                            , ( "morning1", "ਸਵੇਰੇ" )
                            , ( "night1", "ਰਾਤੀਂ" )
                            ]
                    }
                , narrow =
                    { am = "ਸ."
                    , pm = "ਸ਼."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ਦੁਪਹਿਰੇ" )
                            , ( "evening1", "ਸ਼ਾਮੀਂ" )
                            , ( "midnight", "ਅੱਧੀ ਰਾਤ" )
                            , ( "morning1", "ਸਵੇਰੇ" )
                            , ( "night1", "ਰਾਤੀਂ" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ਜਨ"
                    , feb = "ਫ਼ਰ"
                    , mar = "ਮਾਰਚ"
                    , apr = "ਅਪ੍ਰੈ"
                    , may = "ਮਈ"
                    , jun = "ਜੂਨ"
                    , jul = "ਜੁਲਾ"
                    , aug = "ਅਗ"
                    , sep = "ਸਤੰ"
                    , oct = "ਅਕਤੂ"
                    , nov = "ਨਵੰ"
                    , dec = "ਦਸੰ"
                    }
                , wide =
                    { jan = "ਜਨਵਰੀ"
                    , feb = "ਫ਼ਰਵਰੀ"
                    , mar = "ਮਾਰਚ"
                    , apr = "ਅਪ੍ਰੈਲ"
                    , may = "ਮਈ"
                    , jun = "ਜੂਨ"
                    , jul = "ਜੁਲਾਈ"
                    , aug = "ਅਗਸਤ"
                    , sep = "ਸਤੰਬਰ"
                    , oct = "ਅਕਤੂਬਰ"
                    , nov = "ਨਵੰਬਰ"
                    , dec = "ਦਸੰਬਰ"
                    }
                , narrow =
                    { jan = "ਜ"
                    , feb = "ਫ਼"
                    , mar = "ਮਾ"
                    , apr = "ਅ"
                    , may = "ਮ"
                    , jun = "ਜੂ"
                    , jul = "ਜੁ"
                    , aug = "ਅ"
                    , sep = "ਸ"
                    , oct = "ਅ"
                    , nov = "ਨ"
                    , dec = "ਦ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ਜਨ"
                    , feb = "ਫ਼ਰ"
                    , mar = "ਮਾਰਚ"
                    , apr = "ਅਪ੍ਰੈ"
                    , may = "ਮਈ"
                    , jun = "ਜੂਨ"
                    , jul = "ਜੁਲਾ"
                    , aug = "ਅਗ"
                    , sep = "ਸਤੰ"
                    , oct = "ਅਕਤੂ"
                    , nov = "ਨਵੰ"
                    , dec = "ਦਸੰ"
                    }
                , wide =
                    { jan = "ਜਨਵਰੀ"
                    , feb = "ਫ਼ਰਵਰੀ"
                    , mar = "ਮਾਰਚ"
                    , apr = "ਅਪ੍ਰੈਲ"
                    , may = "ਮਈ"
                    , jun = "ਜੂਨ"
                    , jul = "ਜੁਲਾਈ"
                    , aug = "ਅਗਸਤ"
                    , sep = "ਸਤੰਬਰ"
                    , oct = "ਅਕਤੂਬਰ"
                    , nov = "ਨਵੰਬਰ"
                    , dec = "ਦਸੰਬਰ"
                    }
                , narrow =
                    { jan = "ਜ"
                    , feb = "ਫ਼"
                    , mar = "ਮਾ"
                    , apr = "ਅ"
                    , may = "ਮ"
                    , jun = "ਜੂ"
                    , jul = "ਜੁ"
                    , aug = "ਅ"
                    , sep = "ਸ"
                    , oct = "ਅ"
                    , nov = "ਨ"
                    , dec = "ਦ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ਐਤ"
                    , mon = "ਸੋਮ"
                    , tue = "ਮੰਗਲ"
                    , wed = "ਬੁੱਧ"
                    , thu = "ਵੀਰ"
                    , fri = "ਸ਼ੁੱਕਰ"
                    , sat = "ਸ਼ਨਿੱਚਰ"
                    }
                , wide =
                    { sun = "ਐਤਵਾਰ"
                    , mon = "ਸੋਮਵਾਰ"
                    , tue = "ਮੰਗਲਵਾਰ"
                    , wed = "ਬੁੱਧਵਾਰ"
                    , thu = "ਵੀਰਵਾਰ"
                    , fri = "ਸ਼ੁੱਕਰਵਾਰ"
                    , sat = "ਸ਼ਨਿੱਚਰਵਾਰ"
                    }
                , narrow =
                    { sun = "ਐ"
                    , mon = "ਸੋ"
                    , tue = "ਮੰ"
                    , wed = "ਬੁੱ"
                    , thu = "ਵੀ"
                    , fri = "ਸ਼ੁੱ"
                    , sat = "ਸ਼"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ਐਤ"
                    , mon = "ਸੋਮ"
                    , tue = "ਮੰਗਲ"
                    , wed = "ਬੁੱਧ"
                    , thu = "ਵੀਰ"
                    , fri = "ਸ਼ੁੱਕਰ"
                    , sat = "ਸ਼ਨਿੱਚਰ"
                    }
                , wide =
                    { sun = "ਐਤਵਾਰ"
                    , mon = "ਸੋਮਵਾਰ"
                    , tue = "ਮੰਗਲਵਾਰ"
                    , wed = "ਬੁੱਧਵਾਰ"
                    , thu = "ਵੀਰਵਾਰ"
                    , fri = "ਸ਼ੁੱਕਰਵਾਰ"
                    , sat = "ਸ਼ਨਿੱਚਰਵਾਰ"
                    }
                , narrow =
                    { sun = "ਐ"
                    , mon = "ਸੋ"
                    , tue = "ਮੰ"
                    , wed = "ਬੁੱ"
                    , thu = "ਵੀ"
                    , fri = "ਸ਼ੁੱ"
                    , sat = "ਸ਼"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ਈ. ਪੂ.", ad = "ਸੰਨ" }
                , wide = { bc = "ਈਸਵੀ ਪੂਰਵ", ad = "ਈਸਵੀ ਸੰਨ" }
                , narrow = { bc = "ਈ.ਪੂ.", ad = "ਸੰਨ" }
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
                , ( "GyMd", "d/M/GGGGG y" )
                , ( "GyMMM", "MMM, G y" )
                , ( "GyMMMd", "d MMM, G y" )
                , ( "GyMMMEd", "E d MMM, G y" )
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
                , ( "MEd", "E, dd-MM." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-one", "MMMM ਦਾ W ਹਫ਼ਤਾ" )
                , ( "MMMMW-count-other", "MMMM ਦਾ W ਹਫ਼ਤਾ" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y ਦਾ w ਹਫ਼ਤਾ" )
                , ( "yw-count-other", "Y ਦਾ w ਹਫ਼ਤਾ" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
