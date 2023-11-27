module Generated.Eu exposing (eu)

{-|

@docs eu

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "eu"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : yy/M/d
  - Medium : y('e')'ko' MMM d('a')
  - Long : y('e')'ko' MMMM'ren' d('a')
  - Full : y('e')'ko' MMMM'ren' d('a'), EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss (z)
  - Full : HH:mm:ss (zzzz)

-}
eu : Internal.Locale.Locale
eu =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "eu||||AM|PM|9|afternoon1|eguerd.|afternoon2|arrats.|am|AM|evening1|iluntz.|midnight|gauerdia|morning1|goizald.|morning2|goizeko|night1|gaueko|pm|PM|AM|PM|9|afternoon1|eguerdiko|afternoon2|arratsaldeko|am|AM|evening1|iluntzeko|midnight|gauerdia|morning1|goizaldeko|morning2|goizeko|night1|gaueko|pm|PM|g|a|9|afternoon1|eguerd.|afternoon2|arrats.|am|g|evening1|iluntz.|midnight|gauerd.|morning1|goizald.|morning2|goizeko|night1|gaueko|pm|a|yy/M/d|y('e')'ko' MMM d('a')|y('e')'ko' MMMM'ren' d('a')|y('e')'ko' MMMM'ren' d('a'), EEEE|urt.|ots.|mar.|api.|mai.|eka.|uzt.|abu.|ira.|urr.|aza.|abe.|urtarrila|otsaila|martxoa|apirila|maiatza|ekaina|uztaila|abuztua|iraila|urria|azaroa|abendua|U|O|M|A|M|E|U|A|I|U|A|A|0|ig.|al.|ar.|az.|og.|or.|lr.|igandea|astelehena|asteartea|asteazkena|osteguna|ostirala|larunbata|I|A|A|A|O|O|L|0|K.a.|K.o.|K.a.|Kristo ondoren|a|o|HH:mm|HH:mm:ss|HH:mm:ss (z)|HH:mm:ss (zzzz)|{1} ({0})|{1} ({0})|{1} ({0})|{1} ({0})|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d, E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y. 'urteko' MMM|GyMMMd|G y. 'urteko' MMM d('a')|GyMMMEd|G y. 'urteko' MMM d('a'), E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|M/d, E|MMM|LLL|MMMd|MMM d('a')|MMMEd|MMM d('a'), E|MMMMd|MMMM'ren' d('a')|MMMMW-count-one|MMMM'ren' W. 'astea'|MMMMW-count-other|MMMM'ren' W. 'astea'|ms|mm:ss|y|y|yM|y/M|yMd|y/M/d|yMEd|y/M/d, E|yMMM|y MMM|yMMMd|y MMM d('a')|yMMMEd|y MMM d('a'), E|yMMMM|y('e')'ko' MMMM|yMMMMd|y('e')'ko' MMMM'ren' d('a')|yMMMMEd|y('e')'ko' MMMM'ren' d('a'), E|yQQQ|y('e')'ko' QQQ|yQQQQ|y('e')'ko' QQQQ|yw-count-one|Y. 'urteko' w. 'astea'|yw-count-other|Y. 'urteko' w. 'astea'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
