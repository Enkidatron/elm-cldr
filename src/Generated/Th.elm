module Generated.Th exposing (th)

{-|

@docs th

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "th"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 16, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening2"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM G y
  - Full : EEEEที่ d MMMM G y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H นาฬิกา mm นาที ss วินาที z
  - Full : H นาฬิกา mm นาที ss วินาที zzzz

-}
th : Internal.Locale.Locale
th =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "th||||ก่อนเที่ยง|หลังเที่ยง|10|afternoon1|ในตอนบ่าย|afternoon2|บ่าย|am|ก่อนเที่ยง|evening1|ในตอนเย็น|evening2|ค่ำ|midnight|เที่ยงคืน|morning1|ในตอนเช้า|night1|กลางคืน|noon|เที่ยง|pm|หลังเที่ยง|ก่อนเที่ยง|หลังเที่ยง|10|afternoon1|ในตอนบ่าย|afternoon2|บ่าย|am|ก่อนเที่ยง|evening1|ในตอนเย็น|evening2|ค่ำ|midnight|เที่ยงคืน|morning1|ในตอนเช้า|night1|กลางคืน|noon|เที่ยง|pm|หลังเที่ยง|a|p|10|afternoon1|เที่ยง|afternoon2|บ่าย|am|a|evening1|เย็น|evening2|ค่ำ|midnight|เที่ยงคืน|morning1|เช้า|night1|กลางคืน|noon|เที่ยง|pm|p|d/M/yy|d MMM y|d MMMM G y|EEEEที่ d MMMM G y|ม.ค.|ก.พ.|มี.ค.|เม.ย.|พ.ค.|มิ.ย.|ก.ค.|ส.ค.|ก.ย.|ต.ค.|พ.ย.|ธ.ค.|มกราคม|กุมภาพันธ์|มีนาคม|เมษายน|พฤษภาคม|มิถุนายน|กรกฎาคม|สิงหาคม|กันยายน|ตุลาคม|พฤศจิกายน|ธันวาคม|ม.ค.|ก.พ.|มี.ค.|เม.ย.|พ.ค.|มิ.ย.|ก.ค.|ส.ค.|ก.ย.|ต.ค.|พ.ย.|ธ.ค.|0|อา.|จ.|อ.|พ.|พฤ.|ศ.|ส.|วันอาทิตย์|วันจันทร์|วันอังคาร|วันพุธ|วันพฤหัสบดี|วันศุกร์|วันเสาร์|อา|จ|อ|พ|พฤ|ศ|ส|0|ก่อน ค.ศ.|ค.ศ.|ปีก่อนคริสตกาล|คริสต์ศักราช|ก่อน ค.ศ.|ค.ศ.|HH:mm|HH:mm:ss|H นาฬิกา mm นาที ss วินาที z|H นาฬิกา mm นาที ss วินาที zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm น.|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/GGGGG y|GyMMM|MMM G y|GyMMMd|d MMM G y|GyMMMEd|E d MMM G y|GyMMMEEEEd|EEEEที่ d MMM G y|h|h a|H|HH|hm|h:mm a|Hm|HH:mm น.|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm น. a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMEEEEd|EEEEที่ d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMEEEEd|EEEEที่ d MMMM|MMMMW-count-other|สัปดาห์ที่ W ของเดือนMMMM|mmss|mm:ss|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMEEEEd|EEEEที่ d MMM y|yMMMM|MMMM G y|yMMMMd|d MMMM G y|yMMMMEd|E d MMMM G y|yMMMMEEEEd|EEEEที่ d MMMM G y|yQQQ|QQQ y|yQQQQ|QQQQ G y|yw-count-other|สัปดาห์ที่ w ของปี Y|HHmm|HHmmss|Hmmssz|Hmmsszzzz|"
        )
