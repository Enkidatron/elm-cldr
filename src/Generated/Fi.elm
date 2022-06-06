module Generated.Fi exposing (fi)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "fi"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 23, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 5, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.M.y
  - Medium : d.M.y
  - Long : d. MMMM y
  - Full : cccc d. MMMM y

Time format strings:

  - Short : H.mm
  - Medium : H.mm.ss
  - Long : H.mm.ss z
  - Full : H.mm.ss zzzz

-}
fi : Internal.Locale.Locale
fi =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "fi"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ap."
                    , pm = "ip."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "iltap." )
                            , ( "evening1", "illalla" )
                            , ( "midnight", "keskiyöllä" )
                            , ( "morning1", "aamulla" )
                            , ( "morning2", "aamup." )
                            , ( "night1", "yöllä" )
                            , ( "noon", "keskip." )
                            ]
                    }
                , wide =
                    { am = "ap."
                    , pm = "ip."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "iltapäivällä" )
                            , ( "evening1", "illalla" )
                            , ( "midnight", "keskiyöllä" )
                            , ( "morning1", "aamulla" )
                            , ( "morning2", "aamupäivällä" )
                            , ( "night1", "yöllä" )
                            , ( "noon", "keskipäivällä" )
                            ]
                    }
                , narrow =
                    { am = "ap."
                    , pm = "ip."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ip." )
                            , ( "evening1", "illalla" )
                            , ( "midnight", "ky." )
                            , ( "morning1", "aamulla" )
                            , ( "morning2", "ap." )
                            , ( "night1", "yöllä" )
                            , ( "noon", "kp." )
                            ]
                    }
                }
            , datePatterns =
                { short = "d.M.y"
                , medium = "d.M.y"
                , long = "d. MMMM y"
                , full = "cccc d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "tammik."
                    , feb = "helmik."
                    , mar = "maalisk."
                    , apr = "huhtik."
                    , may = "toukok."
                    , jun = "kesäk."
                    , jul = "heinäk."
                    , aug = "elok."
                    , sep = "syysk."
                    , oct = "lokak."
                    , nov = "marrask."
                    , dec = "jouluk."
                    }
                , wide =
                    { jan = "tammikuuta"
                    , feb = "helmikuuta"
                    , mar = "maaliskuuta"
                    , apr = "huhtikuuta"
                    , may = "toukokuuta"
                    , jun = "kesäkuuta"
                    , jul = "heinäkuuta"
                    , aug = "elokuuta"
                    , sep = "syyskuuta"
                    , oct = "lokakuuta"
                    , nov = "marraskuuta"
                    , dec = "joulukuuta"
                    }
                , narrow =
                    { jan = "T"
                    , feb = "H"
                    , mar = "M"
                    , apr = "H"
                    , may = "T"
                    , jun = "K"
                    , jul = "H"
                    , aug = "E"
                    , sep = "S"
                    , oct = "L"
                    , nov = "M"
                    , dec = "J"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "tammi"
                    , feb = "helmi"
                    , mar = "maalis"
                    , apr = "huhti"
                    , may = "touko"
                    , jun = "kesä"
                    , jul = "heinä"
                    , aug = "elo"
                    , sep = "syys"
                    , oct = "loka"
                    , nov = "marras"
                    , dec = "joulu"
                    }
                , wide =
                    { jan = "tammikuu"
                    , feb = "helmikuu"
                    , mar = "maaliskuu"
                    , apr = "huhtikuu"
                    , may = "toukokuu"
                    , jun = "kesäkuu"
                    , jul = "heinäkuu"
                    , aug = "elokuu"
                    , sep = "syyskuu"
                    , oct = "lokakuu"
                    , nov = "marraskuu"
                    , dec = "joulukuu"
                    }
                , narrow =
                    { jan = "T"
                    , feb = "H"
                    , mar = "M"
                    , apr = "H"
                    , may = "T"
                    , jun = "K"
                    , jul = "H"
                    , aug = "E"
                    , sep = "S"
                    , oct = "L"
                    , nov = "M"
                    , dec = "J"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "su"
                    , mon = "ma"
                    , tue = "ti"
                    , wed = "ke"
                    , thu = "to"
                    , fri = "pe"
                    , sat = "la"
                    }
                , wide =
                    { sun = "sunnuntaina"
                    , mon = "maanantaina"
                    , tue = "tiistaina"
                    , wed = "keskiviikkona"
                    , thu = "torstaina"
                    , fri = "perjantaina"
                    , sat = "lauantaina"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "K"
                    , thu = "T"
                    , fri = "P"
                    , sat = "L"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "su"
                    , mon = "ma"
                    , tue = "ti"
                    , wed = "ke"
                    , thu = "to"
                    , fri = "pe"
                    , sat = "la"
                    }
                , wide =
                    { sun = "sunnuntai"
                    , mon = "maanantai"
                    , tue = "tiistai"
                    , wed = "keskiviikko"
                    , thu = "torstai"
                    , fri = "perjantai"
                    , sat = "lauantai"
                    }
                , narrow =
                    { sun = "S"
                    , mon = "M"
                    , tue = "T"
                    , wed = "K"
                    , thu = "T"
                    , fri = "P"
                    , sat = "L"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "eKr.", ad = "jKr." }
                , wide =
                    { bc = "ennen Kristuksen syntymää"
                    , ad = "jälkeen Kristuksen syntymän"
                    }
                , narrow = { bc = "eKr", ad = "jKr" }
                }
            , timePatterns =
                { short = "H.mm"
                , medium = "H.mm.ss"
                , long = "H.mm.ss z"
                , full = "H.mm.ss zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} 'klo' {0}"
                , long = "{1} 'klo' {0}"
                , full = "{1} 'klo' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h.mm B" )
                , ( "Bhms", "h.mm.ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h.mm B" )
                , ( "EBhms", "E h.mm.ss B" )
                , ( "Ed", "E d." )
                , ( "Ehm", "E h.mm a" )
                , ( "EHm", "E H.mm" )
                , ( "Ehms", "E h.mm.ss a" )
                , ( "EHms", "E H.mm.ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "M.d.y G" )
                , ( "GyMMM", "LLL y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E d. MMM y G" )
                , ( "GyMMMMd", "d. MMMM y G" )
                , ( "GyMMMMEd", "E d. MMMM y G" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "hm", "h.mm a" )
                , ( "Hm", "H.mm" )
                , ( "hms", "h.mm.ss a" )
                , ( "Hms", "H.mm.ss" )
                , ( "hmsv", "h.mm.ss a v" )
                , ( "Hmsv", "H.mm.ss v" )
                , ( "hmv", "h.mm a v" )
                , ( "Hmv", "H.mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E d.M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "ccc d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMEd", "ccc d. MMMM" )
                , ( "MMMMW-count-one", "LLLL'n' W. 'viikko'" )
                , ( "MMMMW-count-other", "LLLL'n' W. 'viikko'" )
                , ( "ms", "m.ss" )
                , ( "y", "y" )
                , ( "yM", "L.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E d.M.y" )
                , ( "yMM", "M.y" )
                , ( "yMMM", "LLL y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E d. MMM y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yMMMMccccd", "cccc d. MMMM y" )
                , ( "yMMMMd", "d. MMMM y" )
                , ( "yMMMMEd", "E d. MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "'vuoden' Y 'viikko' w" )
                , ( "yw-count-other", "'vuoden' Y 'viikko' w" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
