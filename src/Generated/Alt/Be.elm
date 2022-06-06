module Generated.Alt.Be exposing (be, be_TARASK)

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
    Dict.fromList []


{-| Date format strings:

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be : Internal.Locale.Locale
be =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "be"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                , wide = { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                , narrow =
                    { am = "am", pm = "pm", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "d.MM.yy"
                , medium = "d MMM y 'г'."
                , long = "d MMMM y 'г'."
                , full = "EEEE, d MMMM y 'г'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "сту"
                    , feb = "лют"
                    , mar = "сак"
                    , apr = "кра"
                    , may = "мая"
                    , jun = "чэр"
                    , jul = "ліп"
                    , aug = "жні"
                    , sep = "вер"
                    , oct = "кас"
                    , nov = "ліс"
                    , dec = "сне"
                    }
                , wide =
                    { jan = "студзеня"
                    , feb = "лютага"
                    , mar = "сакавіка"
                    , apr = "красавіка"
                    , may = "мая"
                    , jun = "чэрвеня"
                    , jul = "ліпеня"
                    , aug = "жніўня"
                    , sep = "верасня"
                    , oct = "кастрычніка"
                    , nov = "лістапада"
                    , dec = "снежня"
                    }
                , narrow =
                    { jan = "с"
                    , feb = "л"
                    , mar = "с"
                    , apr = "к"
                    , may = "м"
                    , jun = "ч"
                    , jul = "л"
                    , aug = "ж"
                    , sep = "в"
                    , oct = "к"
                    , nov = "л"
                    , dec = "с"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "сту"
                    , feb = "лют"
                    , mar = "сак"
                    , apr = "кра"
                    , may = "май"
                    , jun = "чэр"
                    , jul = "ліп"
                    , aug = "жні"
                    , sep = "вер"
                    , oct = "кас"
                    , nov = "ліс"
                    , dec = "сне"
                    }
                , wide =
                    { jan = "студзень"
                    , feb = "люты"
                    , mar = "сакавік"
                    , apr = "красавік"
                    , may = "май"
                    , jun = "чэрвень"
                    , jul = "ліпень"
                    , aug = "жнівень"
                    , sep = "верасень"
                    , oct = "кастрычнік"
                    , nov = "лістапад"
                    , dec = "снежань"
                    }
                , narrow =
                    { jan = "с"
                    , feb = "л"
                    , mar = "с"
                    , apr = "к"
                    , may = "м"
                    , jun = "ч"
                    , jul = "л"
                    , aug = "ж"
                    , sep = "в"
                    , oct = "к"
                    , nov = "л"
                    , dec = "с"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "нд"
                    , mon = "пн"
                    , tue = "аў"
                    , wed = "ср"
                    , thu = "чц"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "нядзеля"
                    , mon = "панядзелак"
                    , tue = "аўторак"
                    , wed = "серада"
                    , thu = "чацвер"
                    , fri = "пятніца"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "а"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "нд"
                    , mon = "пн"
                    , tue = "аў"
                    , wed = "ср"
                    , thu = "чц"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "нядзеля"
                    , mon = "панядзелак"
                    , tue = "аўторак"
                    , wed = "серада"
                    , thu = "чацвер"
                    , fri = "пятніца"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "а"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "да н.э.", ad = "н.э." }
                , wide =
                    { bc = "да нараджэння Хрыстова"
                    , ad = "ад нараджэння Хрыстова"
                    }
                , narrow = { bc = "да н.э.", ad = "н.э." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss, zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'у' {0}"
                , full = "{1} 'у' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "d, E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y 'г'. G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "LLL y 'г'. G" )
                , ( "GyMMMd", "d MMM y 'г'. G" )
                , ( "GyMMMEd", "E, d MMM y 'г'. G" )
                , ( "h", "hh a" )
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
                , ( "Md", "d.M" )
                , ( "MEd", "E, d.M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "W 'тыдзень' MMMM" )
                , ( "MMMMW-count-few", "W 'тыдзень' MMMM" )
                , ( "MMMMW-count-many", "W 'тыдзень' MMMM" )
                , ( "MMMMW-count-other", "W 'тыдзень' MMMM" )
                , ( "ms", "mm.ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "LLL y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "w 'тыдзень' Y" )
                , ( "yw-count-few", "w 'тыдзень' Y" )
                , ( "yw-count-many", "w 'тыдзень' Y" )
                , ( "yw-count-other", "w 'тыдзень' Y" )
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

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be_TARASK : Internal.Locale.Locale
be_TARASK =
    Maybe.withDefault
        Internal.LanguageInfo.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "be"
            , script = Nothing
            , territory = Nothing
            , variant = Just "TARASK"
            , periodNames =
                { abbreviated =
                    { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                , wide = { am = "AM", pm = "PM", dayPeriods = Dict.fromList [] }
                , narrow =
                    { am = "am", pm = "pm", dayPeriods = Dict.fromList [] }
                }
            , datePatterns =
                { short = "d.MM.yy"
                , medium = "d MMM y 'г'."
                , long = "d MMMM y 'г'."
                , full = "EEEE, d MMMM y 'г'."
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "сту"
                    , feb = "лют"
                    , mar = "сак"
                    , apr = "кра"
                    , may = "мая"
                    , jun = "чэр"
                    , jul = "ліп"
                    , aug = "жні"
                    , sep = "вер"
                    , oct = "кас"
                    , nov = "ліс"
                    , dec = "сне"
                    }
                , wide =
                    { jan = "студзеня"
                    , feb = "лютага"
                    , mar = "сакавіка"
                    , apr = "красавіка"
                    , may = "мая"
                    , jun = "чэрвеня"
                    , jul = "ліпеня"
                    , aug = "жніўня"
                    , sep = "верасня"
                    , oct = "кастрычніка"
                    , nov = "лістапада"
                    , dec = "снежня"
                    }
                , narrow =
                    { jan = "с"
                    , feb = "л"
                    , mar = "с"
                    , apr = "к"
                    , may = "м"
                    , jun = "ч"
                    , jul = "л"
                    , aug = "ж"
                    , sep = "в"
                    , oct = "к"
                    , nov = "л"
                    , dec = "с"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "сту"
                    , feb = "лют"
                    , mar = "сак"
                    , apr = "кра"
                    , may = "май"
                    , jun = "чэр"
                    , jul = "ліп"
                    , aug = "жні"
                    , sep = "вер"
                    , oct = "кас"
                    , nov = "ліс"
                    , dec = "сне"
                    }
                , wide =
                    { jan = "студзень"
                    , feb = "люты"
                    , mar = "сакавік"
                    , apr = "красавік"
                    , may = "май"
                    , jun = "чэрвень"
                    , jul = "ліпень"
                    , aug = "жнівень"
                    , sep = "верасень"
                    , oct = "кастрычнік"
                    , nov = "лістапад"
                    , dec = "снежань"
                    }
                , narrow =
                    { jan = "с"
                    , feb = "л"
                    , mar = "с"
                    , apr = "к"
                    , may = "м"
                    , jun = "ч"
                    , jul = "л"
                    , aug = "ж"
                    , sep = "в"
                    , oct = "к"
                    , nov = "л"
                    , dec = "с"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "нд"
                    , mon = "пн"
                    , tue = "аў"
                    , wed = "ср"
                    , thu = "чц"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "нядзеля"
                    , mon = "панядзелак"
                    , tue = "аўторак"
                    , wed = "серада"
                    , thu = "чацвер"
                    , fri = "пятніца"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "а"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "нд"
                    , mon = "пн"
                    , tue = "аў"
                    , wed = "ср"
                    , thu = "чц"
                    , fri = "пт"
                    , sat = "сб"
                    }
                , wide =
                    { sun = "нядзеля"
                    , mon = "панядзелак"
                    , tue = "аўторак"
                    , wed = "серада"
                    , thu = "чацвер"
                    , fri = "пятніца"
                    , sat = "субота"
                    }
                , narrow =
                    { sun = "н"
                    , mon = "п"
                    , tue = "а"
                    , wed = "с"
                    , thu = "ч"
                    , fri = "п"
                    , sat = "с"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "да н.э.", ad = "н.э." }
                , wide =
                    { bc = "да нараджэння Хрыстова"
                    , ad = "ад нараджэння Хрыстова"
                    }
                , narrow = { bc = "да н.э.", ad = "н.э." }
                }
            , timePatterns =
                { short = "HH:mm"
                , medium = "HH:mm:ss"
                , long = "HH:mm:ss z"
                , full = "HH:mm:ss, zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1} 'у' {0}"
                , full = "{1} 'у' {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "d, E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y 'г'. G" )
                , ( "GyMd", "dd.MM.y GGGGG" )
                , ( "GyMMM", "LLL y 'г'. G" )
                , ( "GyMMMd", "d MMM y 'г'. G" )
                , ( "GyMMMEd", "E, d MMM y 'г'. G" )
                , ( "h", "hh a" )
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
                , ( "Md", "d.M" )
                , ( "MEd", "E, d.M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E, d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E, d MMMM" )
                , ( "MMMMW-count-one", "W 'тыдзень' MMMM" )
                , ( "MMMMW-count-few", "W 'тыдзень' MMMM" )
                , ( "MMMMW-count-many", "W 'тыдзень' MMMM" )
                , ( "MMMMW-count-other", "W 'тыдзень' MMMM" )
                , ( "ms", "mm.ss" )
                , ( "y", "y" )
                , ( "yM", "M.y" )
                , ( "yMd", "d.M.y" )
                , ( "yMEd", "E, d.M.y" )
                , ( "yMMM", "LLL y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "LLLL y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "w 'тыдзень' Y" )
                , ( "yw-count-few", "w 'тыдзень' Y" )
                , ( "yw-count-many", "w 'тыдзень' Y" )
                , ( "yw-count-other", "w 'тыдзень' Y" )
                ]
            , timeSkeletons =
                { short = "HHmm"
                , medium = "HHmmss"
                , long = "HHmmssz"
                , full = "HHmmsszzzz"
                }
            }
        )
