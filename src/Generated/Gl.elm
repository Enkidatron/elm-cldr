module Generated.Gl exposing (gl)

{-|

@docs gl

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.PluralRule


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


pluralRules : Internal.PluralRule.PluralRulesInfo
pluralRules =
    { one =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.I
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    [ { variable = Internal.PluralRule.V
                      , modBy = Nothing
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
                      }
                    ]
                )
                []
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


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
            pluralRules
            "gl||||a.m.|p.m.|8|afternoon1|do mediodía|am|a.m.|evening1|da tarde|midnight|da noite|morning1|da madrugada|morning2|da mañá|night1|da noite|pm|p.m.|a.m.|p.m.|8|afternoon1|do mediodía|am|a.m.|evening1|da tarde|midnight|da noite|morning1|da madrugada|morning2|da mañá|night1|da noite|pm|p.m.|a.m.|p.m.|8|afternoon1|do mediodía|am|a.m.|evening1|da tarde|midnight|da noite|morning1|da madrugada|morning2|da mañá|night1|da noite|pm|p.m.|dd/MM/yy|d 'de' MMM 'de' y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|xan.|feb.|mar.|abr.|maio|xuño|xul.|ago.|set.|out.|nov.|dec.|xaneiro|febreiro|marzo|abril|maio|xuño|xullo|agosto|setembro|outubro|novembro|decembro|x.|f.|m.|a.|m.|x.|x.|a.|s.|o.|n.|d.|1|xan.|feb.|mar.|abr.|maio|xuño|xul.|ago.|set.|out.|nov.|dec.|xaneiro|febreiro|marzo|abril|maio|xuño|xullo|agosto|setembro|outubro|novembro|decembro|X|F|M|A|M|X|X|A|S|O|N|D|dom.|luns|mar.|mér.|xov.|ven.|sáb.|domingo|luns|martes|mércores|xoves|venres|sábado|d.|l.|m.|m.|x.|v.|s.|1|dom.|luns|mar.|mér.|xov.|ven.|sáb.|domingo|luns|martes|mércores|xoves|venres|sábado|D|L|M|M|X|V|S|a.C.|d.C.|antes de Cristo|despois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|52|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d 'de' MMM|MMMEd|E, d 'de' MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM/y|yMMM|MMM 'de' y|yMMMd|d 'de' MMM 'de' y|yMMMEd|E, d 'de' MMM 'de' y|yMMMM|MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|Br|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|$MX|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|руб|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0} a.|1|{0} a.|0||0||0||0|||{0} m.|1|{0} m.|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} d|1|{0} d|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )
