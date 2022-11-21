module Generated.Gl exposing (gl)

{-|

@docs gl

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "gl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d 'de' MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
gl : Internal.Locale.Locale
gl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "gl||||a.m.|p.m.|8|afternoon1|do mediodía|am|a.m.|evening1|da tarde|midnight|da noite|morning1|da madrugada|morning2|da mañá|night1|da noite|pm|p.m.|a.m.|p.m.|8|afternoon1|do mediodía|am|a.m.|evening1|da tarde|midnight|da noite|morning1|da madrugada|morning2|da mañá|night1|da noite|pm|p.m.|a.m.|p.m.|8|afternoon1|do mediodía|am|a.m.|evening1|da tarde|midnight|da noite|morning1|da madrugada|morning2|da mañá|night1|da noite|pm|p.m.|dd/MM/yy|d 'de' MMM 'de' y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|xan.|feb.|mar.|abr.|maio|xuño|xul.|ago.|set.|out.|nov.|dec.|xaneiro|febreiro|marzo|abril|maio|xuño|xullo|agosto|setembro|outubro|novembro|decembro|x.|f.|m.|a.|m.|x.|x.|a.|s.|o.|n.|d.|1|Xan.|Feb.|Mar.|Abr.|Maio|Xuño|Xul.|Ago.|Set.|Out.|Nov.|Dec.|Xaneiro|Febreiro|Marzo|Abril|Maio|Xuño|Xullo|Agosto|Setembro|Outubro|Novembro|Decembro|X|F|M|A|M|X|X|A|S|O|N|D|dom.|luns|mar.|mér.|xov.|ven.|sáb.|domingo|luns|martes|mércores|xoves|venres|sábado|d.|l.|m.|m.|x.|v.|s.|1|Dom.|Luns|Mar.|Mér.|Xov.|Ven.|Sáb.|Domingo|Luns|Martes|Mércores|Xoves|Venres|Sábado|D|L|M|M|X|V|S|a.C.|d.C.|antes de Cristo|despois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{0}, {1}|{0}, {1}|{0} 'do' {1}|{0} 'do' {1}|52|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E, h:mm a|EHm|E, HH:mm|Ehms|E, h:mm:ss a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d 'de' MMM|MMMEd|E, d 'de' MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM/y|yMMM|MMM 'de' y|yMMMd|d 'de' MMM 'de' y|yMMMEd|E, d 'de' MMM 'de' y|yMMMM|MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
