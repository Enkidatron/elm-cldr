module Generated.Ko exposing (ko, ko_KP)

{-|

@docs ko, ko_KP

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.Structures


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ko"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 3, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 M월 d일
  - Full : y년 M월 d일 EEEE

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h시 m분 s초 z
  - Full : a h시 m분 s초 zzzz

-}
ko : Internal.Locale.Locale
ko =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ko"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "오후" )
                            , ( "evening1", "저녁" )
                            , ( "midnight", "자정" )
                            , ( "morning1", "새벽" )
                            , ( "morning2", "오전" )
                            , ( "night1", "밤" )
                            , ( "noon", "정오" )
                            ]
                    }
                , wide =
                    { am = "오전"
                    , pm = "오후"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "오후" )
                            , ( "evening1", "저녁" )
                            , ( "midnight", "자정" )
                            , ( "morning1", "새벽" )
                            , ( "morning2", "오전" )
                            , ( "night1", "밤" )
                            , ( "noon", "정오" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "오후" )
                            , ( "evening1", "저녁" )
                            , ( "midnight", "자정" )
                            , ( "morning1", "새벽" )
                            , ( "morning2", "오전" )
                            , ( "night1", "밤" )
                            , ( "noon", "정오" )
                            ]
                    }
                }
            , datePatterns =
                { short = "yy. M. d."
                , medium = "y. M. d."
                , long = "y년 M월 d일"
                , full = "y년 M월 d일 EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                , wide =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                , narrow =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                , wide =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                , narrow =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "일"
                    , mon = "월"
                    , tue = "화"
                    , wed = "수"
                    , thu = "목"
                    , fri = "금"
                    , sat = "토"
                    }
                , wide =
                    { sun = "일요일"
                    , mon = "월요일"
                    , tue = "화요일"
                    , wed = "수요일"
                    , thu = "목요일"
                    , fri = "금요일"
                    , sat = "토요일"
                    }
                , narrow =
                    { sun = "일"
                    , mon = "월"
                    , tue = "화"
                    , wed = "수"
                    , thu = "목"
                    , fri = "금"
                    , sat = "토"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "일"
                    , mon = "월"
                    , tue = "화"
                    , wed = "수"
                    , thu = "목"
                    , fri = "금"
                    , sat = "토"
                    }
                , wide =
                    { sun = "일요일"
                    , mon = "월요일"
                    , tue = "화요일"
                    , wed = "수요일"
                    , thu = "목요일"
                    , fri = "금요일"
                    , sat = "토요일"
                    }
                , narrow =
                    { sun = "일"
                    , mon = "월"
                    , tue = "화"
                    , wed = "수"
                    , thu = "목"
                    , fri = "금"
                    , sat = "토"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "기원전", ad = "서기" }
                , narrow = { bc = "BC", ad = "AD" }
                }
            , timePatterns =
                { short = "a h:mm"
                , medium = "a h:mm:ss"
                , long = "a h시 m분 s초 z"
                , full = "a h시 m분 s초 zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h시" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d일" )
                , ( "E", "ccc" )
                , ( "EBhm", "(E) B h:mm" )
                , ( "EBhms", "(E) B h:mm:ss" )
                , ( "Ed", "d일 (E)" )
                , ( "EEEEd", "d일 EEEE" )
                , ( "Ehm", "(E) a h:mm" )
                , ( "EHm", "(E) HH:mm" )
                , ( "Ehms", "(E) a h:mm:ss" )
                , ( "EHms", "(E) HH:mm:ss" )
                , ( "Gy", "G y년" )
                , ( "GyMd", "GGGGG y/M/d" )
                , ( "GyMMM", "G y년 MMM" )
                , ( "GyMMMd", "G y년 MMM d일" )
                , ( "GyMMMEd", "G y년 MMM d일 (E)" )
                , ( "GyMMMEEEEd", "G y년 MMM d일 EEEE" )
                , ( "h", "a h시" )
                , ( "H", "H시" )
                , ( "HHmmss", "HH:mm:ss" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "H시 m분 s초" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "H시 m분 s초 v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "M월" )
                , ( "Md", "M. d." )
                , ( "MEd", "M. d. (E)" )
                , ( "MEEEEd", "M. d. EEEE" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d일" )
                , ( "MMMEd", "MMM d일 (E)" )
                , ( "MMMEEEEd", "MMM d일 EEEE" )
                , ( "MMMMd", "MMMM d일" )
                , ( "MMMMW-count-other", "MMMM W번째 주" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y년" )
                , ( "yM", "y. M." )
                , ( "yMd", "y. M. d." )
                , ( "yMEd", "y. M. d. (E)" )
                , ( "yMEEEEd", "y. M. d. EEEE" )
                , ( "yMM", "y. M." )
                , ( "yMMM", "y년 MMM" )
                , ( "yMMMd", "y년 MMM d일" )
                , ( "yMMMEd", "y년 MMM d일 (E)" )
                , ( "yMMMEEEEd", "y년 MMM d일 EEEE" )
                , ( "yMMMM", "y년 MMMM" )
                , ( "yQQQ", "y년 QQQ" )
                , ( "yQQQQ", "y년 QQQQ" )
                , ( "yw-count-other", "Y년 w번째 주" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmsz"
                , full = "ahmszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 M월 d일
  - Full : y년 M월 d일 EEEE

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h시 m분 s초 z
  - Full : a h시 m분 s초 zzzz

-}
ko_KP : Internal.Locale.Locale
ko_KP =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "ko"
            , script = Nothing
            , territory = Just "KP"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "오후" )
                            , ( "evening1", "저녁" )
                            , ( "midnight", "자정" )
                            , ( "morning1", "새벽" )
                            , ( "morning2", "오전" )
                            , ( "night1", "밤" )
                            , ( "noon", "정오" )
                            ]
                    }
                , wide =
                    { am = "오전"
                    , pm = "오후"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "오후" )
                            , ( "evening1", "저녁" )
                            , ( "midnight", "자정" )
                            , ( "morning1", "새벽" )
                            , ( "morning2", "오전" )
                            , ( "night1", "밤" )
                            , ( "noon", "정오" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "오후" )
                            , ( "evening1", "저녁" )
                            , ( "midnight", "자정" )
                            , ( "morning1", "새벽" )
                            , ( "morning2", "오전" )
                            , ( "night1", "밤" )
                            , ( "noon", "정오" )
                            ]
                    }
                }
            , datePatterns =
                { short = "yy. M. d."
                , medium = "y. M. d."
                , long = "y년 M월 d일"
                , full = "y년 M월 d일 EEEE"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                , wide =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                , narrow =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                , wide =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                , narrow =
                    { jan = "1월"
                    , feb = "2월"
                    , mar = "3월"
                    , apr = "4월"
                    , may = "5월"
                    , jun = "6월"
                    , jul = "7월"
                    , aug = "8월"
                    , sep = "9월"
                    , oct = "10월"
                    , nov = "11월"
                    , dec = "12월"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "일"
                    , mon = "월"
                    , tue = "화"
                    , wed = "수"
                    , thu = "목"
                    , fri = "금"
                    , sat = "토"
                    }
                , wide =
                    { sun = "일요일"
                    , mon = "월요일"
                    , tue = "화요일"
                    , wed = "수요일"
                    , thu = "목요일"
                    , fri = "금요일"
                    , sat = "토요일"
                    }
                , narrow =
                    { sun = "일"
                    , mon = "월"
                    , tue = "화"
                    , wed = "수"
                    , thu = "목"
                    , fri = "금"
                    , sat = "토"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "일"
                    , mon = "월"
                    , tue = "화"
                    , wed = "수"
                    , thu = "목"
                    , fri = "금"
                    , sat = "토"
                    }
                , wide =
                    { sun = "일요일"
                    , mon = "월요일"
                    , tue = "화요일"
                    , wed = "수요일"
                    , thu = "목요일"
                    , fri = "금요일"
                    , sat = "토요일"
                    }
                , narrow =
                    { sun = "일"
                    , mon = "월"
                    , tue = "화"
                    , wed = "수"
                    , thu = "목"
                    , fri = "금"
                    , sat = "토"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "BC", ad = "AD" }
                , wide = { bc = "기원전", ad = "서기" }
                , narrow = { bc = "BC", ad = "AD" }
                }
            , timePatterns =
                { short = "a h:mm"
                , medium = "a h:mm:ss"
                , long = "a h시 m분 s초 z"
                , full = "a h시 m분 s초 zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "B h시" )
                , ( "Bhm", "B h:mm" )
                , ( "Bhms", "B h:mm:ss" )
                , ( "d", "d일" )
                , ( "E", "ccc" )
                , ( "EBhm", "(E) B h:mm" )
                , ( "EBhms", "(E) B h:mm:ss" )
                , ( "Ed", "d일 (E)" )
                , ( "EEEEd", "d일 EEEE" )
                , ( "Ehm", "(E) a h:mm" )
                , ( "EHm", "(E) HH:mm" )
                , ( "Ehms", "(E) a h:mm:ss" )
                , ( "EHms", "(E) HH:mm:ss" )
                , ( "Gy", "G y년" )
                , ( "GyMd", "GGGGG y/M/d" )
                , ( "GyMMM", "G y년 MMM" )
                , ( "GyMMMd", "G y년 MMM d일" )
                , ( "GyMMMEd", "G y년 MMM d일 (E)" )
                , ( "GyMMMEEEEd", "G y년 MMM d일 EEEE" )
                , ( "h", "a h시" )
                , ( "H", "H시" )
                , ( "HHmmss", "HH:mm:ss" )
                , ( "hm", "a h:mm" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "a h:mm:ss" )
                , ( "Hms", "H시 m분 s초" )
                , ( "hmsv", "a h:mm:ss v" )
                , ( "Hmsv", "H시 m분 s초 v" )
                , ( "hmv", "a h:mm v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "M월" )
                , ( "Md", "M. d." )
                , ( "MEd", "M. d. (E)" )
                , ( "MEEEEd", "M. d. EEEE" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "MMM d일" )
                , ( "MMMEd", "MMM d일 (E)" )
                , ( "MMMEEEEd", "MMM d일 EEEE" )
                , ( "MMMMd", "MMMM d일" )
                , ( "MMMMW-count-other", "MMMM W번째 주" )
                , ( "mmss", "mm:ss" )
                , ( "ms", "mm:ss" )
                , ( "y", "y년" )
                , ( "yM", "y. M." )
                , ( "yMd", "y. M. d." )
                , ( "yMEd", "y. M. d. (E)" )
                , ( "yMEEEEd", "y. M. d. EEEE" )
                , ( "yMM", "y. M." )
                , ( "yMMM", "y년 MMM" )
                , ( "yMMMd", "y년 MMM d일" )
                , ( "yMMMEd", "y년 MMM d일 (E)" )
                , ( "yMMMEEEEd", "y년 MMM d일 EEEE" )
                , ( "yMMMM", "y년 MMMM" )
                , ( "yQQQ", "y년 QQQ" )
                , ( "yQQQQ", "y년 QQQQ" )
                , ( "yw-count-other", "Y년 w번째 주" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmsz"
                , full = "ahmszzzz"
                }
            }
        )
