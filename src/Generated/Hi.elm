module Generated.Hi exposing (hi)

{-|

@docs hi

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
        [ ( "hi"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
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
hi : Internal.Locale.Locale
hi =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "hi"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "दोपहर" )
                            , ( "evening1", "शाम" )
                            , ( "midnight", "मध्यरात्रि" )
                            , ( "morning1", "सुबह" )
                            , ( "night1", "रात" )
                            ]
                    }
                , wide =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "दोपहर" )
                            , ( "evening1", "शाम" )
                            , ( "midnight", "मध्यरात्रि" )
                            , ( "morning1", "सुबह" )
                            , ( "night1", "रात" )
                            ]
                    }
                , narrow =
                    { am = "am"
                    , pm = "pm"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "दोपहर" )
                            , ( "evening1", "शाम" )
                            , ( "midnight", "मध्यरात्रि" )
                            , ( "morning1", "सुबह" )
                            , ( "night1", "रात" )
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
                    { jan = "जन॰"
                    , feb = "फ़र॰"
                    , mar = "मार्च"
                    , apr = "अप्रैल"
                    , may = "मई"
                    , jun = "जून"
                    , jul = "जुल॰"
                    , aug = "अग॰"
                    , sep = "सित॰"
                    , oct = "अक्तू॰"
                    , nov = "नव॰"
                    , dec = "दिस॰"
                    }
                , wide =
                    { jan = "जनवरी"
                    , feb = "फ़रवरी"
                    , mar = "मार्च"
                    , apr = "अप्रैल"
                    , may = "मई"
                    , jun = "जून"
                    , jul = "जुलाई"
                    , aug = "अगस्त"
                    , sep = "सितंबर"
                    , oct = "अक्तूबर"
                    , nov = "नवंबर"
                    , dec = "दिसंबर"
                    }
                , narrow =
                    { jan = "ज"
                    , feb = "फ़"
                    , mar = "मा"
                    , apr = "अ"
                    , may = "म"
                    , jun = "जू"
                    , jul = "जु"
                    , aug = "अ"
                    , sep = "सि"
                    , oct = "अ"
                    , nov = "न"
                    , dec = "दि"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "जन॰"
                    , feb = "फ़र॰"
                    , mar = "मार्च"
                    , apr = "अप्रैल"
                    , may = "मई"
                    , jun = "जून"
                    , jul = "जुल॰"
                    , aug = "अग॰"
                    , sep = "सित॰"
                    , oct = "अक्तू॰"
                    , nov = "नव॰"
                    , dec = "दिस॰"
                    }
                , wide =
                    { jan = "जनवरी"
                    , feb = "फ़रवरी"
                    , mar = "मार्च"
                    , apr = "अप्रैल"
                    , may = "मई"
                    , jun = "जून"
                    , jul = "जुलाई"
                    , aug = "अगस्त"
                    , sep = "सितंबर"
                    , oct = "अक्तूबर"
                    , nov = "नवंबर"
                    , dec = "दिसंबर"
                    }
                , narrow =
                    { jan = "ज"
                    , feb = "फ़"
                    , mar = "मा"
                    , apr = "अ"
                    , may = "म"
                    , jun = "जू"
                    , jul = "जु"
                    , aug = "अ"
                    , sep = "सि"
                    , oct = "अ"
                    , nov = "न"
                    , dec = "दि"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "रवि"
                    , mon = "सोम"
                    , tue = "मंगल"
                    , wed = "बुध"
                    , thu = "गुरु"
                    , fri = "शुक्र"
                    , sat = "शनि"
                    }
                , wide =
                    { sun = "रविवार"
                    , mon = "सोमवार"
                    , tue = "मंगलवार"
                    , wed = "बुधवार"
                    , thu = "गुरुवार"
                    , fri = "शुक्रवार"
                    , sat = "शनिवार"
                    }
                , narrow =
                    { sun = "र"
                    , mon = "सो"
                    , tue = "मं"
                    , wed = "बु"
                    , thu = "गु"
                    , fri = "शु"
                    , sat = "श"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "रवि"
                    , mon = "सोम"
                    , tue = "मंगल"
                    , wed = "बुध"
                    , thu = "गुरु"
                    , fri = "शुक्र"
                    , sat = "शनि"
                    }
                , wide =
                    { sun = "रविवार"
                    , mon = "सोमवार"
                    , tue = "मंगलवार"
                    , wed = "बुधवार"
                    , thu = "गुरुवार"
                    , fri = "शुक्रवार"
                    , sat = "शनिवार"
                    }
                , narrow =
                    { sun = "र"
                    , mon = "सो"
                    , tue = "मं"
                    , wed = "बु"
                    , thu = "गु"
                    , fri = "शु"
                    , sat = "श"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ईसा-पूर्व", ad = "ईस्वी" }
                , wide = { bc = "ईसा-पूर्व", ad = "ईसवी सन" }
                , narrow = { bc = "ईसा-पूर्व", ad = "ईस्वी" }
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
                , long = "{1} को {0}"
                , full = "{1} को {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "GGGGG d/M/y" )
                , ( "GyMMM", "MMM G y" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
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
                , ( "MEd", "E, d/M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "MMMM का सप्ताह W" )
                , ( "MMMMW-count-other", "MMMM का सप्ताह W" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM/y" )
                , ( "yMMdd", "dd/MM/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y का सप्ताह w" )
                , ( "yw-count-other", "Y का सप्ताह w" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
