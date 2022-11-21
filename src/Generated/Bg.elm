module Generated.Bg exposing (bg)

{-|

@docs bg

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "bg"
          , [ Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 11, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 11, 0 ) ( 14, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.MM.yy 'г'.
  - Medium : d.MM.y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : H:mm 'ч'.
  - Medium : H:mm:ss 'ч'.
  - Long : H:mm:ss 'ч'. z
  - Full : H:mm:ss 'ч'. zzzz

-}
bg : Internal.Locale.Locale
bg =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "bg||||am|pm|8|afternoon1|следобед|am|am|evening1|вечерта|midnight|полунощ|morning1|сутринта|morning2|на обяд|night1|през нощта|pm|pm|пр.об.|сл.об.|8|afternoon1|следобед|am|пр.об.|evening1|вечерта|midnight|полунощ|morning1|сутринта|morning2|на обяд|night1|през нощта|pm|сл.об.|am|pm|8|afternoon1|следобед|am|am|evening1|вечерта|midnight|полунощ|morning1|сутринта|morning2|на обяд|night1|през нощта|pm|pm|d.MM.yy 'г'.|d.MM.y 'г'.|d MMMM y 'г'.|EEEE, d MMMM y 'г'.|яну|фев|март|апр|май|юни|юли|авг|сеп|окт|ное|дек|януари|февруари|март|април|май|юни|юли|август|септември|октомври|ноември|декември|я|ф|м|а|м|ю|ю|а|с|о|н|д|0|нд|пн|вт|ср|чт|пт|сб|неделя|понеделник|вторник|сряда|четвъртък|петък|събота|н|п|в|с|ч|п|с|0|пр.Хр.|сл.Хр.|преди Христа|след Христа|пр.Хр.|сл.Хр.|H:mm 'ч'.|H:mm:ss 'ч'.|H:mm:ss 'ч'. z|H:mm:ss 'ч'. zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h 'ч'. B|Bhm|h:mm 'ч'. B|Bhms|h:mm:ss 'ч'. B|d|d|E|ccc|EBhm|E, h:mm 'ч'. B|EBhms|E, h:mm:ss 'ч'. B|Ed|E, d|Ehm|E, h:mm 'ч'. a|EHm|E, HH:mm 'ч'.|Ehms|E, h:mm:ss 'ч'. a|EHms|E, HH:mm:ss 'ч'.|Gy|y 'г'. G|GyMd|dd.MM.y 'г'. GGGGG|GyMMM|MM.y 'г'. G|GyMMMd|d.MM.y 'г'. G|GyMMMEd|E, d.MM.y 'г'. G|GyMMMM|MMMM y 'г'. G|GyMMMMd|d MMMM y 'г'. G|GyMMMMEd|E, d MMMM y 'г'. G|h|h 'ч'. a|H|HH 'ч'.|hm|h:mm 'ч'. a|Hm|HH:mm 'ч'.|hms|h:mm:ss 'ч'. a|Hms|HH:mm:ss 'ч'.|hmsv|h:mm:ss 'ч'. a v|Hmsv|HH:mm:ss 'ч'. v|hmv|h:mm 'ч'. a v|Hmv|HH:mm 'ч'. v|M|L|Md|d.MM|MEd|E, d.MM|MMM|MM|MMMd|d.MM|MMMEd|E, d.MM|MMMM|LLLL|MMMMd|d MMMM|MMMMdd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'седмица' W 'от' MMMM|MMMMW-count-other|'седмица' W 'от' MMMM|ms|m:ss|y|y 'г'.|yM|MM.y 'г'.|yMd|d.MM.y 'г'.|yMEd|E, d.MM.y 'г'.|yMMM|MM.y 'г'.|yMMMd|d.MM.y 'г'.|yMMMEd|E, d.MM.y 'г'.|yMMMM|MMMM y 'г'.|yMMMMd|d MMMM y 'г'.|yMMMMEd|E, d MMMM y 'г'.|yQQQ|QQQ y 'г'.|yQQQQ|QQQQ y 'г'.|yw-count-one|'седмица' w 'от' Y 'г'.|yw-count-other|'седмица' w 'от' Y 'г'.|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )
