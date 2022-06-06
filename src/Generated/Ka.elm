module Generated.Ka exposing (ka)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ka"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 5, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM. y
  - Long : d MMMM, y
  - Full : EEEE, dd MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ka : Internal.Locale.Locale
ka =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ka"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ნაშუადღ." )
                            , ( "evening1", "საღ." )
                            , ( "midnight", "შუაღამეს" )
                            , ( "morning1", "დილ." )
                            , ( "night1", "ღამ." )
                            , ( "noon", "შუადღ." )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ნაშუადღევს" )
                            , ( "evening1", "საღამოს" )
                            , ( "midnight", "შუაღამეს" )
                            , ( "morning1", "დილით" )
                            , ( "night1", "ღამით" )
                            , ( "noon", "შუადღეს" )
                            ]
                    }
                , narrow =
                    { am = "a"
                    , pm = "p"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ნაშუადღ." )
                            , ( "evening1", "საღ." )
                            , ( "midnight", "შუაღამეს" )
                            , ( "morning1", "დილ." )
                            , ( "night1", "ღამ." )
                            , ( "noon", "შუადღ." )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "d MMM. y"
                , long = "d MMMM, y"
                , full = "EEEE, dd MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "იან"
                    , feb = "თებ"
                    , mar = "მარ"
                    , apr = "აპრ"
                    , may = "მაი"
                    , jun = "ივნ"
                    , jul = "ივლ"
                    , aug = "აგვ"
                    , sep = "სექ"
                    , oct = "ოქტ"
                    , nov = "ნოე"
                    , dec = "დეკ"
                    }
                , wide =
                    { jan = "იანვარი"
                    , feb = "თებერვალი"
                    , mar = "მარტი"
                    , apr = "აპრილი"
                    , may = "მაისი"
                    , jun = "ივნისი"
                    , jul = "ივლისი"
                    , aug = "აგვისტო"
                    , sep = "სექტემბერი"
                    , oct = "ოქტომბერი"
                    , nov = "ნოემბერი"
                    , dec = "დეკემბერი"
                    }
                , narrow =
                    { jan = "ი"
                    , feb = "თ"
                    , mar = "მ"
                    , apr = "ა"
                    , may = "მ"
                    , jun = "ი"
                    , jul = "ი"
                    , aug = "ა"
                    , sep = "ს"
                    , oct = "ო"
                    , nov = "ნ"
                    , dec = "დ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "იან"
                    , feb = "თებ"
                    , mar = "მარ"
                    , apr = "აპრ"
                    , may = "მაი"
                    , jun = "ივნ"
                    , jul = "ივლ"
                    , aug = "აგვ"
                    , sep = "სექ"
                    , oct = "ოქტ"
                    , nov = "ნოე"
                    , dec = "დეკ"
                    }
                , wide =
                    { jan = "იანვარი"
                    , feb = "თებერვალი"
                    , mar = "მარტი"
                    , apr = "აპრილი"
                    , may = "მაისი"
                    , jun = "ივნისი"
                    , jul = "ივლისი"
                    , aug = "აგვისტო"
                    , sep = "სექტემბერი"
                    , oct = "ოქტომბერი"
                    , nov = "ნოემბერი"
                    , dec = "დეკემბერი"
                    }
                , narrow =
                    { jan = "ი"
                    , feb = "თ"
                    , mar = "მ"
                    , apr = "ა"
                    , may = "მ"
                    , jun = "ი"
                    , jul = "ი"
                    , aug = "ა"
                    , sep = "ს"
                    , oct = "ო"
                    , nov = "ნ"
                    , dec = "დ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "კვი"
                    , mon = "ორშ"
                    , tue = "სამ"
                    , wed = "ოთხ"
                    , thu = "ხუთ"
                    , fri = "პარ"
                    , sat = "შაბ"
                    }
                , wide =
                    { sun = "კვირა"
                    , mon = "ორშაბათი"
                    , tue = "სამშაბათი"
                    , wed = "ოთხშაბათი"
                    , thu = "ხუთშაბათი"
                    , fri = "პარასკევი"
                    , sat = "შაბათი"
                    }
                , narrow =
                    { sun = "კ"
                    , mon = "ო"
                    , tue = "ს"
                    , wed = "ო"
                    , thu = "ხ"
                    , fri = "პ"
                    , sat = "შ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "კვი"
                    , mon = "ორშ"
                    , tue = "სამ"
                    , wed = "ოთხ"
                    , thu = "ხუთ"
                    , fri = "პარ"
                    , sat = "შაბ"
                    }
                , wide =
                    { sun = "კვირა"
                    , mon = "ორშაბათი"
                    , tue = "სამშაბათი"
                    , wed = "ოთხშაბათი"
                    , thu = "ხუთშაბათი"
                    , fri = "პარასკევი"
                    , sat = "შაბათი"
                    }
                , narrow =
                    { sun = "კ"
                    , mon = "ო"
                    , tue = "ს"
                    , wed = "ო"
                    , thu = "ხ"
                    , fri = "პ"
                    , sat = "შ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ძვ. წ.", ad = "ახ. წ." }
                , wide =
                    { bc = "ძველი წელთაღრიცხვით", ad = "ახალი წელთაღრიცხვით" }
                , narrow = { bc = "ძვ. წ.", ad = "ახ. წ." }
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
                , ( "Ed", "d E" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.M.y GGGGG" )
                , ( "GyMMM", "MMM. y G" )
                , ( "GyMMMd", "d MMM. y G" )
                , ( "GyMMMEd", "E, d MMM. y G" )
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
                , ( "Md", "d.M" )
                , ( "MEd", "E, d.M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMMს კვირა W" )
                , ( "MMMMW-count-other", "MMMMს კვირა W" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "MMM. y" )
                , ( "yMMMd", "d MMM. y" )
                , ( "yMMMEd", "E, d MMM. y" )
                , ( "yMMMM", "MMMM, y" )
                , ( "yQQQ", "QQQ, y" )
                , ( "yQQQQ", "QQQQ, y" )
                , ( "yw-count-one", "კვირა w, Y" )
                , ( "yw-count-other", "კვირა w, Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
