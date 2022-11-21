module Generated.Gu exposing (gu)

{-|

@docs gu

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "gu"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : hh:mm a
  - Medium : hh:mm:ss a
  - Long : hh:mm:ss a z
  - Full : hh:mm:ss a zzzz

-}
gu : Internal.Locale.Locale
gu =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "gu||||AM|PM|7|afternoon1|બપોરે|am|AM|evening1|સાંજે|midnight|મધ્યરાત્રિ|morning1|સવારે|night1|રાત્રે|pm|PM|AM|PM|7|afternoon1|બપોરે|am|AM|evening1|સાંજે|midnight|મધ્યરાત્રિ|morning1|સવારે|night1|રાત્રે|pm|PM|AM|PM|7|afternoon1|બપોરે|am|AM|evening1|સાંજે|midnight|મ.રાત્રિ|morning1|સવારે|night1|રાત્રે|pm|PM|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|જાન્યુ|ફેબ્રુ|માર્ચ|એપ્રિલ|મે|જૂન|જુલાઈ|ઑગસ્ટ|સપ્ટે|ઑક્ટો|નવે|ડિસે|જાન્યુઆરી|ફેબ્રુઆરી|માર્ચ|એપ્રિલ|મે|જૂન|જુલાઈ|ઑગસ્ટ|સપ્ટેમ્બર|ઑક્ટોબર|નવેમ્બર|ડિસેમ્બર|જા|ફે|મા|એ|મે|જૂ|જુ|ઑ|સ|ઑ|ન|ડિ|0|રવિ|સોમ|મંગળ|બુધ|ગુરુ|શુક્ર|શનિ|રવિવાર|સોમવાર|મંગળવાર|બુધવાર|ગુરુવાર|શુક્રવાર|શનિવાર|ર|સો|મં|બુ|ગુ|શુ|શ|0|ઈ.સ.પૂર્વે|ઈ.સ.|ઈસવીસન પૂર્વે|ઇસવીસન|ઇ સ પુ|ઇસ|hh:mm a|hh:mm:ss a|hh:mm:ss a z|hh:mm:ss a zzzz|{1} {0}|{1} {0}|{1} એ {0} વાગ્યે|{1} એ {0} વાગ્યે|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|MMM, G y|GyMMMd|d MMM, G y|GyMMMEd|E, d MMM, G y|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|MMMMના W અઠવાડિયા|MMMMW-count-other|MMMMના W અઠવાડિયા|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y ના w અઠવાડિયા|yw-count-other|Y ના w અઠવાડિયા|ahhmm|ahhmmss|ahhmmssz|ahhmmsszzzz|"
        )
