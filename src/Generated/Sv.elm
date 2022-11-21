module Generated.Sv exposing (sv, sv_AX, sv_FI)

{-|

@docs sv, sv_AX, sv_FI

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "sv"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv : Internal.Locale.Locale
sv =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sv||||fm|em|8|afternoon1|på efterm.|am|fm|evening1|på kvällen|midnight|midnatt|morning1|på morg.|morning2|på förm.|night1|på natten|pm|em|fm|em|8|afternoon1|på eftermiddagen|am|fm|evening1|på kvällen|midnight|midnatt|morning1|på morgonen|morning2|på förmiddagen|night1|på natten|pm|em|fm|em|8|afternoon1|på efterm.|am|fm|evening1|på kvällen|midnight|midn.|morning1|på morg.|morning2|på förm.|night1|på natten|pm|em|y-MM-dd|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mars|apr.|maj|juni|juli|aug.|sep.|okt.|nov.|dec.|januari|februari|mars|april|maj|juni|juli|augusti|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|sön|mån|tis|ons|tors|fre|lör|söndag|måndag|tisdag|onsdag|torsdag|fredag|lördag|S|M|T|O|T|F|L|0|f.Kr.|e.Kr.|före Kristus|efter Kristus|f.Kr.|e.Kr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|53|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|y-MM-dd GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMd|d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|'vecka' W 'i' MMMM|MMMMW-count-other|'vecka' W 'i' MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|E, y-MM-dd|yMM|y-MM|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'vecka' w, Y|yw-count-other|'vecka' w, Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv_AX : Internal.Locale.Locale
sv_AX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sv||AX||fm|em|8|afternoon1|på efterm.|am|fm|evening1|på kvällen|midnight|midnatt|morning1|på morg.|morning2|på förm.|night1|på natten|pm|em|fm|em|8|afternoon1|på eftermiddagen|am|fm|evening1|på kvällen|midnight|midnatt|morning1|på morgonen|morning2|på förmiddagen|night1|på natten|pm|em|fm|em|8|afternoon1|på efterm.|am|fm|evening1|på kvällen|midnight|midn.|morning1|på morg.|morning2|på förm.|night1|på natten|pm|em|y-MM-dd|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mars|apr.|maj|juni|juli|aug.|sep.|okt.|nov.|dec.|januari|februari|mars|april|maj|juni|juli|augusti|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|sön|mån|tis|ons|tors|fre|lör|söndag|måndag|tisdag|onsdag|torsdag|fredag|lördag|S|M|T|O|T|F|L|0|f.Kr.|e.Kr.|före Kristus|efter Kristus|f.Kr.|e.Kr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|53|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|y-MM-dd GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMd|d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|'vecka' W 'i' MMMM|MMMMW-count-other|'vecka' W 'i' MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|E, y-MM-dd|yMM|y-MM|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'vecka' w, Y|yw-count-other|'vecka' w, Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv_FI : Internal.Locale.Locale
sv_FI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sv||FI||fm|em|8|afternoon1|på efterm.|am|fm|evening1|på kvällen|midnight|midnatt|morning1|på morg.|morning2|på förm.|night1|på natten|pm|em|fm|em|8|afternoon1|på eftermiddagen|am|fm|evening1|på kvällen|midnight|midnatt|morning1|på morgonen|morning2|på förmiddagen|night1|på natten|pm|em|fm|em|8|afternoon1|på efterm.|am|fm|evening1|på kvällen|midnight|midn.|morning1|på morg.|morning2|på förm.|night1|på natten|pm|em|y-MM-dd|d MMM y|d MMMM y|EEEE d MMMM y|jan.|feb.|mars|apr.|maj|juni|juli|aug.|sep.|okt.|nov.|dec.|januari|februari|mars|april|maj|juni|juli|augusti|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|sön|mån|tis|ons|tors|fre|lör|söndag|måndag|tisdag|onsdag|torsdag|fredag|lördag|S|M|T|O|T|F|L|0|f.Kr.|e.Kr.|före Kristus|efter Kristus|f.Kr.|e.Kr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|53|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|E d|Ehm|E h.mm a|EHm|E HH.mm|Ehms|E h.mm.ss a|EHms|E HH.mm.ss|Gy|y G|GyMd|y-MM-dd GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h.mm a|Hm|HH.mm|hms|h.mm.ss a|Hms|HH.mm.ss|hmsv|h.mm.ss a v|Hmsv|HH.mm.ss v|hmv|h.mm a v|Hmv|HH.mm v|M|L|Md|d.M|MEd|E d.M|MMd|d.M|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|'vecka' W 'i' MMMM|MMMMW-count-other|'vecka' W 'i' MMMM|ms|mm.ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|E, y-MM-dd|yMM|y-MM|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'vecka' w, Y|yw-count-other|'vecka' w, Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
