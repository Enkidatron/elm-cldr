module Generated.Alt.Kk exposing (kk)

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
        [ ( "kk"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : y 'ж'. dd MMM
  - Long : y 'ж'. d MMMM
  - Full : y 'ж'. d MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
kk : Internal.Locale.Locale
kk =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "kk"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "түстен кейінгі" )
                            , ( "evening1", "кешкі" )
                            , ( "midnight", "түн жарымы" )
                            , ( "morning1", "таңғы" )
                            , ( "night1", "түнгі" )
                            , ( "noon", "түскі" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "түстен кейінгі" )
                            , ( "evening1", "кешкі" )
                            , ( "midnight", "түн жарымы" )
                            , ( "morning1", "таңғы" )
                            , ( "night1", "түнгі" )
                            , ( "noon", "түскі" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "түстен кейінгі" )
                            , ( "evening1", "кешкі" )
                            , ( "midnight", "түнгі" )
                            , ( "morning1", "таңғы" )
                            , ( "night1", "түнгі" )
                            , ( "noon", "түскі" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "y 'ж'. dd MMM"
                , long = "y 'ж'. d MMMM"
                , full = "y 'ж'. d MMMM, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "қаң."
                    , feb = "ақп."
                    , mar = "нау."
                    , apr = "сәу."
                    , may = "мам."
                    , jun = "мау."
                    , jul = "шіл."
                    , aug = "там."
                    , sep = "қыр."
                    , oct = "қаз."
                    , nov = "қар."
                    , dec = "жел."
                    }
                , wide =
                    { jan = "қаңтар"
                    , feb = "ақпан"
                    , mar = "наурыз"
                    , apr = "сәуір"
                    , may = "мамыр"
                    , jun = "маусым"
                    , jul = "шілде"
                    , aug = "тамыз"
                    , sep = "қыркүйек"
                    , oct = "қазан"
                    , nov = "қараша"
                    , dec = "желтоқсан"
                    }
                , narrow =
                    { jan = "Қ"
                    , feb = "А"
                    , mar = "Н"
                    , apr = "С"
                    , may = "М"
                    , jun = "М"
                    , jul = "Ш"
                    , aug = "Т"
                    , sep = "Қ"
                    , oct = "Қ"
                    , nov = "Қ"
                    , dec = "Ж"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "қаң."
                    , feb = "ақп."
                    , mar = "нау."
                    , apr = "сәу."
                    , may = "мам."
                    , jun = "мау."
                    , jul = "шіл."
                    , aug = "там."
                    , sep = "қыр."
                    , oct = "қаз."
                    , nov = "қар."
                    , dec = "жел."
                    }
                , wide =
                    { jan = "Қаңтар"
                    , feb = "Ақпан"
                    , mar = "Наурыз"
                    , apr = "Сәуір"
                    , may = "Мамыр"
                    , jun = "Маусым"
                    , jul = "Шілде"
                    , aug = "Тамыз"
                    , sep = "Қыркүйек"
                    , oct = "Қазан"
                    , nov = "Қараша"
                    , dec = "Желтоқсан"
                    }
                , narrow =
                    { jan = "Қ"
                    , feb = "А"
                    , mar = "Н"
                    , apr = "С"
                    , may = "М"
                    , jun = "М"
                    , jul = "Ш"
                    , aug = "Т"
                    , sep = "Қ"
                    , oct = "Қ"
                    , nov = "Қ"
                    , dec = "Ж"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "жс"
                    , mon = "дс"
                    , tue = "сс"
                    , wed = "ср"
                    , thu = "бс"
                    , fri = "жм"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "жексенбі"
                    , mon = "дүйсенбі"
                    , tue = "сейсенбі"
                    , wed = "сәрсенбі"
                    , thu = "бейсенбі"
                    , fri = "жұма"
                    , sat = "сенбі"
                    }
                , narrow =
                    { sun = "Ж"
                    , mon = "Д"
                    , tue = "С"
                    , wed = "С"
                    , thu = "Б"
                    , fri = "Ж"
                    , sat = "С"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "жс"
                    , mon = "дс"
                    , tue = "сс"
                    , wed = "ср"
                    , thu = "бс"
                    , fri = "жм"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "жексенбі"
                    , mon = "дүйсенбі"
                    , tue = "сейсенбі"
                    , wed = "сәрсенбі"
                    , thu = "бейсенбі"
                    , fri = "жұма"
                    , sat = "сенбі"
                    }
                , narrow =
                    { sun = "Ж"
                    , mon = "Д"
                    , tue = "С"
                    , wed = "С"
                    , thu = "Б"
                    , fri = "Ж"
                    , sat = "С"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "б.з.д.", ad = "б.з." }
                , wide =
                    { bc = "Біздің заманымызға дейін", ad = "біздің заманымыз" }
                , narrow = { bc = "б.з.д.", ad = "б.з." }
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
                [ ( "Bh", "B h" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E, B h:mm" )
                , ( "EBhms", "E, B h:mm:ss" )
                , ( "Ed", "d, E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y 'ж'." )
                , ( "GyMd", "dd-MM-GGGGG y" )
                , ( "GyMMM", "G y 'ж'. MMM" )
                , ( "GyMMMd", "G y 'ж'. d MMM" )
                , ( "GyMMMEd", "G y 'ж'. d MMM, E" )
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
                , ( "MEd", "dd.MM, E" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "d MMM, E" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-one", "MMMM 'айының' W-'аптасы'" )
                , ( "MMMMW-count-other", "MMMM 'айының' W-'аптасы'" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "dd.MM.y, E" )
                , ( "yMMM", "y 'ж'. MMM" )
                , ( "yMMMd", "y 'ж'. d MMM" )
                , ( "yMMMEd", "y 'ж'. d MMM, E" )
                , ( "yMMMM", "y 'ж'. MMMM" )
                , ( "yQQQ", "y 'ж'. QQQ" )
                , ( "yQQQQ", "y 'ж'. QQQQ" )
                , ( "yw-count-one", "Y 'жылдың' w-'аптасы'" )
                , ( "yw-count-other", "Y 'жылдың' w-'аптасы'" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
