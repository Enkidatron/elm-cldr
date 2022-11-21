module Generated.Da exposing (da, da_GL)

{-|

@docs da, da_GL

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "da"
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

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da : Internal.Locale.Locale
da =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "da||||AM|PM|8|afternoon1|om eftermiddagen|am|AM|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|PM|AM|PM|8|afternoon1|om eftermiddagen|am|AM|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|PM|a|p|8|afternoon1|om eftermiddagen|am|a|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|p|dd.MM.y|d. MMM y|d. MMMM y|EEEE 'den' d. MMMM y|jan.|feb.|mar.|apr.|maj|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januar|februar|marts|april|maj|juni|juli|august|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|søn.|man.|tir.|ons.|tor.|fre.|lør.|søndag|mandag|tirsdag|onsdag|torsdag|fredag|lørdag|S|M|T|O|T|F|L|1|søn|man|tir|ons|tor|fre|lør|søndag|mandag|tirsdag|onsdag|torsdag|fredag|lørdag|S|M|T|O|T|F|L|f.Kr.|e.Kr.|f.Kr.|e.Kr.|fKr|eKr|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1} {0}|{1} {0}|{1} 'kl'. {0}|{1} 'kl'. {0}|52|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d.|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|E 'den' d.|Ehm|E h.mm a|EHm|E HH.mm|Ehms|E h.mm.ss a|EHms|E HH.mm.ss|Gy|y G|GyMd|d.M.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E d. MMM y G|h|h a|H|HH|hm|h.mm a|Hm|HH.mm|hms|h.mm.ss a|Hms|HH.mm.ss|hmsv|h.mm.ss a v|Hmsv|HH.mm.ss v|hmv|h.mm a v|Hmv|HH.mm v|M|M|Md|d.M|MEd|E d.M|MMdd|dd.MM|MMM|MMM|MMMd|d. MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E d. MMMM|MMMMW-count-one|W. 'uge' 'i' MMMM|MMMMW-count-other|W. 'uge' 'i' MMMM|ms|mm.ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E d.M.y|yMM|MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'uge' w 'i' Y|yw-count-other|'uge' w 'i' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da_GL : Internal.Locale.Locale
da_GL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "da||GL||AM|PM|8|afternoon1|om eftermiddagen|am|AM|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|PM|AM|PM|8|afternoon1|om eftermiddagen|am|AM|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|PM|a|p|8|afternoon1|om eftermiddagen|am|a|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|p|dd.MM.y|d. MMM y|d. MMMM y|EEEE 'den' d. MMMM y|jan.|feb.|mar.|apr.|maj|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januar|februar|marts|april|maj|juni|juli|august|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|søn.|man.|tir.|ons.|tor.|fre.|lør.|søndag|mandag|tirsdag|onsdag|torsdag|fredag|lørdag|S|M|T|O|T|F|L|1|søn|man|tir|ons|tor|fre|lør|søndag|mandag|tirsdag|onsdag|torsdag|fredag|lørdag|S|M|T|O|T|F|L|f.Kr.|e.Kr.|f.Kr.|e.Kr.|fKr|eKr|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1} {0}|{1} {0}|{1} 'kl'. {0}|{1} 'kl'. {0}|52|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d.|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|E 'den' d.|Ehm|E h.mm a|EHm|E HH.mm|Ehms|E h.mm.ss a|EHms|E HH.mm.ss|Gy|y G|GyMd|d.M.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E d. MMM y G|h|h a|H|HH|hm|h.mm a|Hm|HH.mm|hms|h.mm.ss a|Hms|HH.mm.ss|hmsv|h.mm.ss a v|Hmsv|HH.mm.ss v|hmv|h.mm a v|Hmv|HH.mm v|M|M|Md|d.M|MEd|E d.M|MMdd|dd.MM|MMM|MMM|MMMd|d. MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E d. MMMM|MMMMW-count-one|W. 'uge' 'i' MMMM|MMMMW-count-other|W. 'uge' 'i' MMMM|ms|mm.ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E d.M.y|yMM|MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'uge' w 'i' Y|yw-count-other|'uge' w 'i' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
