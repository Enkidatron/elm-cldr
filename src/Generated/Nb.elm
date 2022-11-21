module Generated.Nb exposing (nb, nb_SJ)

{-|

@docs nb, nb_SJ

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "nb"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nb : Internal.Locale.Locale
nb =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "nb||||a.m.|p.m.|8|afternoon1|etterm.|am|a.m.|evening1|kveld|midnight|midn.|morning1|morg.|morning2|form.|night1|natt|pm|p.m.|a.m.|p.m.|8|afternoon1|på ettermiddagen|am|a.m.|evening1|på kvelden|midnight|midnatt|morning1|på morgenen|morning2|på formiddagen|night1|på natten|pm|p.m.|a|p|8|afternoon1|em.|am|a|evening1|kv.|midnight|mn.|morning1|mg.|morning2|fm.|night1|nt.|pm|p|dd.MM.y|d. MMM y|d. MMMM y|EEEE d. MMMM y|jan.|feb.|mar.|apr.|mai|jun.|jul.|aug.|sep.|okt.|nov.|des.|januar|februar|mars|april|mai|juni|juli|august|september|oktober|november|desember|J|F|M|A|M|J|J|A|S|O|N|D|1|jan|feb|mar|apr|mai|jun|jul|aug|sep|okt|nov|des|januar|februar|mars|april|mai|juni|juli|august|september|oktober|november|desember|J|F|M|A|M|J|J|A|S|O|N|D|søn.|man.|tir.|ons.|tor.|fre.|lør.|søndag|mandag|tirsdag|onsdag|torsdag|fredag|lørdag|S|M|T|O|T|F|L|0|f.Kr.|e.Kr.|før Kristus|etter Kristus|f.Kr.|e.Kr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'kl'. {0}|{1} 'kl'. {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E 'kl'. HH:mm|Ehms|E h:mm:ss a|EHms|E 'kl'. HH:mm:ss|Gy|y G|GyMd|dd.MM.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E d. MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L.|Md|d.M.|MEd|E d.M.|MMdd|d.M.|MMM|LLL|MMMd|d. MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMW-count-one|'den' W. 'uken' 'i' MMMM|MMMMW-count-other|'den' W. 'uken' 'i' MMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E d.M.y|yMM|MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'uke' w 'i' Y|yw-count-other|'uke' w 'i' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nb_SJ : Internal.Locale.Locale
nb_SJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "nb||SJ||a.m.|p.m.|8|afternoon1|etterm.|am|a.m.|evening1|kveld|midnight|midn.|morning1|morg.|morning2|form.|night1|natt|pm|p.m.|a.m.|p.m.|8|afternoon1|på ettermiddagen|am|a.m.|evening1|på kvelden|midnight|midnatt|morning1|på morgenen|morning2|på formiddagen|night1|på natten|pm|p.m.|a|p|8|afternoon1|em.|am|a|evening1|kv.|midnight|mn.|morning1|mg.|morning2|fm.|night1|nt.|pm|p|dd.MM.y|d. MMM y|d. MMMM y|EEEE d. MMMM y|jan.|feb.|mar.|apr.|mai|jun.|jul.|aug.|sep.|okt.|nov.|des.|januar|februar|mars|april|mai|juni|juli|august|september|oktober|november|desember|J|F|M|A|M|J|J|A|S|O|N|D|1|jan|feb|mar|apr|mai|jun|jul|aug|sep|okt|nov|des|januar|februar|mars|april|mai|juni|juli|august|september|oktober|november|desember|J|F|M|A|M|J|J|A|S|O|N|D|søn.|man.|tir.|ons.|tor.|fre.|lør.|søndag|mandag|tirsdag|onsdag|torsdag|fredag|lørdag|S|M|T|O|T|F|L|0|f.Kr.|e.Kr.|før Kristus|etter Kristus|f.Kr.|e.Kr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'kl'. {0}|{1} 'kl'. {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E 'kl'. HH:mm|Ehms|E h:mm:ss a|EHms|E 'kl'. HH:mm:ss|Gy|y G|GyMd|dd.MM.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E d. MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L.|Md|d.M.|MEd|E d.M.|MMdd|d.M.|MMM|LLL|MMMd|d. MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMW-count-one|'den' W. 'uken' 'i' MMMM|MMMMW-count-other|'den' W. 'uken' 'i' MMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E d.M.y|yMM|MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'uke' w 'i' Y|yw-count-other|'uke' w 'i' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
