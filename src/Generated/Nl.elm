module Generated.Nl exposing (nl, nl_AW, nl_BE, nl_BQ, nl_CW, nl_SR, nl_SX)

{-|

@docs nl, nl_AW, nl_BE, nl_BQ, nl_CW, nl_SR, nl_SX

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "nl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl : Internal.Locale.Locale
nl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "nl||||a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|dd-MM-y|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mrt.|apr.|mei|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januari|februari|maart|april|mei|juni|juli|augustus|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|zo|ma|di|wo|do|vr|za|zondag|maandag|dinsdag|woensdag|donderdag|vrijdag|zaterdag|Z|M|D|W|D|V|Z|0|v.Chr.|n.Chr.|voor Christus|na Christus|v.C.|n.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} 'om' {0}|{1} 'om' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|E d-M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'van' MMMM|MMMMW-count-other|'week' W 'van' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d-M-y|yMEd|E d-M-y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'in' Y|yw-count-other|'week' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_AW : Internal.Locale.Locale
nl_AW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "nl||AW||a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|dd-MM-y|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mrt.|apr.|mei|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januari|februari|maart|april|mei|juni|juli|augustus|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|zo|ma|di|wo|do|vr|za|zondag|maandag|dinsdag|woensdag|donderdag|vrijdag|zaterdag|Z|M|D|W|D|V|Z|0|v.Chr.|n.Chr.|voor Christus|na Christus|v.C.|n.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} 'om' {0}|{1} 'om' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|E d-M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'van' MMMM|MMMMW-count-other|'week' W 'van' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d-M-y|yMEd|E d-M-y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'in' Y|yw-count-other|'week' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_BE : Internal.Locale.Locale
nl_BE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "nl||BE||a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|d/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mrt.|apr.|mei|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januari|februari|maart|april|mei|juni|juli|augustus|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|zo|ma|di|wo|do|vr|za|zondag|maandag|dinsdag|woensdag|donderdag|vrijdag|zaterdag|Z|M|D|W|D|V|Z|0|v.Chr.|n.Chr.|voor Christus|na Christus|v.C.|n.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} 'om' {0}|{1} 'om' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'van' MMMM|MMMMW-count-other|'week' W 'van' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'in' Y|yw-count-other|'week' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_BQ : Internal.Locale.Locale
nl_BQ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "nl||BQ||a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|dd-MM-y|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mrt.|apr.|mei|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januari|februari|maart|april|mei|juni|juli|augustus|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|zo|ma|di|wo|do|vr|za|zondag|maandag|dinsdag|woensdag|donderdag|vrijdag|zaterdag|Z|M|D|W|D|V|Z|0|v.Chr.|n.Chr.|voor Christus|na Christus|v.C.|n.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} 'om' {0}|{1} 'om' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|E d-M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'van' MMMM|MMMMW-count-other|'week' W 'van' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d-M-y|yMEd|E d-M-y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'in' Y|yw-count-other|'week' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_CW : Internal.Locale.Locale
nl_CW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "nl||CW||a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|dd-MM-y|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mrt.|apr.|mei|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januari|februari|maart|april|mei|juni|juli|augustus|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|zo|ma|di|wo|do|vr|za|zondag|maandag|dinsdag|woensdag|donderdag|vrijdag|zaterdag|Z|M|D|W|D|V|Z|0|v.Chr.|n.Chr.|voor Christus|na Christus|v.C.|n.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} 'om' {0}|{1} 'om' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|E d-M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'van' MMMM|MMMMW-count-other|'week' W 'van' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d-M-y|yMEd|E d-M-y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'in' Y|yw-count-other|'week' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_SR : Internal.Locale.Locale
nl_SR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "nl||SR||a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|dd-MM-y|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mrt.|apr.|mei|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januari|februari|maart|april|mei|juni|juli|augustus|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|zo|ma|di|wo|do|vr|za|zondag|maandag|dinsdag|woensdag|donderdag|vrijdag|zaterdag|Z|M|D|W|D|V|Z|0|v.Chr.|n.Chr.|voor Christus|na Christus|v.C.|n.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} 'om' {0}|{1} 'om' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|E d-M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'van' MMMM|MMMMW-count-other|'week' W 'van' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d-M-y|yMEd|E d-M-y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'in' Y|yw-count-other|'week' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_SX : Internal.Locale.Locale
nl_SX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "nl||SX||a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|a.m.|p.m.|7|afternoon1|’s middags|am|a.m.|evening1|’s avonds|midnight|middernacht|morning1|’s ochtends|night1|’s nachts|pm|p.m.|dd-MM-y|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mrt.|apr.|mei|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januari|februari|maart|april|mei|juni|juli|augustus|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|zo|ma|di|wo|do|vr|za|zondag|maandag|dinsdag|woensdag|donderdag|vrijdag|zaterdag|Z|M|D|W|D|V|Z|0|v.Chr.|n.Chr.|voor Christus|na Christus|v.C.|n.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} 'om' {0}|{1} 'om' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|E d-M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'van' MMMM|MMMMW-count-other|'week' W 'van' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d-M-y|yMEd|E d-M-y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'in' Y|yw-count-other|'week' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
