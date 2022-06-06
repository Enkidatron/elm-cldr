module Generated.Nl exposing (nl, nl_AW, nl_BE, nl_BQ, nl_CW, nl_SR, nl_SX)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "nl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl : Internal.Locale.Locale
nl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "nl"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd-MM-y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v.Chr.", ad = "n.Chr." }
                , wide = { bc = "voor Christus", ad = "na Christus" }
                , narrow = { bc = "v.C.", ad = "n.C." }
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
                , long = "{1} 'om' {0}"
                , full = "{1} 'om' {0}"
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
                , ( "GyMd", "d/M/y GGGGG" )
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
                , ( "Md", "d-M" )
                , ( "MEd", "E d-M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'van' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'van' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d-M-y" )
                , ( "yMEd", "E d-M-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'week' w 'in' Y" )
                , ( "yw-count-other", "'week' w 'in' Y" )
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

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_AW : Internal.Locale.Locale
nl_AW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "nl"
            , script = Nothing
            , territory = Just "AW"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd-MM-y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v.Chr.", ad = "n.Chr." }
                , wide = { bc = "voor Christus", ad = "na Christus" }
                , narrow = { bc = "v.C.", ad = "n.C." }
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
                , long = "{1} 'om' {0}"
                , full = "{1} 'om' {0}"
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
                , ( "GyMd", "d/M/y GGGGG" )
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
                , ( "Md", "d-M" )
                , ( "MEd", "E d-M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'van' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'van' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d-M-y" )
                , ( "yMEd", "E d-M-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'week' w 'in' Y" )
                , ( "yw-count-other", "'week' w 'in' Y" )
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

  - Short : d/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_BE : Internal.Locale.Locale
nl_BE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "nl"
            , script = Nothing
            , territory = Just "BE"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/MM/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v.Chr.", ad = "n.Chr." }
                , wide = { bc = "voor Christus", ad = "na Christus" }
                , narrow = { bc = "v.C.", ad = "n.C." }
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
                , long = "{1} 'om' {0}"
                , full = "{1} 'om' {0}"
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
                , ( "GyMd", "d/M/y GGGGG" )
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
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'van' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'van' MMMM" )
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
                , ( "yw-count-one", "'week' w 'in' Y" )
                , ( "yw-count-other", "'week' w 'in' Y" )
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

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_BQ : Internal.Locale.Locale
nl_BQ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "nl"
            , script = Nothing
            , territory = Just "BQ"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd-MM-y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v.Chr.", ad = "n.Chr." }
                , wide = { bc = "voor Christus", ad = "na Christus" }
                , narrow = { bc = "v.C.", ad = "n.C." }
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
                , long = "{1} 'om' {0}"
                , full = "{1} 'om' {0}"
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
                , ( "GyMd", "d/M/y GGGGG" )
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
                , ( "Md", "d-M" )
                , ( "MEd", "E d-M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'van' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'van' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d-M-y" )
                , ( "yMEd", "E d-M-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'week' w 'in' Y" )
                , ( "yw-count-other", "'week' w 'in' Y" )
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

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_CW : Internal.Locale.Locale
nl_CW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "nl"
            , script = Nothing
            , territory = Just "CW"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd-MM-y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v.Chr.", ad = "n.Chr." }
                , wide = { bc = "voor Christus", ad = "na Christus" }
                , narrow = { bc = "v.C.", ad = "n.C." }
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
                , long = "{1} 'om' {0}"
                , full = "{1} 'om' {0}"
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
                , ( "GyMd", "d/M/y GGGGG" )
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
                , ( "Md", "d-M" )
                , ( "MEd", "E d-M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'van' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'van' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d-M-y" )
                , ( "yMEd", "E d-M-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'week' w 'in' Y" )
                , ( "yw-count-other", "'week' w 'in' Y" )
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

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_SR : Internal.Locale.Locale
nl_SR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "nl"
            , script = Nothing
            , territory = Just "SR"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd-MM-y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v.Chr.", ad = "n.Chr." }
                , wide = { bc = "voor Christus", ad = "na Christus" }
                , narrow = { bc = "v.C.", ad = "n.C." }
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
                , long = "{1} 'om' {0}"
                , full = "{1} 'om' {0}"
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
                , ( "GyMd", "d/M/y GGGGG" )
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
                , ( "Md", "d-M" )
                , ( "MEd", "E d-M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'van' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'van' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d-M-y" )
                , ( "yMEd", "E d-M-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'week' w 'in' Y" )
                , ( "yw-count-other", "'week' w 'in' Y" )
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

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_SX : Internal.Locale.Locale
nl_SX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "nl"
            , script = Nothing
            , territory = Just "SX"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , wide =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                , narrow =
                    { am = "a.m."
                    , pm = "p.m."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "’s middags" )
                            , ( "evening1", "’s avonds" )
                            , ( "midnight", "middernacht" )
                            , ( "morning1", "’s ochtends" )
                            , ( "night1", "’s nachts" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd-MM-y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    , mar = "mrt."
                    , apr = "apr."
                    , may = "mei"
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "aug."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januari"
                    , feb = "februari"
                    , mar = "maart"
                    , apr = "april"
                    , may = "mei"
                    , jun = "juni"
                    , jul = "juli"
                    , aug = "augustus"
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
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "zo"
                    , mon = "ma"
                    , tue = "di"
                    , wed = "wo"
                    , thu = "do"
                    , fri = "vr"
                    , sat = "za"
                    }
                , wide =
                    { sun = "zondag"
                    , mon = "maandag"
                    , tue = "dinsdag"
                    , wed = "woensdag"
                    , thu = "donderdag"
                    , fri = "vrijdag"
                    , sat = "zaterdag"
                    }
                , narrow =
                    { sun = "Z"
                    , mon = "M"
                    , tue = "D"
                    , wed = "W"
                    , thu = "D"
                    , fri = "V"
                    , sat = "Z"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "v.Chr.", ad = "n.Chr." }
                , wide = { bc = "voor Christus", ad = "na Christus" }
                , narrow = { bc = "v.C.", ad = "n.C." }
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
                , long = "{1} 'om' {0}"
                , full = "{1} 'om' {0}"
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
                , ( "GyMd", "d/M/y GGGGG" )
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
                , ( "Md", "d-M" )
                , ( "MEd", "E d-M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "'week' W 'van' MMMM" )
                , ( "MMMMW-count-other", "'week' W 'van' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M-y" )
                , ( "yMd", "d-M-y" )
                , ( "yMEd", "E d-M-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'week' w 'in' Y" )
                , ( "yw-count-other", "'week' w 'in' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
