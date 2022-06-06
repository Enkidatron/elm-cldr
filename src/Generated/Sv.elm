module Generated.Sv exposing (sv, sv_AX, sv_FI)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "sv"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv : Internal.Locale.Locale
sv =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sv"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "fm"
                    , pm = "em"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på efterm." )
                            , ( "evening1", "på kvällen" )
                            , ( "midnight", "midnatt" )
                            , ( "morning1", "på morg." )
                            , ( "morning2", "på förm." )
                            , ( "night1", "på natten" )
                            ]
                    }
                , wide =
                    { am = "fm"
                    , pm = "em"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på eftermiddagen" )
                            , ( "evening1", "på kvällen" )
                            , ( "midnight", "midnatt" )
                            , ( "morning1", "på morgonen" )
                            , ( "morning2", "på förmiddagen" )
                            , ( "night1", "på natten" )
                            ]
                    }
                , narrow =
                    { am = "fm"
                    , pm = "em"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på efterm." )
                            , ( "evening1", "på kvällen" )
                            , ( "midnight", "midn." )
                            , ( "morning1", "på morg." )
                            , ( "morning2", "på förm." )
                            , ( "night1", "på natten" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mars"
                    , apr = "apr."
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "mars"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augusti"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mars"
                    , apr = "apr."
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "mars"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augusti"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "sön"
                    , mon = "mån"
                    , tue = "tis"
                    , wed = "ons"
                    , thu = "tors"
                    , fri = "fre"
                    , sat = "lör"
                    }
                , wide =
                    { sun = "söndag"
                    , mon = "måndag"
                    , tue = "tisdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lördag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "sön"
                    , mon = "mån"
                    , tue = "tis"
                    , wed = "ons"
                    , thu = "tors"
                    , fri = "fre"
                    , sat = "lör"
                    }
                , wide =
                    { sun = "söndag"
                    , mon = "måndag"
                    , tue = "tisdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lördag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "f.Kr.", ad = "e.Kr." }
                , wide = { bc = "före Kristus", ad = "efter Kristus" }
                , narrow = { bc = "f.Kr.", ad = "e.Kr." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
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
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "y-MM-dd GGGGG" )
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
                , ( "MMd", "d/M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMW-count-one", "'vecka' W 'i' MMMM" )
                , ( "MMMMW-count-other", "'vecka' W 'i' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "y-MM" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "E, y-MM-dd" )
                , ( "yMM", "y-MM" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'vecka' w, Y" )
                , ( "yw-count-other", "'vecka' w, Y" )
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

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv_AX : Internal.Locale.Locale
sv_AX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sv"
            , script = Nothing
            , territory = Just "AX"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "fm"
                    , pm = "em"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på efterm." )
                            , ( "evening1", "på kvällen" )
                            , ( "midnight", "midnatt" )
                            , ( "morning1", "på morg." )
                            , ( "morning2", "på förm." )
                            , ( "night1", "på natten" )
                            ]
                    }
                , wide =
                    { am = "fm"
                    , pm = "em"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på eftermiddagen" )
                            , ( "evening1", "på kvällen" )
                            , ( "midnight", "midnatt" )
                            , ( "morning1", "på morgonen" )
                            , ( "morning2", "på förmiddagen" )
                            , ( "night1", "på natten" )
                            ]
                    }
                , narrow =
                    { am = "fm"
                    , pm = "em"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på efterm." )
                            , ( "evening1", "på kvällen" )
                            , ( "midnight", "midn." )
                            , ( "morning1", "på morg." )
                            , ( "morning2", "på förm." )
                            , ( "night1", "på natten" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mars"
                    , apr = "apr."
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "mars"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augusti"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mars"
                    , apr = "apr."
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "mars"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augusti"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "sön"
                    , mon = "mån"
                    , tue = "tis"
                    , wed = "ons"
                    , thu = "tors"
                    , fri = "fre"
                    , sat = "lör"
                    }
                , wide =
                    { sun = "söndag"
                    , mon = "måndag"
                    , tue = "tisdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lördag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "sön"
                    , mon = "mån"
                    , tue = "tis"
                    , wed = "ons"
                    , thu = "tors"
                    , fri = "fre"
                    , sat = "lör"
                    }
                , wide =
                    { sun = "söndag"
                    , mon = "måndag"
                    , tue = "tisdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lördag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "f.Kr.", ad = "e.Kr." }
                , wide = { bc = "före Kristus", ad = "efter Kristus" }
                , narrow = { bc = "f.Kr.", ad = "e.Kr." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
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
                , ( "Ed", "E d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "y-MM-dd GGGGG" )
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
                , ( "MMd", "d/M" )
                , ( "MMdd", "dd/MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMW-count-one", "'vecka' W 'i' MMMM" )
                , ( "MMMMW-count-other", "'vecka' W 'i' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "y-MM" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "E, y-MM-dd" )
                , ( "yMM", "y-MM" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'vecka' w, Y" )
                , ( "yw-count-other", "'vecka' w, Y" )
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

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv_FI : Internal.Locale.Locale
sv_FI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sv"
            , script = Nothing
            , territory = Just "FI"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "fm"
                    , pm = "em"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på efterm." )
                            , ( "evening1", "på kvällen" )
                            , ( "midnight", "midnatt" )
                            , ( "morning1", "på morg." )
                            , ( "morning2", "på förm." )
                            , ( "night1", "på natten" )
                            ]
                    }
                , wide =
                    { am = "fm"
                    , pm = "em"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på eftermiddagen" )
                            , ( "evening1", "på kvällen" )
                            , ( "midnight", "midnatt" )
                            , ( "morning1", "på morgonen" )
                            , ( "morning2", "på förmiddagen" )
                            , ( "night1", "på natten" )
                            ]
                    }
                , narrow =
                    { am = "fm"
                    , pm = "em"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "på efterm." )
                            , ( "evening1", "på kvällen" )
                            , ( "midnight", "midn." )
                            , ( "morning1", "på morg." )
                            , ( "morning2", "på förm." )
                            , ( "night1", "på natten" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y-MM-dd"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mars"
                    , apr = "apr."
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "mars"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augusti"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mars"
                    , apr = "apr."
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "mars"
                    , apr = "april"
                    , may = "maj"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augusti"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "november"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "A"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "S"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "sön"
                    , mon = "mån"
                    , tue = "tis"
                    , wed = "ons"
                    , thu = "tors"
                    , fri = "fre"
                    , sat = "lör"
                    }
                , wide =
                    { sun = "söndag"
                    , mon = "måndag"
                    , tue = "tisdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lördag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "sön"
                    , mon = "mån"
                    , tue = "tis"
                    , wed = "ons"
                    , thu = "tors"
                    , fri = "fre"
                    , sat = "lör"
                    }
                , wide =
                    { sun = "söndag"
                    , mon = "måndag"
                    , tue = "tisdag"
                    , wed = "onsdag"
                    , thu = "torsdag"
                    , fri = "fredag"
                    , sat = "lördag"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "O"
                    , thu = "T"
                    , fri = "F"
                    , sat = "L"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "f.Kr.", ad = "e.Kr." }
                , wide = { bc = "före Kristus", ad = "efter Kristus" }
                , narrow = { bc = "f.Kr.", ad = "e.Kr." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
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
                , ( "Bhm", "h.mm B" )
                , ( "Bhms", "h.mm.ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h.mm B" )
                , ( "EBhms", "E h.mm.ss B" )
                , ( "Ed", "E d" )
                , ( "Ehm", "E h.mm a" )
                , ( "EHm", "E HH.mm" )
                , ( "Ehms", "E h.mm.ss a" )
                , ( "EHms", "E HH.mm.ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "y-MM-dd GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h.mm a" )
                , ( "Hm", "HH.mm" )
                , ( "hms", "h.mm.ss a" )
                , ( "Hms", "HH.mm.ss" )
                , ( "hmsv", "h.mm.ss a v" )
                , ( "Hmsv", "HH.mm.ss v" )
                , ( "hmv", "h.mm a v" )
                , ( "Hmv", "HH.mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M" )
                , ( "MEd", "E d.M" )
                , ( "MMd", "d.M" )
                , ( "MMdd", "dd.MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMW-count-one", "'vecka' W 'i' MMMM" )
                , ( "MMMMW-count-other", "'vecka' W 'i' MMMM" )
                , ( "ms", "mm.ss" )
                , ( "y", "y" )
                , ( "yM", "y-MM" )
                , ( "yMd", "y-MM-dd" )
                , ( "yMEd", "E, y-MM-dd" )
                , ( "yMM", "y-MM" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'vecka' w, Y" )
                , ( "yw-count-other", "'vecka' w, Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
