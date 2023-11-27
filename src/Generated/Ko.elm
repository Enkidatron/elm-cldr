module Generated.Ko exposing (ko, ko_CN, ko_KP)

{-|

@docs ko, ko_CN, ko_KP

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


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
  - Long : y년 MMMM d일
  - Full : y년 MMMM d일 EEEE

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
            "ko||||AM|PM|9|afternoon1|오후|am|AM|evening1|저녁|midnight|자정|morning1|새벽|morning2|오전|night1|밤|noon|정오|pm|PM|오전|오후|9|afternoon1|오후|am|오전|evening1|저녁|midnight|자정|morning1|새벽|morning2|오전|night1|밤|noon|정오|pm|오후|AM|PM|9|afternoon1|오후|am|AM|evening1|저녁|midnight|자정|morning1|새벽|morning2|오전|night1|밤|noon|정오|pm|PM|yy. M. d.|y. M. d.|y년 MMMM d일|y년 MMMM d일 EEEE|1월|2월|3월|4월|5월|6월|7월|8월|9월|10월|11월|12월|1월|2월|3월|4월|5월|6월|7월|8월|9월|10월|11월|12월|1월|2월|3월|4월|5월|6월|7월|8월|9월|10월|11월|12월|0|일|월|화|수|목|금|토|일요일|월요일|화요일|수요일|목요일|금요일|토요일|일|월|화|수|목|금|토|0|BC|AD|기원전|서기|BC|AD|a h:mm|a h:mm:ss|a h시 m분 s초 z|a h시 m분 s초 zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|B h시|Bhm|B h:mm|Bhms|B h:mm:ss|d|d일|E|ccc|EBhm|(E) B h:mm|EBhms|(E) B h:mm:ss|Ed|d일 (E)|EEEEd|d일 EEEE|Ehm|(E) a h:mm|EHm|(E) HH:mm|Ehms|(E) a h:mm:ss|EHms|(E) HH:mm:ss|Gy|G y년|GyMd|GGGGG y/M/d|GyMMM|G y년 MMM|GyMMMd|G y년 MMM d일|GyMMMEd|G y년 MMM d일 (E)|GyMMMEEEEd|G y년 MMM d일 EEEE|h|a h시|H|H시|HHmmss|HH:mm:ss|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|H시 m분 s초|hmsv|a h:mm:ss v|Hmsv|H시 m분 s초 v|hmv|a h:mm v|Hmv|HH:mm v|M|M월|Md|M. d.|MEd|M. d. (E)|MEEEEd|M. d. EEEE|MMM|LLL|MMMd|MMM d일|MMMEd|MMM d일 (E)|MMMEEEEd|MMM d일 EEEE|MMMMd|MMMM d일|MMMMW-count-other|MMMM W번째 주|mmss|mm:ss|ms|mm:ss|y|y년|yM|y. M.|yMd|y. M. d.|yMEd|y. M. d. (E)|yMEEEEd|y. M. d. EEEE|yMM|y. M.|yMMM|y년 MMM|yMMMd|y년 MMM d일|yMMMEd|y년 MMM d일 (E)|yMMMEEEEd|y년 MMM d일 EEEE|yMMMM|y년 MMMM|yQQQ|y년 QQQ|yQQQQ|y년 QQQQ|yw-count-other|Y년 w번째 주|ahmm|ahmmss|ahmsz|ahmszzzz|"
        )


{-| Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 MMMM d일
  - Full : y년 MMMM d일 EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
ko_CN : Internal.Locale.Locale
ko_CN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ko||CN||AM|PM|9|afternoon1|오후|am|AM|evening1|저녁|midnight|자정|morning1|새벽|morning2|오전|night1|밤|noon|정오|pm|PM|오전|오후|9|afternoon1|오후|am|오전|evening1|저녁|midnight|자정|morning1|새벽|morning2|오전|night1|밤|noon|정오|pm|오후|AM|PM|9|afternoon1|오후|am|AM|evening1|저녁|midnight|자정|morning1|새벽|morning2|오전|night1|밤|noon|정오|pm|PM|yy. M. d.|y. M. d.|y년 MMMM d일|y년 MMMM d일 EEEE|1월|2월|3월|4월|5월|6월|7월|8월|9월|10월|11월|12월|1월|2월|3월|4월|5월|6월|7월|8월|9월|10월|11월|12월|1월|2월|3월|4월|5월|6월|7월|8월|9월|10월|11월|12월|0|일|월|화|수|목|금|토|일요일|월요일|화요일|수요일|목요일|금요일|토요일|일|월|화|수|목|금|토|0|BC|AD|기원전|서기|BC|AD|HH:mm|HH:mm:ss|z HH:mm:ss|zzzz HH:mm:ss|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|B h시|Bhm|B h:mm|Bhms|B h:mm:ss|d|d일|E|ccc|EBhm|(E) B h:mm|EBhms|(E) B h:mm:ss|Ed|d일 (E)|EEEEd|d일 EEEE|Ehm|(E) a h:mm|EHm|(E) HH:mm|Ehms|(E) a h:mm:ss|EHms|(E) HH:mm:ss|Gy|G y년|GyMd|GGGGG y/M/d|GyMMM|G y년 MMM|GyMMMd|G y년 MMM d일|GyMMMEd|G y년 MMM d일 (E)|GyMMMEEEEd|G y년 MMM d일 EEEE|h|a h시|H|H시|HHmmss|HH:mm:ss|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|H시 m분 s초|hmsv|a h:mm:ss v|Hmsv|H시 m분 s초 v|hmv|a h:mm v|Hmv|HH:mm v|M|M월|Md|M. d.|MEd|M. d. (E)|MEEEEd|M. d. EEEE|MMM|LLL|MMMd|MMM d일|MMMEd|MMM d일 (E)|MMMEEEEd|MMM d일 EEEE|MMMMd|MMMM d일|MMMMW-count-other|MMMM W번째 주|mmss|mm:ss|ms|mm:ss|y|y년|yM|y. M.|yMd|y. M. d.|yMEd|y. M. d. (E)|yMEEEEd|y. M. d. EEEE|yMM|y. M.|yMMM|y년 MMM|yMMMd|y년 MMM d일|yMMMEd|y년 MMM d일 (E)|yMMMEEEEd|y년 MMM d일 EEEE|yMMMM|y년 MMMM|yQQQ|y년 QQQ|yQQQQ|y년 QQQQ|yw-count-other|Y년 w번째 주|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 MMMM d일
  - Full : y년 MMMM d일 EEEE

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
            "ko||KP||AM|PM|9|afternoon1|오후|am|AM|evening1|저녁|midnight|자정|morning1|새벽|morning2|오전|night1|밤|noon|정오|pm|PM|오전|오후|9|afternoon1|오후|am|오전|evening1|저녁|midnight|자정|morning1|새벽|morning2|오전|night1|밤|noon|정오|pm|오후|AM|PM|9|afternoon1|오후|am|AM|evening1|저녁|midnight|자정|morning1|새벽|morning2|오전|night1|밤|noon|정오|pm|PM|yy. M. d.|y. M. d.|y년 MMMM d일|y년 MMMM d일 EEEE|1월|2월|3월|4월|5월|6월|7월|8월|9월|10월|11월|12월|1월|2월|3월|4월|5월|6월|7월|8월|9월|10월|11월|12월|1월|2월|3월|4월|5월|6월|7월|8월|9월|10월|11월|12월|0|일|월|화|수|목|금|토|일요일|월요일|화요일|수요일|목요일|금요일|토요일|일|월|화|수|목|금|토|0|BC|AD|기원전|서기|BC|AD|a h:mm|a h:mm:ss|a h시 m분 s초 z|a h시 m분 s초 zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|B h시|Bhm|B h:mm|Bhms|B h:mm:ss|d|d일|E|ccc|EBhm|(E) B h:mm|EBhms|(E) B h:mm:ss|Ed|d일 (E)|EEEEd|d일 EEEE|Ehm|(E) a h:mm|EHm|(E) HH:mm|Ehms|(E) a h:mm:ss|EHms|(E) HH:mm:ss|Gy|G y년|GyMd|GGGGG y/M/d|GyMMM|G y년 MMM|GyMMMd|G y년 MMM d일|GyMMMEd|G y년 MMM d일 (E)|GyMMMEEEEd|G y년 MMM d일 EEEE|h|a h시|H|H시|HHmmss|HH:mm:ss|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|H시 m분 s초|hmsv|a h:mm:ss v|Hmsv|H시 m분 s초 v|hmv|a h:mm v|Hmv|HH:mm v|M|M월|Md|M. d.|MEd|M. d. (E)|MEEEEd|M. d. EEEE|MMM|LLL|MMMd|MMM d일|MMMEd|MMM d일 (E)|MMMEEEEd|MMM d일 EEEE|MMMMd|MMMM d일|MMMMW-count-other|MMMM W번째 주|mmss|mm:ss|ms|mm:ss|y|y년|yM|y. M.|yMd|y. M. d.|yMEd|y. M. d. (E)|yMEEEEd|y. M. d. EEEE|yMM|y. M.|yMMM|y년 MMM|yMMMd|y년 MMM d일|yMMMEd|y년 MMM d일 (E)|yMMMEEEEd|y년 MMM d일 EEEE|yMMMM|y년 MMMM|yQQQ|y년 QQQ|yQQQQ|y년 QQQQ|yw-count-other|Y년 w번째 주|ahmm|ahmmss|ahmsz|ahmszzzz|"
        )
