module Generated.Af exposing (af, af_NA)

{-|

@docs af, af_NA

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "af"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
af : Internal.Locale.Locale
af =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "af||||vm.|nm.|7|afternoon1|die middag|am|vm.|evening1|die aand|midnight|middernag|morning1|die oggend|night1|die nag|pm|nm.|vm.|nm.|7|afternoon1|die middag|am|vm.|evening1|die aand|midnight|middernag|morning1|die oggend|night1|die nag|pm|nm.|v|n|7|afternoon1|m|am|v|evening1|a|midnight|mn|morning1|o|night1|n|pm|n|y-MM-dd|dd MMM y|dd MMMM y|EEEE dd MMMM y|Jan.|Feb.|Mrt.|Apr.|Mei|Jun.|Jul.|Aug.|Sep.|Okt.|Nov.|Des.|Januarie|Februarie|Maart|April|Mei|Junie|Julie|Augustus|September|Oktober|November|Desember|J|F|M|A|M|J|J|A|S|O|N|D|0|So.|Ma.|Di.|Wo.|Do.|Vr.|Sa.|Sondag|Maandag|Dinsdag|Woensdag|Donderdag|Vrydag|Saterdag|S|M|D|W|D|V|S|0|v.C.|n.C.|voor Christus|na Christus|v.C.|n.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|ccc|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d|Ehm|E hh:mm a|EHm|E HH:mm|Ehms|E hh:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|GGGGG y-MM-dd|GyMMM|MMM y G|GyMMMd|dd MMM y G|GyMMMEd|E dd MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd-MM|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|'week' W 'van' MMMM|MMMMW-count-other|'week' W 'van' MMMM|ms|mm:ss|y|y|yM|MM-y|yMd|y-MM-dd|yMEd|E y-MM-dd|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'van' Y|yw-count-other|'week' w 'van' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE dd MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
af_NA : Internal.Locale.Locale
af_NA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "af||NA||vm.|nm.|7|afternoon1|die middag|am|vm.|evening1|die aand|midnight|middernag|morning1|die oggend|night1|die nag|pm|nm.|vm.|nm.|7|afternoon1|die middag|am|vm.|evening1|die aand|midnight|middernag|morning1|die oggend|night1|die nag|pm|nm.|v|n|7|afternoon1|m|am|v|evening1|a|midnight|mn|morning1|o|night1|n|pm|n|y-MM-dd|dd MMM y|dd MMMM y|EEEE dd MMMM y|Jan.|Feb.|Mrt.|Apr.|Mei|Jun.|Jul.|Aug.|Sep.|Okt.|Nov.|Des.|Januarie|Februarie|Maart|April|Mei|Junie|Julie|Augustus|September|Oktober|November|Desember|J|F|M|A|M|J|J|A|S|O|N|D|0|So.|Ma.|Di.|Wo.|Do.|Vr.|Sa.|Sondag|Maandag|Dinsdag|Woensdag|Donderdag|Vrydag|Saterdag|S|M|D|W|D|V|S|0|v.C.|n.C.|voor Christus|na Christus|v.C.|n.C.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|ccc|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d|Ehm|E hh:mm a|EHm|E HH:mm|Ehms|E hh:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|GGGGG y-MM-dd|GyMMM|MMM y G|GyMMMd|dd MMM y G|GyMMMEd|E dd MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd-MM|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|'week' W 'van' MMMM|MMMMW-count-other|'week' W 'van' MMMM|ms|mm:ss|y|y|yM|MM-y|yMd|y-MM-dd|yMEd|E y-MM-dd|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'van' Y|yw-count-other|'week' w 'van' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
