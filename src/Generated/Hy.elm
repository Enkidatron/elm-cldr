module Generated.Hy exposing (hy)

import Dict exposing (Dict)
import Internal.DayPeriodRule
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Internal.Parse
import Tagged exposing (Tagged(..))


dayPeriods : Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "hy"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd MMM, y թ.
  - Long : dd MMMM, y թ.
  - Full : y թ. MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
hy : Internal.Locale.Locale
hy =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "hy"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ցերեկը" )
                            , ( "evening1", "երեկոյան" )
                            , ( "midnight", "կեսգիշեր" )
                            , ( "morning1", "առավոտյան" )
                            , ( "night1", "գիշերը" )
                            , ( "noon", "կեսօր" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ցերեկվա" )
                            , ( "evening1", "երեկոյան" )
                            , ( "midnight", "կեսգիշերին" )
                            , ( "morning1", "առավոտյան" )
                            , ( "night1", "գիշերվա" )
                            , ( "noon", "կեսօրին" )
                            ]
                    }
                , narrow =
                    { am = "ա"
                    , pm = "հ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ցրկ" )
                            , ( "evening1", "երկ" )
                            , ( "midnight", "կգ․" )
                            , ( "morning1", "առվ" )
                            , ( "night1", "գշր" )
                            , ( "noon", "կօ․" )
                            ]
                    }
                }
            , datePatterns =
                { short = "dd.MM.yy"
                , medium = "dd MMM, y թ."
                , long = "dd MMMM, y թ."
                , full = "y թ. MMMM d, EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "հնվ"
                    , feb = "փտվ"
                    , mar = "մրտ"
                    , apr = "ապր"
                    , may = "մյս"
                    , jun = "հնս"
                    , jul = "հլս"
                    , aug = "օգս"
                    , sep = "սեպ"
                    , oct = "հոկ"
                    , nov = "նոյ"
                    , dec = "դեկ"
                    }
                , wide =
                    { jan = "հունվարի"
                    , feb = "փետրվարի"
                    , mar = "մարտի"
                    , apr = "ապրիլի"
                    , may = "մայիսի"
                    , jun = "հունիսի"
                    , jul = "հուլիսի"
                    , aug = "օգոստոսի"
                    , sep = "սեպտեմբերի"
                    , oct = "հոկտեմբերի"
                    , nov = "նոյեմբերի"
                    , dec = "դեկտեմբերի"
                    }
                , narrow =
                    { jan = "Հ"
                    , feb = "Փ"
                    , mar = "Մ"
                    , apr = "Ա"
                    , may = "Մ"
                    , jun = "Հ"
                    , jul = "Հ"
                    , aug = "Օ"
                    , sep = "Ս"
                    , oct = "Հ"
                    , nov = "Ն"
                    , dec = "Դ"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "հնվ"
                    , feb = "փտվ"
                    , mar = "մրտ"
                    , apr = "ապր"
                    , may = "մյս"
                    , jun = "հնս"
                    , jul = "հլս"
                    , aug = "օգս"
                    , sep = "սեպ"
                    , oct = "հոկ"
                    , nov = "նոյ"
                    , dec = "դեկ"
                    }
                , wide =
                    { jan = "հունվար"
                    , feb = "փետրվար"
                    , mar = "մարտ"
                    , apr = "ապրիլ"
                    , may = "մայիս"
                    , jun = "հունիս"
                    , jul = "հուլիս"
                    , aug = "օգոստոս"
                    , sep = "սեպտեմբեր"
                    , oct = "հոկտեմբեր"
                    , nov = "նոյեմբեր"
                    , dec = "դեկտեմբեր"
                    }
                , narrow =
                    { jan = "Հ"
                    , feb = "Փ"
                    , mar = "Մ"
                    , apr = "Ա"
                    , may = "Մ"
                    , jun = "Հ"
                    , jul = "Հ"
                    , aug = "Օ"
                    , sep = "Ս"
                    , oct = "Հ"
                    , nov = "Ն"
                    , dec = "Դ"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "կիր"
                    , mon = "երկ"
                    , tue = "երք"
                    , wed = "չրք"
                    , thu = "հնգ"
                    , fri = "ուր"
                    , sat = "շբթ"
                    }
                , wide =
                    { sun = "կիրակի"
                    , mon = "երկուշաբթի"
                    , tue = "երեքշաբթի"
                    , wed = "չորեքշաբթի"
                    , thu = "հինգշաբթի"
                    , fri = "ուրբաթ"
                    , sat = "շաբաթ"
                    }
                , narrow =
                    { sun = "Կ"
                    , mon = "Ե"
                    , tue = "Ե"
                    , wed = "Չ"
                    , thu = "Հ"
                    , fri = "Ո"
                    , sat = "Շ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "կիր"
                    , mon = "երկ"
                    , tue = "երք"
                    , wed = "չրք"
                    , thu = "հնգ"
                    , fri = "ուր"
                    , sat = "շբթ"
                    }
                , wide =
                    { sun = "կիրակի"
                    , mon = "երկուշաբթի"
                    , tue = "երեքշաբթի"
                    , wed = "չորեքշաբթի"
                    , thu = "հինգշաբթի"
                    , fri = "ուրբաթ"
                    , sat = "շաբաթ"
                    }
                , narrow =
                    { sun = "Կ"
                    , mon = "Ե"
                    , tue = "Ե"
                    , wed = "Չ"
                    , thu = "Հ"
                    , fri = "Ո"
                    , sat = "Շ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "մ.թ.ա.", ad = "մ.թ." }
                , wide = { bc = "Քրիստոսից առաջ", ad = "Քրիստոսից հետո" }
                , narrow = { bc = "մ.թ.ա.", ad = "մ.թ." }
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
                [ ( "Bh", "B h-ին" )
                , ( "Bhm", "B h:mm-ին" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E B h:mm-ին" )
                , ( "EBhms", "E B h:mm:ss" )
                , ( "Ed", "d, ccc" )
                , ( "Ehm", "E, h:mm a" )
                , ( "EHm", "E, HH:mm" )
                , ( "Ehms", "E, h:mm:ss a" )
                , ( "EHms", "E, HH:mm:ss" )
                , ( "Gy", "G y թ." )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "G y թ. MMM" )
                , ( "GyMMMd", "d MMM, y թ." )
                , ( "GyMMMEd", "G y թ. MMM d, E" )
                , ( "h", "h a" )
                , ( "H", "H" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "H:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "H:mm:ss" )
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
                , ( "MMMMd", "MMMM d" )
                , ( "MMMMW-count-one", "MMMM W-ին շաբաթ" )
                , ( "MMMMW-count-other", "MMMM W-րդ շաբաթ" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "MM.y" )
                , ( "yMd", "dd.MM.y" )
                , ( "yMEd", "d.MM.y թ., E" )
                , ( "yMMM", "y թ. LLL" )
                , ( "yMMMd", "d MMM, y թ." )
                , ( "yMMMEd", "y թ. MMM d, E" )
                , ( "yMMMM", "y թ․ LLLL" )
                , ( "yQQQ", "y թ. QQQ" )
                , ( "yQQQQ", "y թ. QQQQ" )
                , ( "yw-count-one", "Y թ․ w-ին շաբաթ" )
                , ( "yw-count-other", "Y թ․ w-րդ շաբաթ" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
