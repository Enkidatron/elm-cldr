module Generated.Uz exposing (uz, uz_Latn)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "uz"
          , [ Internal.DayPeriodRule.FromBefore ( 11, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 11, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d-MMM, y
  - Long : d-MMMM, y
  - Full : EEEE, d-MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
uz : Internal.Locale.Locale
uz =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "uz"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "TO"
                    , pm = "TK"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "kunduzi" )
                            , ( "evening1", "kechqurun" )
                            , ( "midnight", "yarim tun" )
                            , ( "morning1", "ertalab" )
                            , ( "night1", "kechasi" )
                            , ( "noon", "tush payti" )
                            ]
                    }
                , wide =
                    { am = "TO"
                    , pm = "TK"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "kunduzi" )
                            , ( "evening1", "kechqurun" )
                            , ( "midnight", "yarim tun" )
                            , ( "morning1", "ertalab" )
                            , ( "night1", "kechasi" )
                            , ( "noon", "tush payti" )
                            ]
                    }
                , narrow =
                    { am = "TO"
                    , pm = "TK"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "kunduzi" )
                            , ( "evening1", "kechqurun" )
                            , ( "midnight", "yarim tun" )
                            , ( "morning1", "ertalab" )
                            , ( "night1", "kechasi" )
                            , ( "noon", "tush payti" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "d-MMM, y"
                , long = "d-MMMM, y"
                , full = "EEEE, d-MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "yan"
                    , feb = "fev"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "may"
                    , jun = "iyn"
                    , jul = "iyl"
                    , aug = "avg"
                    , sep = "sen"
                    , oct = "okt"
                    , nov = "noy"
                    , dec = "dek"
                    }
                , wide =
                    { jan = "yanvar"
                    , feb = "fevral"
                    , mar = "mart"
                    , apr = "aprel"
                    , may = "may"
                    , jun = "iyun"
                    , jul = "iyul"
                    , aug = "avgust"
                    , sep = "sentabr"
                    , oct = "oktabr"
                    , nov = "noyabr"
                    , dec = "dekabr"
                    }
                , narrow =
                    { jan = "Y"
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
                    { jan = "Yan"
                    , feb = "Fev"
                    , mar = "Mar"
                    , apr = "Apr"
                    , may = "May"
                    , jun = "Iyn"
                    , jul = "Iyl"
                    , aug = "Avg"
                    , sep = "Sen"
                    , oct = "Okt"
                    , nov = "Noy"
                    , dec = "Dek"
                    }
                , wide =
                    { jan = "Yanvar"
                    , feb = "Fevral"
                    , mar = "Mart"
                    , apr = "Aprel"
                    , may = "May"
                    , jun = "Iyun"
                    , jul = "Iyul"
                    , aug = "Avgust"
                    , sep = "Sentabr"
                    , oct = "Oktabr"
                    , nov = "Noyabr"
                    , dec = "Dekabr"
                    }
                , narrow =
                    { jan = "Y"
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
                    { sun = "Yak"
                    , mon = "Dush"
                    , tue = "Sesh"
                    , wed = "Chor"
                    , thu = "Pay"
                    , fri = "Jum"
                    , sat = "Shan"
                    }
                , wide =
                    { sun = "yakshanba"
                    , mon = "dushanba"
                    , tue = "seshanba"
                    , wed = "chorshanba"
                    , thu = "payshanba"
                    , fri = "juma"
                    , sat = "shanba"
                    }
                , narrow =
                    { sun = "Y"
                    , mon = "D"
                    , tue = "S"
                    , wed = "C"
                    , thu = "P"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Yak"
                    , mon = "Dush"
                    , tue = "Sesh"
                    , wed = "Chor"
                    , thu = "Pay"
                    , fri = "Jum"
                    , sat = "Shan"
                    }
                , wide =
                    { sun = "yakshanba"
                    , mon = "dushanba"
                    , tue = "seshanba"
                    , wed = "chorshanba"
                    , thu = "payshanba"
                    , fri = "juma"
                    , sat = "shanba"
                    }
                , narrow =
                    { sun = "Y"
                    , mon = "D"
                    , tue = "S"
                    , wed = "C"
                    , thu = "P"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "m.a.", ad = "milodiy" }
                , wide = { bc = "miloddan avvalgi", ad = "milodiy" }
                , narrow = { bc = "m.a.", ad = "milodiy" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "H:mm:ss (z)"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "MMM, G y" )
                , ( "GyMMMd", "d-MMM, G y" )
                , ( "GyMMMEd", "E, d-MMM, G y" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a (v)" )
                , ( "Hmsv", "HH:mm:ss (v)" )
                , ( "hmv", "h:mm a (v)" )
                , ( "Hmv", "HH:mm (v)" )
                , ( "M", "LL" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d-MMM" )
                , ( "MMMEd", "E, d-MMM" )
                , ( "MMMMd", "d-MMMM" )
                , ( "MMMMW-count-one", "MMMM, W-'hafta'" )
                , ( "MMMMW-count-other", "MMMM, W-'hafta'" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMMM", "MMM, y" )
                , ( "yMMMd", "d-MMM, y" )
                , ( "yMMMEd", "E, d-MMM, y" )
                , ( "yMMMM", "MMMM, y" )
                , ( "yQQQ", "y, QQQ" )
                , ( "yQQQQ", "y, QQQQ" )
                , ( "yw-count-one", "Y, w-'hafta'" )
                , ( "yw-count-other", "Y, w-'hafta'" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d-MMM, y
  - Long : d-MMMM, y
  - Full : EEEE, d-MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
uz_Latn : Internal.Locale.Locale
uz_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "uz"
            , script = Just "Latn"
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "TO"
                    , pm = "TK"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "kunduzi" )
                            , ( "evening1", "kechqurun" )
                            , ( "midnight", "yarim tun" )
                            , ( "morning1", "ertalab" )
                            , ( "night1", "kechasi" )
                            , ( "noon", "tush payti" )
                            ]
                    }
                , wide =
                    { am = "TO"
                    , pm = "TK"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "kunduzi" )
                            , ( "evening1", "kechqurun" )
                            , ( "midnight", "yarim tun" )
                            , ( "morning1", "ertalab" )
                            , ( "night1", "kechasi" )
                            , ( "noon", "tush payti" )
                            ]
                    }
                , narrow =
                    { am = "TO"
                    , pm = "TK"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "kunduzi" )
                            , ( "evening1", "kechqurun" )
                            , ( "midnight", "yarim tun" )
                            , ( "morning1", "ertalab" )
                            , ( "night1", "kechasi" )
                            , ( "noon", "tush payti" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd/MM/yy"
                , medium = "d-MMM, y"
                , long = "d-MMMM, y"
                , full = "EEEE, d-MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "yan"
                    , feb = "fev"
                    , mar = "mar"
                    , apr = "apr"
                    , may = "may"
                    , jun = "iyn"
                    , jul = "iyl"
                    , aug = "avg"
                    , sep = "sen"
                    , oct = "okt"
                    , nov = "noy"
                    , dec = "dek"
                    }
                , wide =
                    { jan = "yanvar"
                    , feb = "fevral"
                    , mar = "mart"
                    , apr = "aprel"
                    , may = "may"
                    , jun = "iyun"
                    , jul = "iyul"
                    , aug = "avgust"
                    , sep = "sentabr"
                    , oct = "oktabr"
                    , nov = "noyabr"
                    , dec = "dekabr"
                    }
                , narrow =
                    { jan = "Y"
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
                    { jan = "Yan"
                    , feb = "Fev"
                    , mar = "Mar"
                    , apr = "Apr"
                    , may = "May"
                    , jun = "Iyn"
                    , jul = "Iyl"
                    , aug = "Avg"
                    , sep = "Sen"
                    , oct = "Okt"
                    , nov = "Noy"
                    , dec = "Dek"
                    }
                , wide =
                    { jan = "Yanvar"
                    , feb = "Fevral"
                    , mar = "Mart"
                    , apr = "Aprel"
                    , may = "May"
                    , jun = "Iyun"
                    , jul = "Iyul"
                    , aug = "Avgust"
                    , sep = "Sentabr"
                    , oct = "Oktabr"
                    , nov = "Noyabr"
                    , dec = "Dekabr"
                    }
                , narrow =
                    { jan = "Y"
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
                    { sun = "Yak"
                    , mon = "Dush"
                    , tue = "Sesh"
                    , wed = "Chor"
                    , thu = "Pay"
                    , fri = "Jum"
                    , sat = "Shan"
                    }
                , wide =
                    { sun = "yakshanba"
                    , mon = "dushanba"
                    , tue = "seshanba"
                    , wed = "chorshanba"
                    , thu = "payshanba"
                    , fri = "juma"
                    , sat = "shanba"
                    }
                , narrow =
                    { sun = "Y"
                    , mon = "D"
                    , tue = "S"
                    , wed = "C"
                    , thu = "P"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "Yak"
                    , mon = "Dush"
                    , tue = "Sesh"
                    , wed = "Chor"
                    , thu = "Pay"
                    , fri = "Jum"
                    , sat = "Shan"
                    }
                , wide =
                    { sun = "yakshanba"
                    , mon = "dushanba"
                    , tue = "seshanba"
                    , wed = "chorshanba"
                    , thu = "payshanba"
                    , fri = "juma"
                    , sat = "shanba"
                    }
                , narrow =
                    { sun = "Y"
                    , mon = "D"
                    , tue = "S"
                    , wed = "C"
                    , thu = "P"
                    , fri = "J"
                    , sat = "S"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "m.a.", ad = "milodiy" }
                , wide = { bc = "miloddan avvalgi", ad = "milodiy" }
                , narrow = { bc = "m.a.", ad = "milodiy" }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "H:mm:ss (z)"
                , full = "H:mm:ss (zzzz)"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
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
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "MMM, G y" )
                , ( "GyMMMd", "d-MMM, G y" )
                , ( "GyMMMEd", "E, d-MMM, G y" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a (v)" )
                , ( "Hmsv", "HH:mm:ss (v)" )
                , ( "hmv", "h:mm a (v)" )
                , ( "Hmv", "HH:mm (v)" )
                , ( "M", "LL" )
                , ( "Md", "dd/MM" )
                , ( "MEd", "E, dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d-MMM" )
                , ( "MMMEd", "E, d-MMM" )
                , ( "MMMMd", "d-MMMM" )
                , ( "MMMMW-count-one", "MMMM, W-'hafta'" )
                , ( "MMMMW-count-other", "MMMM, W-'hafta'" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd/MM/y" )
                , ( "yMEd", "E, dd/MM/y" )
                , ( "yMMM", "MMM, y" )
                , ( "yMMMd", "d-MMM, y" )
                , ( "yMMMEd", "E, d-MMM, y" )
                , ( "yMMMM", "MMMM, y" )
                , ( "yQQQ", "y, QQQ" )
                , ( "yQQQQ", "y, QQQQ" )
                , ( "yw-count-one", "Y, w-'hafta'" )
                , ( "yw-count-other", "Y, w-'hafta'" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
