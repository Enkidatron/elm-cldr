module Generated.Vi exposing (vi)

{-|

@docs vi

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "vi"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
vi : Internal.Locale.Locale
vi =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "vi||||SA|CH|8|afternoon1|chiều|am|SA|evening1|tối|midnight|nửa đêm|morning1|sáng|night1|đêm|noon|TR|pm|CH|SA|CH|8|afternoon1|chiều|am|SA|evening1|tối|midnight|nửa đêm|morning1|sáng|night1|đêm|noon|TR|pm|CH|s|c|8|afternoon1|chiều|am|s|evening1|tối|midnight|nửa đêm|morning1|sáng|night1|đêm|noon|tr|pm|c|dd/MM/y|d MMM, y|d MMMM, y|EEEE, d MMMM, y|thg 1|thg 2|thg 3|thg 4|thg 5|thg 6|thg 7|thg 8|thg 9|thg 10|thg 11|thg 12|tháng 1|tháng 2|tháng 3|tháng 4|tháng 5|tháng 6|tháng 7|tháng 8|tháng 9|tháng 10|tháng 11|tháng 12|1|2|3|4|5|6|7|8|9|10|11|12|1|Thg 1|Thg 2|Thg 3|Thg 4|Thg 5|Thg 6|Thg 7|Thg 8|Thg 9|Thg 10|Thg 11|Thg 12|Tháng 1|Tháng 2|Tháng 3|Tháng 4|Tháng 5|Tháng 6|Tháng 7|Tháng 8|Tháng 9|Tháng 10|Tháng 11|Tháng 12|1|2|3|4|5|6|7|8|9|10|11|12|CN|Th 2|Th 3|Th 4|Th 5|Th 6|Th 7|Chủ Nhật|Thứ Hai|Thứ Ba|Thứ Tư|Thứ Năm|Thứ Sáu|Thứ Bảy|CN|T2|T3|T4|T5|T6|T7|0|Trước CN|Sau CN|Trước Thiên Chúa|Sau Công Nguyên|tr. CN|sau CN|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, 'ngày' d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|dd MMM, y G|GyMMMEd|E, dd/MM/y G|h|h a|H|HH|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/M|MEd|E, dd/M|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-other|'tuần' W 'của' 'tháng' M|mmss|mm:ss|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, dd/M/y|yMM|'tháng' MM, y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM 'năm' y|yQQQ|QQQ y|yQQQQ|QQQQ 'năm' y|yw-count-other|'tuần' w 'của' 'năm' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
