module Generated.Sw exposing (sw, sw_CD, sw_KE, sw_UG)

{-|

@docs sw, sw_CD, sw_KE, sw_UG

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "sw"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 7, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 7, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw : Internal.Locale.Locale
sw =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sw||||AM|PM|9|afternoon1|mchana|am|AM|evening1|jioni|midnight|saa sita za usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|adhuhuri|pm|PM|AM|PM|9|afternoon1|mchana|am|AM|evening1|jioni|midnight|saa sita za usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|saa sita za mchana|pm|PM|am|pm|9|afternoon1|mchana|am|am|evening1|jioni|midnight|usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|mchana|pm|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ago|Sep|Okt|Nov|Des|Januari|Februari|Machi|Aprili|Mei|Juni|Julai|Agosti|Septemba|Oktoba|Novemba|Desemba|J|F|M|A|M|J|J|A|S|O|N|D|0|Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi|Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi|S|M|T|W|T|F|S|0|KK|BK|Kabla ya Kristo|Baada ya Kristo|KK|BK|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'wiki' W 'ya' MMMM|MMMMW-count-other|'wiki' W 'ya' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|QQQQ y|yw-count-one|'wiki' w 'ya' Y|yw-count-other|'wiki' w 'ya' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw_CD : Internal.Locale.Locale
sw_CD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sw||CD||AM|PM|9|afternoon1|mchana|am|AM|evening1|jioni|midnight|saa sita za usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|adhuhuri|pm|PM|AM|PM|9|afternoon1|mchana|am|AM|evening1|jioni|midnight|saa sita za usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|saa sita za mchana|pm|PM|am|pm|9|afternoon1|mchana|am|am|evening1|jioni|midnight|usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|mchana|pm|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ago|Sep|Okt|Nov|Des|Januari|Februari|Machi|Aprili|Mei|Juni|Julai|Agosti|Septemba|Oktoba|Novemba|Desemba|J|F|M|A|M|J|J|A|S|O|N|D|0|Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi|Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi|S|M|T|W|T|F|S|0|KK|BK|Kabla ya Kristo|Baada ya Kristo|KK|BK|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'wiki' W 'ya' MMMM|MMMMW-count-other|'wiki' W 'ya' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|QQQQ y|yw-count-one|'wiki' w 'ya' Y|yw-count-other|'wiki' w 'ya' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw_KE : Internal.Locale.Locale
sw_KE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sw||KE||AM|PM|9|afternoon1|mchana|am|AM|evening1|jioni|midnight|saa sita za usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|adhuhuri|pm|PM|AM|PM|9|afternoon1|mchana|am|AM|evening1|jioni|midnight|saa sita za usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|saa sita za mchana|pm|PM|am|pm|9|afternoon1|mchana|am|am|evening1|jioni|midnight|usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|mchana|pm|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ago|Sep|Okt|Nov|Des|Januari|Februari|Machi|Aprili|Mei|Juni|Julai|Agosti|Septemba|Oktoba|Novemba|Desemba|J|F|M|A|M|J|J|A|S|O|N|D|0|Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi|Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi|S|M|T|W|T|F|S|0|KK|BK|Kabla ya Kristo|Baada ya Kristo|KK|BK|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'wiki' W 'ya' MMMM|MMMMW-count-other|'wiki' W 'ya' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|QQQQ y|yw-count-one|'wiki' w 'ya' Y|yw-count-other|'wiki' w 'ya' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw_UG : Internal.Locale.Locale
sw_UG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sw||UG||AM|PM|9|afternoon1|mchana|am|AM|evening1|jioni|midnight|saa sita za usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|adhuhuri|pm|PM|AM|PM|9|afternoon1|mchana|am|AM|evening1|jioni|midnight|saa sita za usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|saa sita za mchana|pm|PM|am|pm|9|afternoon1|mchana|am|am|evening1|jioni|midnight|usiku|morning1|alfajiri|morning2|asubuhi|night1|usiku|noon|mchana|pm|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ago|Sep|Okt|Nov|Des|Januari|Februari|Machi|Aprili|Mei|Juni|Julai|Agosti|Septemba|Oktoba|Novemba|Desemba|J|F|M|A|M|J|J|A|S|O|N|D|0|Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi|Jumapili|Jumatatu|Jumanne|Jumatano|Alhamisi|Ijumaa|Jumamosi|S|M|T|W|T|F|S|0|KK|BK|Kabla ya Kristo|Baada ya Kristo|KK|BK|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'wiki' W 'ya' MMMM|MMMMW-count-other|'wiki' W 'ya' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|QQQQ y|yw-count-one|'wiki' w 'ya' Y|yw-count-other|'wiki' w 'ya' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
