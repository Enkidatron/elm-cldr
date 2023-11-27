module Generated.Zu exposing (zu)

{-|

@docs zu

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "zu"
          , [ Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
zu : Internal.Locale.Locale
zu =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "zu||||AM|PM|7|afternoon1|emini|am|AM|evening1|ntambama|morning1|entathakusa|morning2|ekuseni|night1|ebusuku|pm|PM|AM|PM|7|afternoon1|emini|am|AM|evening1|ntambama|morning1|entathakusa|morning2|ekuseni|night1|ebusuku|pm|PM|a|p|7|afternoon1|emini|am|a|evening1|ntambama|morning1|entathakusa|morning2|ekuseni|night1|ebusuku|pm|p|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mas|Eph|Mey|Jun|Jul|Aga|Sep|Okt|Nov|Dis|Januwari|Februwari|Mashi|Ephreli|Meyi|Juni|Julayi|Agasti|Septhemba|Okthoba|Novemba|Disemba|J|F|M|E|M|J|J|A|S|O|N|D|1|Jan|Feb|Mas|Eph|Mey|Jun|Jul|Aga|Sep|Okt|Nov|Dis|Januwari|Februwari|Mashi|Ephreli|Meyi|Juni|Julayi|Agasti|Septhemba|Okthoba|Novemba|Disemba|J|F|M|A|M|J|J|A|S|O|N|D|Son|Mso|Bil|Tha|Sin|Hla|Mgq|ISonto|UMsombuluko|ULwesibili|ULwesithathu|ULwesine|ULwesihlanu|UMgqibelo|S|M|B|T|S|H|M|0|BC|AD|BC|AD|BC|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|47|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
