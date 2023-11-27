module Generated.Hsb exposing (hsb)

{-|

@docs hsb

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.Structures


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d.M.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : H:mm 'hodź'.
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
hsb : Internal.Locale.Locale
hsb =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "hsb"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "dop.", pm = "pop.", dayPeriods = Dict.fromList [] }
                , wide =
                    { am = "dopołdnja"
                    , pm = "popołdnju"
                    , dayPeriods = Dict.fromList []
                    }
                , narrow =
                    { am = "dop.", pm = "pop.", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "d.M.yy"
                , medium = "d.M.y"
                , long = "d. MMMM y"
                , full = "EEEE, d. MMMM y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "feb."
                    , mar = "měr."
                    , apr = "apr."
                    , may = "mej."
                    , jun = "jun."
                    , jul = "jul."
                    , aug = "awg."
                    , sep = "sep."
                    , oct = "okt."
                    , nov = "now."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "januara"
                    , feb = "februara"
                    , mar = "měrca"
                    , apr = "apryla"
                    , may = "meje"
                    , jun = "junija"
                    , jul = "julija"
                    , aug = "awgusta"
                    , sep = "septembra"
                    , oct = "oktobra"
                    , nov = "nowembra"
                    , dec = "decembra"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan"
                    , feb = "feb"
                    , mar = "měr"
                    , apr = "apr"
                    , may = "mej"
                    , jun = "jun"
                    , jul = "jul"
                    , aug = "awg"
                    , sep = "sep"
                    , oct = "okt"
                    , nov = "now"
                    , dec = "dec"
                    }
                , wide =
                    { jan = "januar"
                    , feb = "februar"
                    , mar = "měrc"
                    , apr = "apryl"
                    , may = "meja"
                    , jun = "junij"
                    , jul = "julij"
                    , aug = "awgust"
                    , sep = "september"
                    , oct = "oktober"
                    , nov = "nowember"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "j"
                    , feb = "f"
                    , mar = "m"
                    , apr = "a"
                    , may = "m"
                    , jun = "j"
                    , jul = "j"
                    , aug = "a"
                    , sep = "s"
                    , oct = "o"
                    , nov = "n"
                    , dec = "d"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "nje"
                    , mon = "pón"
                    , tue = "wut"
                    , wed = "srj"
                    , thu = "štw"
                    , fri = "pja"
                    , sat = "sob"
                    }
                , wide =
                    { sun = "njedźela"
                    , mon = "póndźela"
                    , tue = "wutora"
                    , wed = "srjeda"
                    , thu = "štwórtk"
                    , fri = "pjatk"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "w"
                    , wed = "s"
                    , thu = "š"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "nje"
                    , mon = "pón"
                    , tue = "wut"
                    , wed = "srj"
                    , thu = "štw"
                    , fri = "pja"
                    , sat = "sob"
                    }
                , wide =
                    { sun = "njedźela"
                    , mon = "póndźela"
                    , tue = "wutora"
                    , wed = "srjeda"
                    , thu = "štwórtk"
                    , fri = "pjatk"
                    , sat = "sobota"
                    }
                , narrow =
                    { sun = "n"
                    , mon = "p"
                    , tue = "w"
                    , wed = "s"
                    , thu = "š"
                    , fri = "p"
                    , sat = "s"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "př.Chr.n.", ad = "po Chr.n." }
                , wide =
                    { bc = "před Chrystowym narodźenjom"
                    , ad = "po Chrystowym narodźenju"
                    }
                , narrow = { bc = "př.Chr.n.", ad = "po Chr.n." }
                }
            , timePatterns =
                { short = "H:mm 'hodź'."
                , medium = "H:mm:ss"
                , long = "H:mm:ss z"
                , full = "H:mm:ss zzzz"
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
                , ( "d", "d." )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d." )
                , ( "Ehm", "E, h:mm\u{202F}a" )
                , ( "EHm", "E, H:mm 'hodź'." )
                , ( "Ehms", "E, h:mm:ss\u{202F}a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "d.M.y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d. MMM y G" )
                , ( "GyMMMEd", "E, d. MMM y G" )
                , ( "h", "h\u{202F}a" )
                , ( "H", "H 'hodź'." )
                , ( "hm", "h:mm\u{202F}a" )
                , ( "Hm", "H:mm 'hodź'." )
                , ( "hms", "h:mm:ss\u{202F}a" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "H:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "H:mm v" )
                , ( "M", "L" )
                , ( "Md", "d.M." )
                , ( "MEd", "E, d.M." )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d. MMM" )
                , ( "MMMEd", "E, d. MMM" )
                , ( "MMMMd", "d. MMMM" )
                , ( "MMMMW-count-one", "W. 'tydźeń' MMMM" )
                , ( "MMMMW-count-two", "W. 'tydźeń' MMMM" )
                , ( "MMMMW-count-few", "W. 'tydźeń' MMMM" )
                , ( "MMMMW-count-other", "W. 'tydźeń' MMMM" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d. MMM y" )
                , ( "yMMMEd", "E, d. MMM y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "w. 'tydźeń' 'lěta' Y" )
                , ( "yw-count-two", "w. 'tydźeń' 'lěta' Y" )
                , ( "yw-count-few", "w. 'tydźeń' 'lěta' Y" )
                , ( "yw-count-other", "w. 'tydźeń' 'lěta' Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
