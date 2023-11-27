module Generated.Ha exposing (ha, ha_GH, ha_NE)

{-|

@docs ha, ha_GH, ha_NE

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ha : Internal.Locale.Locale
ha =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ha||||SF|YM|2|am|SF|pm|YM|Safiya|Yamma|2|am|Safiya|pm|Yamma|SF|YM|2|am|SF|pm|YM|d/M/yy|d MMM, y|d MMMM, y|EEEE d MMMM, y|Jan|Fab|Mar|Afi|May|Yun|Yul|Agu|Sat|Okt|Nuw|Dis|Janairu|Faburairu|Maris|Afirilu|Mayu|Yuni|Yuli|Agusta|Satumba|Oktoba|Nuwamba|Disamba|J|F|M|A|M|Y|Y|A|S|O|N|D|0|Lah|Lit|Tal|Lar|Alh|Jum|Asa|Lahadi|Litinin|Talata|Laraba|Alhamis|Jummaʼa|Asabar|L|L|T|L|A|J|A|0|K.H|BHAI|Kafin haihuwar annab|Bayan haihuwar annab|K.H|BHAI|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'satin' W 'cikin' MMMM|MMMMW-count-other|'satin' W 'cikin' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|y-MM-dd|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|y MMM d, E|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'sati' w 'cikin' Y|yw-count-other|'sati' w 'cikin' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ha_GH : Internal.Locale.Locale
ha_GH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ha||GH||SF|YM|2|am|SF|pm|YM|Safiya|Yamma|2|am|Safiya|pm|Yamma|SF|YM|2|am|SF|pm|YM|d/M/yy|d MMM, y|d MMMM, y|EEEE d MMMM, y|Jan|Fab|Mar|Afi|May|Yun|Yul|Agu|Sat|Okt|Nuw|Dis|Janairu|Faburairu|Maris|Afirilu|Mayu|Yuni|Yuli|Agusta|Satumba|Oktoba|Nuwamba|Disamba|J|F|M|A|M|Y|Y|A|S|O|N|D|0|Lah|Lit|Tal|Lar|Alh|Jum|Asa|Lahadi|Litinin|Talata|Laraba|Alhamis|Jummaʼa|Asabar|L|L|T|L|A|J|A|0|K.H|BHAI|Kafin haihuwar annab|Bayan haihuwar annab|K.H|BHAI|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'satin' W 'cikin' MMMM|MMMMW-count-other|'satin' W 'cikin' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|y-MM-dd|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|y MMM d, E|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'sati' w 'cikin' Y|yw-count-other|'sati' w 'cikin' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ha_NE : Internal.Locale.Locale
ha_NE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ha||NE||SF|YM|2|am|SF|pm|YM|Safiya|Yamma|2|am|Safiya|pm|Yamma|SF|YM|2|am|SF|pm|YM|d/M/yy|d MMM, y|d MMMM, y|EEEE d MMMM, y|Jan|Fab|Mar|Afi|May|Yun|Yul|Agu|Sat|Okt|Nuw|Dis|Janairu|Faburairu|Maris|Afirilu|Mayu|Yuni|Yuli|Agusta|Satumba|Oktoba|Nuwamba|Disamba|J|F|M|A|M|Y|Y|A|S|O|N|D|0|Lah|Lit|Tal|Lar|Alh|Jum|Asa|Lahadi|Litinin|Talata|Laraba|Alhamis|Jummaʼa|Asabar|L|L|T|L|A|J|A|0|K.H|BHAI|Kafin haihuwar annab|Bayan haihuwar annab|K.H|BHAI|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'satin' W 'cikin' MMMM|MMMMW-count-other|'satin' W 'cikin' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|y-MM-dd|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|y MMM d, E|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'sati' w 'cikin' Y|yw-count-other|'sati' w 'cikin' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
