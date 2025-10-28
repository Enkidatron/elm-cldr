module Generated.Pt exposing
    ( pt, pt_AO, pt_CH, pt_CV, pt_GQ, pt_GW
    , pt_LU, pt_MO, pt_MZ, pt_PT, pt_ST, pt_TL
    )

{-|

@docs pt, pt_AO, pt_CH, pt_CV, pt_GQ, pt_GW
@docs pt_LU, pt_MO, pt_MZ, pt_PT, pt_ST, pt_TL

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
        [ ( "pt"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 19, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
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
                    , target = ( Internal.PluralRule.Range 0 1, [] )
                    }
                    []
                )
                []
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.E
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    [ { variable = Internal.PluralRule.I
                      , modBy = Nothing
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
                      }
                    , { variable = Internal.PluralRule.I
                      , modBy = Just 1000000
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
                      }
                    , { variable = Internal.PluralRule.V
                      , modBy = Nothing
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
                      }
                    ]
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.E
                    , modBy = Nothing
                    , operator = Internal.PluralRule.NotEquals
                    , target = ( Internal.PluralRule.Range 0 5, [] )
                    }
                    []
                ]
            )
    }


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d 'de' MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt : Internal.Locale.Locale
pt =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||||AM|PM|8|afternoon1|da tarde|am|AM|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|PM|AM|PM|8|afternoon1|da tarde|am|AM|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|PM|AM|PM|8|afternoon1|da tarde|am|AM|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|PM|dd/MM/y|d 'de' MMM 'de' y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|dom.|seg.|ter.|qua.|qui.|sex.|sáb.|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d 'de' MMM|MMMEd|E, d 'de' MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|W'ª' 'semana' 'de' MMMM|MMMMW-count-other|W'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MMM 'de' y|yMMMd|d 'de' MMM 'de' y|yMMMEd|E, d 'de' MMM 'de' y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|E, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w'ª' 'semana' 'de' Y|yw-count-other|w'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|Esc.|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|S£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_AO : Internal.Locale.Locale
pt_AO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||AO||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_CH : Internal.Locale.Locale
pt_CH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||CH||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_CV : Internal.Locale.Locale
pt_CV =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||CV||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CVE|\u{200B}|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|PTE|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_GQ : Internal.Locale.Locale
pt_GQ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||GQ||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_GW : Internal.Locale.Locale
pt_GW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||GW||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_LU : Internal.Locale.Locale
pt_LU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||LU||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LUF|F|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pt_MO : Internal.Locale.Locale
pt_MO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||MO||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MOP|MOP$|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_MZ : Internal.Locale.Locale
pt_MZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||MZ||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|MZN|MTn|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_PT : Internal.Locale.Locale
pt_PT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||PT||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_ST : Internal.Locale.Locale
pt_ST =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||ST||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_TL : Internal.Locale.Locale
pt_TL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pt||TL||a.m.|p.m.|8|afternoon1|da tarde|am|a.m.|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|p.m.|da manhã|da tarde|8|afternoon1|da tarde|am|da manhã|evening1|da noite|midnight|meia-noite|morning1|da manhã|night1|da madrugada|noon|meio-dia|pm|da tarde|a.m.|p.m.|8|afternoon1|tarde|am|a.m.|evening1|noite|midnight|meia-noite|morning1|manhã|night1|madrugada|noon|meio-dia|pm|p.m.|dd/MM/yy|dd/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|jan.|fev.|mar.|abr.|mai.|jun.|jul.|ago.|set.|out.|nov.|dez.|janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro|J|F|M|A|M|J|J|A|S|O|N|D|0|domingo|segunda|terça|quarta|quinta|sexta|sábado|domingo|segunda-feira|terça-feira|quarta-feira|quinta-feira|sexta-feira|sábado|D|S|T|Q|Q|S|S|0|a.C.|d.C.|antes de Cristo|depois de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d 'de' MMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d/MM|MMMEd|E, d/MM|MMMMd|d 'de' MMMM|MMMMEd|ccc, d 'de' MMMM|MMMMW-count-one|W.'ª' 'semana' 'de' MMMM|MMMMW-count-other|W.'ª' 'semana' 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMM|MM/y|yMMM|MM/y|yMMMd|d/MM/y|yMMMEd|E, d/MM/y|yMMMEEEEd|EEEE, d/MM/y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|ccc, d 'de' MMMM 'de' y|yQQQ|QQQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|w.'ª' 'semana' 'de' Y|yw-count-other|w.'ª' 'semana' 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PTE|\u{200B}|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milissegundos|1|{0} milissegundo|0||0||0||0|||{0} anos|1|{0} ano|0||0||0||0|||{0} meses|1|{0} mês|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} dias|1|{0} dia|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|"
        )
