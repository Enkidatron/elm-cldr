module Generated.Ro exposing (ro, ro_MD)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ro"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 5, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ro : Internal.Locale.Locale
ro =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ro"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "după-amiaza" )
                            , ( "evening1", "seara" )
                            , ( "midnight", "miezul nopții" )
                            , ( "morning1", "dimineața" )
                            , ( "night1", "noaptea" )
                            , ( "noon", "amiază" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "după-amiaza" )
                            , ( "evening1", "seara" )
                            , ( "midnight", "la miezul nopții" )
                            , ( "morning1", "dimineața" )
                            , ( "night1", "noaptea" )
                            , ( "noon", "la amiază" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "după-amiaza" )
                            , ( "evening1", "seara" )
                            , ( "midnight", "miezul nopții" )
                            , ( "morning1", "dimineața" )
                            , ( "night1", "noaptea" )
                            , ( "noon", "la amiază" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ian."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "mai"
                    , jun = "iun."
                    , jul = "iul."
                    , aug = "aug."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "ianuarie"
                    , feb = "februarie"
                    , mar = "martie"
                    , apr = "aprilie"
                    , may = "mai"
                    , jun = "iunie"
                    , jul = "iulie"
                    , aug = "august"
                    , sep = "septembrie"
                    , oct = "octombrie"
                    , nov = "noiembrie"
                    , dec = "decembrie"
                    }
                , narrow =
                    { jan = "I"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "I"
                    , jul = "I"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ian."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "mai"
                    , jun = "iun."
                    , jul = "iul."
                    , aug = "aug."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "ianuarie"
                    , feb = "februarie"
                    , mar = "martie"
                    , apr = "aprilie"
                    , may = "mai"
                    , jun = "iunie"
                    , jul = "iulie"
                    , aug = "august"
                    , sep = "septembrie"
                    , oct = "octombrie"
                    , nov = "noiembrie"
                    , dec = "decembrie"
                    }
                , narrow =
                    { jan = "I"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "I"
                    , jul = "I"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "dum."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mie."
                    , thu = "joi"
                    , fri = "vin."
                    , sat = "sâm."
                    }
                , wide =
                    { sun = "duminică"
                    , mon = "luni"
                    , tue = "marți"
                    , wed = "miercuri"
                    , thu = "joi"
                    , fri = "vineri"
                    , sat = "sâmbătă"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "dum."
                    , mon = "lun."
                    , tue = "mar."
                    , wed = "mie."
                    , thu = "joi"
                    , fri = "vin."
                    , sat = "sâm."
                    }
                , wide =
                    { sun = "duminică"
                    , mon = "luni"
                    , tue = "marți"
                    , wed = "miercuri"
                    , thu = "joi"
                    , fri = "vineri"
                    , sat = "sâmbătă"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "M"
                    , wed = "M"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "î.Hr.", ad = "d.Hr." }
                , wide = { bc = "înainte de Hristos", ad = "după Hristos" }
                , narrow = { bc = "î.Hr.", ad = "d.Hr." }
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
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y G" )
                , ( "GyMMM", "MMM y G" )
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
                , ( "Md", "dd.MM" )
                , ( "MEd", "E, dd.MM" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'săptămâna' W 'din' MMMM" )
                , ( "MMMMW-count-few", "'săptămâna' W 'din' MMMM" )
                , ( "MMMMW-count-other", "'săptămâna' W 'din' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "E, dd.MM.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'săptămâna' w 'din' Y" )
                , ( "yw-count-few", "'săptămâna' w 'din' Y" )
                , ( "yw-count-other", "'săptămâna' w 'din' Y" )
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

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ro_MD : Internal.Locale.Locale
ro_MD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ro"
            , script = Nothing
            , territory = Just "MD"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "după-amiaza" )
                            , ( "evening1", "seara" )
                            , ( "midnight", "miezul nopții" )
                            , ( "morning1", "dimineața" )
                            , ( "night1", "noaptea" )
                            , ( "noon", "amiază" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "după-amiaza" )
                            , ( "evening1", "seara" )
                            , ( "midnight", "miezul nopții" )
                            , ( "morning1", "dimineața" )
                            , ( "night1", "noaptea" )
                            , ( "noon", "amiază" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "după-amiază" )
                            , ( "evening1", "seară" )
                            , ( "midnight", "miezul nopții" )
                            , ( "morning1", "dimineață" )
                            , ( "night1", "noapte" )
                            , ( "noon", "amiază" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ian."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "mai"
                    , jun = "iun."
                    , jul = "iul."
                    , aug = "aug."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "ianuarie"
                    , feb = "februarie"
                    , mar = "martie"
                    , apr = "aprilie"
                    , may = "mai"
                    , jun = "iunie"
                    , jul = "iulie"
                    , aug = "august"
                    , sep = "septembrie"
                    , oct = "octombrie"
                    , nov = "noiembrie"
                    , dec = "decembrie"
                    }
                , narrow =
                    { jan = "I"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "I"
                    , jul = "I"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ian."
                    , feb = "feb."
                    , mar = "mar."
                    , apr = "apr."
                    , may = "mai"
                    , jun = "iun."
                    , jul = "iul."
                    , aug = "aug."
                    , sep = "sept."
                    , oct = "oct."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "ianuarie"
                    , feb = "februarie"
                    , mar = "martie"
                    , apr = "aprilie"
                    , may = "mai"
                    , jun = "iunie"
                    , jul = "iulie"
                    , aug = "august"
                    , sep = "septembrie"
                    , oct = "octombrie"
                    , nov = "noiembrie"
                    , dec = "decembrie"
                    }
                , narrow =
                    { jan = "I"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "I"
                    , jul = "I"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Dum"
                    , mon = "Lun"
                    , tue = "Mar"
                    , wed = "Mie"
                    , thu = "Joi"
                    , fri = "Vin"
                    , sat = "Sâm"
                    }
                , wide =
                    { sun = "duminică"
                    , mon = "luni"
                    , tue = "marți"
                    , wed = "miercuri"
                    , thu = "joi"
                    , fri = "vineri"
                    , sat = "sâmbătă"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "Ma"
                    , wed = "Mi"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Dum"
                    , mon = "Lun"
                    , tue = "Mar"
                    , wed = "Mie"
                    , thu = "Joi"
                    , fri = "Vin"
                    , sat = "Sâm"
                    }
                , wide =
                    { sun = "duminică"
                    , mon = "luni"
                    , tue = "marți"
                    , wed = "miercuri"
                    , thu = "joi"
                    , fri = "vineri"
                    , sat = "sâmbătă"
                    }
                , narrow =
                    { sun = "D"
                    , mon = "L"
                    , tue = "Ma"
                    , wed = "Mi"
                    , thu = "J"
                    , fri = "V"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "î.Hr.", ad = "d.Hr." }
                , wide = { bc = "înainte de Hristos", ad = "după Hristos" }
                , narrow = { bc = "î.Hr.", ad = "d.Hr." }
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
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd.MM.y G" )
                , ( "GyMMM", "MMM y G" )
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
                , ( "Md", "dd.MM" )
                , ( "MEd", "E, dd.MM" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'săptămâna' W 'din' MMMM" )
                , ( "MMMMW-count-few", "'săptămâna' W 'din' MMMM" )
                , ( "MMMMW-count-other", "'săptămâna' W 'din' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "E, dd.MM.y" )
                , ( "yMM", "MM.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'săptămâna' w 'din' Y" )
                , ( "yw-count-few", "'săptămâna' w 'din' Y" )
                , ( "yw-count-other", "'săptămâna' w 'din' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
