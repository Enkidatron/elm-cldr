module Generated.Alt.Sq exposing (sq, sq_MK, sq_XK)

import Cldr.Format.Options as Opts
import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym
import Internal.LanguageInfo
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "sq"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 9, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 9, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a, z
  - Full : h:mm:ss a, zzzz

-}
sq : Internal.Locale.Locale
sq =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sq"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "p.d."
                    , pm = "m.d."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "e pasdites" )
                            , ( "evening1", "e mbrëmjes" )
                            , ( "midnight", "e mesnatës" )
                            , ( "morning1", "e mëngjesit" )
                            , ( "morning2", "e paradites" )
                            , ( "night1", "e natës" )
                            , ( "noon", "e mesditës" )
                            ]
                    }
                , wide =
                    { am = "e paradites"
                    , pm = "e pasdites"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "e pasdites" )
                            , ( "evening1", "e mbrëmjes" )
                            , ( "midnight", "e mesnatës" )
                            , ( "morning1", "e mëngjesit" )
                            , ( "morning2", "e paradites" )
                            , ( "night1", "e natës" )
                            , ( "noon", "e mesditës" )
                            ]
                    }
                , narrow =
                    { am = "p.d."
                    , pm = "m.d."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "e pasdites" )
                            , ( "evening1", "e mbrëmjes" )
                            , ( "midnight", "e mesnatës" )
                            , ( "morning1", "e mëngjesit" )
                            , ( "morning2", "e paradites" )
                            , ( "night1", "e natës" )
                            , ( "noon", "e mesditës" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "shk"
                    , mar = "mar"
                    , apr = "pri"
                    , may = "maj"
                    , jun = "qer"
                    , jul = "korr"
                    , aug = "gush"
                    , sep = "sht"
                    , oct = "tet"
                    , nov = "nën"
                    , dec = "dhj"
                    }
                , wide =
                    { jan = "janar"
                    , feb = "shkurt"
                    , mar = "mars"
                    , apr = "prill"
                    , may = "maj"
                    , jun = "qershor"
                    , jul = "korrik"
                    , aug = "gusht"
                    , sep = "shtator"
                    , oct = "tetor"
                    , nov = "nëntor"
                    , dec = "dhjetor"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "sh"
                    , mar = "m"
                    , apr = "p"
                    , may = "m"
                    , jun = "q"
                    , jul = "k"
                    , aug = "g"
                    , sep = "sh"
                    , oct = "t"
                    , nov = "n"
                    , dec = "dh"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "shk"
                    , mar = "mar"
                    , apr = "pri"
                    , may = "maj"
                    , jun = "qer"
                    , jul = "korr"
                    , aug = "gush"
                    , sep = "sht"
                    , oct = "tet"
                    , nov = "nën"
                    , dec = "dhj"
                    }
                , wide =
                    { jan = "janar"
                    , feb = "shkurt"
                    , mar = "mars"
                    , apr = "prill"
                    , may = "maj"
                    , jun = "qershor"
                    , jul = "korrik"
                    , aug = "gusht"
                    , sep = "shtator"
                    , oct = "tetor"
                    , nov = "nëntor"
                    , dec = "dhjetor"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "sh"
                    , mar = "m"
                    , apr = "p"
                    , may = "m"
                    , jun = "q"
                    , jul = "k"
                    , aug = "g"
                    , sep = "sh"
                    , oct = "t"
                    , nov = "n"
                    , dec = "dh"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Die"
                    , mon = "Hën"
                    , tue = "Mar"
                    , wed = "Mër"
                    , thu = "Enj"
                    , fri = "Pre"
                    , sat = "Sht"
                    }
                , wide =
                    { sun = "e diel"
                    , mon = "e hënë"
                    , tue = "e martë"
                    , wed = "e mërkurë"
                    , thu = "e enjte"
                    , fri = "e premte"
                    , sat = "e shtunë"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "h"
                    , tue = "m"
                    , wed = "m"
                    , thu = "e"
                    , fri = "p"
                    , sat = "sh"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "die"
                    , mon = "hën"
                    , tue = "mar"
                    , wed = "mër"
                    , thu = "enj"
                    , fri = "pre"
                    , sat = "sht"
                    }
                , wide =
                    { sun = "e diel"
                    , mon = "e hënë"
                    , tue = "e martë"
                    , wed = "e mërkurë"
                    , thu = "e enjte"
                    , fri = "e premte"
                    , sat = "e shtunë"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "h"
                    , tue = "m"
                    , wed = "m"
                    , thu = "e"
                    , fri = "p"
                    , sat = "sh"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "p.K.", ad = "mb.K." }
                , wide = { bc = "para Krishtit", ad = "mbas Krishtit" }
                , narrow = { bc = "p.K.", ad = "mb.K." }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a, z"
                , full = "h:mm:ss a, zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'në' {0}"
                , full = "{1} 'në' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.M.y GGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a, v" )
                , ( "Hmsv", "HH:mm:ss, v" )
                , ( "hmv", "h:mm a, v" )
                , ( "Hmv", "HH:mm, v" )
                , ( "M", "L" )
                , ( "Md", "d.M" )
                , ( "MEd", "E, d.M" )
                , ( "MMdd", "d.M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'java' W 'e' MMMM" )
                , ( "MMMMW-count-other", "'java' W 'e' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ, y" )
                , ( "yQQQQ", "QQQQ, y" )
                , ( "yw-count-one", "'java' w 'e' Y" )
                , ( "yw-count-other", "'java' w 'e' Y" )
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

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sq_MK : Internal.Locale.Locale
sq_MK =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sq"
            , script = Nothing
            , territory = Just "MK"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "p.d."
                    , pm = "m.d."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "e pasdites" )
                            , ( "evening1", "e mbrëmjes" )
                            , ( "midnight", "e mesnatës" )
                            , ( "morning1", "e mëngjesit" )
                            , ( "morning2", "e paradites" )
                            , ( "night1", "e natës" )
                            , ( "noon", "e mesditës" )
                            ]
                    }
                , wide =
                    { am = "e paradites"
                    , pm = "e pasdites"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "e pasdites" )
                            , ( "evening1", "e mbrëmjes" )
                            , ( "midnight", "e mesnatës" )
                            , ( "morning1", "e mëngjesit" )
                            , ( "morning2", "e paradites" )
                            , ( "night1", "e natës" )
                            , ( "noon", "e mesditës" )
                            ]
                    }
                , narrow =
                    { am = "p.d."
                    , pm = "m.d."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "e pasdites" )
                            , ( "evening1", "e mbrëmjes" )
                            , ( "midnight", "e mesnatës" )
                            , ( "morning1", "e mëngjesit" )
                            , ( "morning2", "e paradites" )
                            , ( "night1", "e natës" )
                            , ( "noon", "e mesditës" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "shk"
                    , mar = "mar"
                    , apr = "pri"
                    , may = "maj"
                    , jun = "qer"
                    , jul = "korr"
                    , aug = "gush"
                    , sep = "sht"
                    , oct = "tet"
                    , nov = "nën"
                    , dec = "dhj"
                    }
                , wide =
                    { jan = "janar"
                    , feb = "shkurt"
                    , mar = "mars"
                    , apr = "prill"
                    , may = "maj"
                    , jun = "qershor"
                    , jul = "korrik"
                    , aug = "gusht"
                    , sep = "shtator"
                    , oct = "tetor"
                    , nov = "nëntor"
                    , dec = "dhjetor"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "sh"
                    , mar = "m"
                    , apr = "p"
                    , may = "m"
                    , jun = "q"
                    , jul = "k"
                    , aug = "g"
                    , sep = "sh"
                    , oct = "t"
                    , nov = "n"
                    , dec = "dh"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "shk"
                    , mar = "mar"
                    , apr = "pri"
                    , may = "maj"
                    , jun = "qer"
                    , jul = "korr"
                    , aug = "gush"
                    , sep = "sht"
                    , oct = "tet"
                    , nov = "nën"
                    , dec = "dhj"
                    }
                , wide =
                    { jan = "janar"
                    , feb = "shkurt"
                    , mar = "mars"
                    , apr = "prill"
                    , may = "maj"
                    , jun = "qershor"
                    , jul = "korrik"
                    , aug = "gusht"
                    , sep = "shtator"
                    , oct = "tetor"
                    , nov = "nëntor"
                    , dec = "dhjetor"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "sh"
                    , mar = "m"
                    , apr = "p"
                    , may = "m"
                    , jun = "q"
                    , jul = "k"
                    , aug = "g"
                    , sep = "sh"
                    , oct = "t"
                    , nov = "n"
                    , dec = "dh"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Die"
                    , mon = "Hën"
                    , tue = "Mar"
                    , wed = "Mër"
                    , thu = "Enj"
                    , fri = "Pre"
                    , sat = "Sht"
                    }
                , wide =
                    { sun = "e diel"
                    , mon = "e hënë"
                    , tue = "e martë"
                    , wed = "e mërkurë"
                    , thu = "e enjte"
                    , fri = "e premte"
                    , sat = "e shtunë"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "h"
                    , tue = "m"
                    , wed = "m"
                    , thu = "e"
                    , fri = "p"
                    , sat = "sh"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "die"
                    , mon = "hën"
                    , tue = "mar"
                    , wed = "mër"
                    , thu = "enj"
                    , fri = "pre"
                    , sat = "sht"
                    }
                , wide =
                    { sun = "e diel"
                    , mon = "e hënë"
                    , tue = "e martë"
                    , wed = "e mërkurë"
                    , thu = "e enjte"
                    , fri = "e premte"
                    , sat = "e shtunë"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "h"
                    , tue = "m"
                    , wed = "m"
                    , thu = "e"
                    , fri = "p"
                    , sat = "sh"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "p.K.", ad = "mb.K." }
                , wide = { bc = "para Krishtit", ad = "mbas Krishtit" }
                , narrow = { bc = "p.K.", ad = "mb.K." }
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
                , long = "{1} 'në' {0}"
                , full = "{1} 'në' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.M.y GGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a, v" )
                , ( "Hmsv", "HH:mm:ss, v" )
                , ( "hmv", "h:mm a, v" )
                , ( "Hmv", "HH:mm, v" )
                , ( "M", "L" )
                , ( "Md", "d.M" )
                , ( "MEd", "E, d.M" )
                , ( "MMdd", "d.M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'java' W 'e' MMMM" )
                , ( "MMMMW-count-other", "'java' W 'e' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ, y" )
                , ( "yQQQQ", "QQQQ, y" )
                , ( "yw-count-one", "'java' w 'e' Y" )
                , ( "yw-count-other", "'java' w 'e' Y" )
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

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sq_XK : Internal.Locale.Locale
sq_XK =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "sq"
            , script = Nothing
            , territory = Just "XK"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "p.d."
                    , pm = "m.d."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "e pasdites" )
                            , ( "evening1", "e mbrëmjes" )
                            , ( "midnight", "e mesnatës" )
                            , ( "morning1", "e mëngjesit" )
                            , ( "morning2", "e paradites" )
                            , ( "night1", "e natës" )
                            , ( "noon", "e mesditës" )
                            ]
                    }
                , wide =
                    { am = "e paradites"
                    , pm = "e pasdites"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "e pasdites" )
                            , ( "evening1", "e mbrëmjes" )
                            , ( "midnight", "e mesnatës" )
                            , ( "morning1", "e mëngjesit" )
                            , ( "morning2", "e paradites" )
                            , ( "night1", "e natës" )
                            , ( "noon", "e mesditës" )
                            ]
                    }
                , narrow =
                    { am = "p.d."
                    , pm = "m.d."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "e pasdites" )
                            , ( "evening1", "e mbrëmjes" )
                            , ( "midnight", "e mesnatës" )
                            , ( "morning1", "e mëngjesit" )
                            , ( "morning2", "e paradites" )
                            , ( "night1", "e natës" )
                            , ( "noon", "e mesditës" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.yy"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE, d MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "shk"
                    , mar = "mar"
                    , apr = "pri"
                    , may = "maj"
                    , jun = "qer"
                    , jul = "korr"
                    , aug = "gush"
                    , sep = "sht"
                    , oct = "tet"
                    , nov = "nën"
                    , dec = "dhj"
                    }
                , wide =
                    { jan = "janar"
                    , feb = "shkurt"
                    , mar = "mars"
                    , apr = "prill"
                    , may = "maj"
                    , jun = "qershor"
                    , jul = "korrik"
                    , aug = "gusht"
                    , sep = "shtator"
                    , oct = "tetor"
                    , nov = "nëntor"
                    , dec = "dhjetor"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "sh"
                    , mar = "m"
                    , apr = "p"
                    , may = "m"
                    , jun = "q"
                    , jul = "k"
                    , aug = "g"
                    , sep = "sh"
                    , oct = "t"
                    , nov = "n"
                    , dec = "dh"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "shk"
                    , mar = "mar"
                    , apr = "pri"
                    , may = "maj"
                    , jun = "qer"
                    , jul = "korr"
                    , aug = "gush"
                    , sep = "sht"
                    , oct = "tet"
                    , nov = "nën"
                    , dec = "dhj"
                    }
                , wide =
                    { jan = "janar"
                    , feb = "shkurt"
                    , mar = "mars"
                    , apr = "prill"
                    , may = "maj"
                    , jun = "qershor"
                    , jul = "korrik"
                    , aug = "gusht"
                    , sep = "shtator"
                    , oct = "tetor"
                    , nov = "nëntor"
                    , dec = "dhjetor"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "sh"
                    , mar = "m"
                    , apr = "p"
                    , may = "m"
                    , jun = "q"
                    , jul = "k"
                    , aug = "g"
                    , sep = "sh"
                    , oct = "t"
                    , nov = "n"
                    , dec = "dh"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "Die"
                    , mon = "Hën"
                    , tue = "Mar"
                    , wed = "Mër"
                    , thu = "Enj"
                    , fri = "Pre"
                    , sat = "Sht"
                    }
                , wide =
                    { sun = "e diel"
                    , mon = "e hënë"
                    , tue = "e martë"
                    , wed = "e mërkurë"
                    , thu = "e enjte"
                    , fri = "e premte"
                    , sat = "e shtunë"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "h"
                    , tue = "m"
                    , wed = "m"
                    , thu = "e"
                    , fri = "p"
                    , sat = "sh"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "die"
                    , mon = "hën"
                    , tue = "mar"
                    , wed = "mër"
                    , thu = "enj"
                    , fri = "pre"
                    , sat = "sht"
                    }
                , wide =
                    { sun = "e diel"
                    , mon = "e hënë"
                    , tue = "e martë"
                    , wed = "e mërkurë"
                    , thu = "e enjte"
                    , fri = "e premte"
                    , sat = "e shtunë"
                    }
                , narrow =
                    { sun = "d"
                    , mon = "h"
                    , tue = "m"
                    , wed = "m"
                    , thu = "e"
                    , fri = "p"
                    , sat = "sh"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "p.K.", ad = "mb.K." }
                , wide = { bc = "para Krishtit", ad = "mbas Krishtit" }
                , narrow = { bc = "p.K.", ad = "mb.K." }
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
                , long = "{1} 'në' {0}"
                , full = "{1} 'në' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.M.y GGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM y G" )
                , ( "GyMMMEd", "E, d MMM y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a, v" )
                , ( "Hmsv", "HH:mm:ss, v" )
                , ( "hmv", "h:mm a, v" )
                , ( "Hmv", "HH:mm, v" )
                , ( "M", "L" )
                , ( "Md", "d.M" )
                , ( "MEd", "E, d.M" )
                , ( "MMdd", "d.M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "'java' W 'e' MMMM" )
                , ( "MMMMW-count-other", "'java' W 'e' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ, y" )
                , ( "yQQQQ", "QQQQ, y" )
                , ( "yw-count-one", "'java' w 'e' Y" )
                , ( "yw-count-other", "'java' w 'e' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
