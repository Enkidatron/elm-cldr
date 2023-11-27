module Generated.Uk exposing (uk)

{-|

@docs uk

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "uk"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y 'р'.
  - Long : d MMMM y 'р'.
  - Full : EEEE, d MMMM y 'р'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
uk : Internal.Locale.Locale
uk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "uk||||дп|пп|8|afternoon1|дня|am|дп|evening1|вечора|midnight|опівночі|morning1|ранку|night1|ночі|noon|опівдні|pm|пп|дп|пп|8|afternoon1|дня|am|дп|evening1|вечора|midnight|опівночі|morning1|ранку|night1|ночі|noon|опівдні|pm|пп|дп|пп|8|afternoon1|дня|am|дп|evening1|вечора|midnight|ночі|morning1|ранку|night1|ночі|noon|дня|pm|пп|dd.MM.yy|d MMM y\u{202F}'р'.|d MMMM y\u{202F}'р'.|EEEE, d MMMM y\u{202F}'р'.|січ.|лют.|бер.|квіт.|трав.|черв.|лип.|серп.|вер.|жовт.|лист.|груд.|січня|лютого|березня|квітня|травня|червня|липня|серпня|вересня|жовтня|листопада|грудня|с|л|б|к|т|ч|л|с|в|ж|л|г|1|січ.|лют.|бер.|квіт.|трав.|черв.|лип.|серп.|вер.|жовт.|лист.|груд.|січень|лютий|березень|квітень|травень|червень|липень|серпень|вересень|жовтень|листопад|грудень|С|Л|Б|К|Т|Ч|Л|С|В|Ж|Л|Г|нд|пн|вт|ср|чт|пт|сб|неділю|понеділок|вівторок|середу|четвер|пʼятницю|суботу|Н|П|В|С|Ч|П|С|1|нд|пн|вт|ср|чт|пт|сб|неділя|понеділок|вівторок|середа|четвер|пʼятниця|субота|Н|П|В|С|Ч|П|С|до н. е.|н. е.|до нашої ери|нашої ери|до н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|LLL y\u{202F}'р'. G|GyMMMd|d MMM y\u{202F}'р'. G|GyMMMEd|E, d MMM y\u{202F}'р'. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|LL|Md|dd.MM|MEd|E, dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|W-'й' 'тиж'. MMMM|MMMMW-count-few|W-'й' 'тиж'. MMMM|MMMMW-count-many|W-'й' 'тиж'. MMMM|MMMMW-count-other|W-'й' 'тиж'. MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|E, dd.MM.y|yMMM|LLL y\u{202F}'р'.|yMMMd|d MMM y\u{202F}'р'.|yMMMEd|E, d MMM y\u{202F}'р'.|yMMMM|LLLL y\u{202F}'р'.|yQQQ|QQQ y|yQQQQ|QQQQ y\u{202F}'р'.|yw-count-one|w-'й' 'тиж'. Y 'р'.|yw-count-few|w-'й' 'тиж'. Y 'р'.|yw-count-many|w-'й' 'тиж'. Y 'р'.|yw-count-other|w-'й' 'тиж'. Y 'р'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
