module Generated.Hu exposing (hu)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "hu"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 9, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 9, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "night2"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : y. MM. dd.
  - Medium : y. MMM d.
  - Long : y. MMMM d.
  - Full : y. MMMM d., EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
hu : Internal.Locale.Locale
hu =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "hu"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "de."
                    , pm = "du."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "du." )
                            , ( "evening1", "este" )
                            , ( "midnight", "éjfél" )
                            , ( "morning1", "reggel" )
                            , ( "morning2", "de." )
                            , ( "night1", "éjjel" )
                            , ( "night2", "hajnal" )
                            , ( "noon", "dél" )
                            ]
                    }
                , wide =
                    { am = "de."
                    , pm = "du."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "délután" )
                            , ( "evening1", "este" )
                            , ( "midnight", "éjfél" )
                            , ( "morning1", "reggel" )
                            , ( "morning2", "délelőtt" )
                            , ( "night1", "éjjel" )
                            , ( "night2", "hajnal" )
                            , ( "noon", "dél" )
                            ]
                    }
                , narrow =
                    { am = "de."
                    , pm = "du."
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "du." )
                            , ( "evening1", "este" )
                            , ( "midnight", "éjfél" )
                            , ( "morning1", "reggel" )
                            , ( "morning2", "de." )
                            , ( "night1", "éjjel" )
                            , ( "night2", "hajnal" )
                            , ( "noon", "dél" )
                            ]
                    }
                }
            , datePatterns =
                { short = "y. MM. dd."
                , medium = "y. MMM d."
                , long = "y. MMMM d."
                , full = "y. MMMM d., EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "febr."
                    , mar = "márc."
                    , apr = "ápr."
                    , may = "máj."
                    , jun = "jún."
                    , jul = "júl."
                    , aug = "aug."
                    , sep = "szept."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "január"
                    , feb = "február"
                    , mar = "március"
                    , apr = "április"
                    , may = "május"
                    , jun = "június"
                    , jul = "július"
                    , aug = "augusztus"
                    , sep = "szeptember"
                    , oct = "október"
                    , nov = "november"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "Á"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "Sz"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "jan."
                    , feb = "febr."
                    , mar = "márc."
                    , apr = "ápr."
                    , may = "máj."
                    , jun = "jún."
                    , jul = "júl."
                    , aug = "aug."
                    , sep = "szept."
                    , oct = "okt."
                    , nov = "nov."
                    , dec = "dec."
                    }
                , wide =
                    { jan = "január"
                    , feb = "február"
                    , mar = "március"
                    , apr = "április"
                    , may = "május"
                    , jun = "június"
                    , jul = "július"
                    , aug = "augusztus"
                    , sep = "szeptember"
                    , oct = "október"
                    , nov = "november"
                    , dec = "december"
                    }
                , narrow =
                    { jan = "J"
                    , feb = "F"
                    , mar = "M"
                    , apr = "Á"
                    , may = "M"
                    , jun = "J"
                    , jul = "J"
                    , aug = "A"
                    , sep = "Sz"
                    , oct = "O"
                    , nov = "N"
                    , dec = "D"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "V"
                    , mon = "H"
                    , tue = "K"
                    , wed = "Sze"
                    , thu = "Cs"
                    , fri = "P"
                    , sat = "Szo"
                    }
                , wide =
                    { sun = "vasárnap"
                    , mon = "hétfő"
                    , tue = "kedd"
                    , wed = "szerda"
                    , thu = "csütörtök"
                    , fri = "péntek"
                    , sat = "szombat"
                    }
                , narrow =
                    { sun = "V"
                    , mon = "H"
                    , tue = "K"
                    , wed = "Sz"
                    , thu = "Cs"
                    , fri = "P"
                    , sat = "Sz"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "V"
                    , mon = "H"
                    , tue = "K"
                    , wed = "Sze"
                    , thu = "Cs"
                    , fri = "P"
                    , sat = "Szo"
                    }
                , wide =
                    { sun = "vasárnap"
                    , mon = "hétfő"
                    , tue = "kedd"
                    , wed = "szerda"
                    , thu = "csütörtök"
                    , fri = "péntek"
                    , sat = "szombat"
                    }
                , narrow =
                    { sun = "V"
                    , mon = "H"
                    , tue = "K"
                    , wed = "Sz"
                    , thu = "Cs"
                    , fri = "P"
                    , sat = "Sz"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "i. e.", ad = "i. sz." }
                , wide =
                    { bc = "Krisztus előtt", ad = "időszámításunk szerint" }
                , narrow = { bc = "ie.", ad = "isz." }
                }
            , timePatterns =
                { short = "H:mm"
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
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d., E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y." )
                , ( "GyMd", "GGGGG y. MM. dd." )
                , ( "GyMMM", "G y. MMM" )
                , ( "GyMMMd", "G y. MMM d." )
                , ( "GyMMMEd", "G y. MMM d., E" )
                , ( "h", "a h" )
                , ( "H", "H" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "H:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "H:mm:ss" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "M. d." )
                , ( "MEd", "M. d., E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d." )
                , ( "MMMEd", "MMM d., E" )
                , ( "MMMMd", "MMMM d." )
                , ( "MMMMW-count-one", "MMMM W. 'hete'" )
                , ( "MMMMW-count-other", "MMMM W. 'hete'" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y." )
                , ( "yM", "y. M." )
                , ( "yMd", "y. MM. dd." )
                , ( "yMEd", "y. MM. dd., E" )
                , ( "yMMM", "y. MMM" )
                , ( "yMMMd", "y. MMM d." )
                , ( "yMMMEd", "y. MMM d., E" )
                , ( "yMMMM", "y. MMMM" )
                , ( "yQQQ", "y. QQQ" )
                , ( "yQQQQ", "y. QQQQ" )
                , ( "yw-count-one", "Y w. 'hete'" )
                , ( "yw-count-other", "Y w. 'hete'" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmmssz"
                , full = "Hmmsszzzz"
                }
            }
        )
