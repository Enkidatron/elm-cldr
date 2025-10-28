module Generated.Es exposing
    ( es, es_419, es_AR, es_BO, es_BR, es_BZ
    , es_CL, es_CO, es_CR, es_CU, es_DO, es_EA
    , es_EC, es_GQ, es_GT, es_HN, es_IC, es_MX
    , es_NI, es_PA, es_PE, es_PH, es_PR, es_PY
    , es_SV, es_US, es_UY, es_VE
    )

{-|

@docs es, es_419, es_AR, es_BO, es_BR, es_BZ
@docs es_CL, es_CO, es_CR, es_CU, es_DO, es_EA
@docs es_EC, es_GQ, es_GT, es_HN, es_IC, es_MX
@docs es_NI, es_PA, es_PE, es_PH, es_PR, es_PY
@docs es_SV, es_US, es_UY, es_VE

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
        [ ( "es"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        , ( "es_co"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 24, 0 ) "night1"
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
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es : Internal.Locale.Locale
es =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|X|J|V|S|0|a. C.|d. C.|antes de Cristo|después de Cristo|a. C.|d. C.|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss (zzzz)|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, H:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, H:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|H|hm|h:mm\u{202F}a|Hm|H:mm|hms|h:mm:ss\u{202F}a|Hms|H:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm\u{202F}a v|Hmv|H:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|EEE, d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|EEE, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|EGP|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} a|1|{0} a|0||0||0||0|||{0} m.|1|{0} m.|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} d|0||0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}sem|1|{0}sem|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_419 : Internal.Locale.Locale
es_419 =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||419||a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_AR : Internal.Locale.Locale
es_AR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||AR||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|tarde|morning1|madrugada|morning2|mañana|night1|noche|noon|mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|tarde|morning1|madrugada|morning2|mañana|night1|noche|noon|mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|tarde|morning1|madrugada|morning2|mañana|night1|noche|noon|mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d 'de' MMM 'de' y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|hh:mm:ss|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss (vvvv)|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d-M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d/M/y|yMEd|E, d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d 'de' MMM 'de' y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} años|1|{0} año|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} seg.|1|{0} seg.|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}a.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}seg.|1|{0}seg.|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_BO : Internal.Locale.Locale
es_BO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||BO||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM 'de' y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-¤||¤||¤||E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_BR : Internal.Locale.Locale
es_BR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||BR||a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_BZ : Internal.Locale.Locale
es_BZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||BZ||a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd-MM-yy
  - Medium : dd-MM-y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_CL : Internal.Locale.Locale
es_CL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||CL||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|dd-MM-yy|dd-MM-y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|1|ene.|feb.|mar.|abr.|may.|jun.|jul.|ago.|sept.|oct.|nov.|dic.|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd-MM|MEd|E, dd-MM|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|MM-y|yMd|dd-MM-y|yMEd|E dd-MM-y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|¤-||¤||¤||E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_CO : Internal.Locale.Locale
es_CO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||CO||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|m.|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|m.|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|m.|pm|p.\u{202F}m.|d/MM/yy|d/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|1|ene.|feb.|mar.|abr.|may.|jun.|jul.|ago.|sept.|oct.|nov.|dic.|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|m|J|V|S|1|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|d|l|m|m|j|v|s|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM 'de' y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM 'de' y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|H|hm|h:mm\u{202F}a|Hm|H:mm|hms|h:mm:ss\u{202F}a|Hms|H:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d 'de' MMM|MMMdd|d 'de' MMM|MMMEd|E, d 'de' MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|EEE, d/M/y|yMM|M/y|yMMM|MMM 'de' y|yMMMd|d 'de' MMM 'de' y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} a.|1|{0} a.|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0} a.|1|{0} a.|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} h|1|{0} h|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} s|1|{0} s|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_CR : Internal.Locale.Locale
es_CR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||CR||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-¤||¤||¤||E0W\u{00A0}|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_CU : Internal.Locale.Locale
es_CU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||CU||a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_DO : Internal.Locale.Locale
es_DO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||DO||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|tarde|morning1|día|morning2|mañana|night1|noche|noon|mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM 'de' y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|RD$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} seg.|1|{0} seg.|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}d.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} y {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es_EA : Internal.Locale.Locale
es_EA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||EA||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|X|J|V|S|0|a. C.|d. C.|antes de Cristo|después de Cristo|a. C.|d. C.|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss (zzzz)|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, H:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, H:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|H|hm|h:mm\u{202F}a|Hm|H:mm|hms|h:mm:ss\u{202F}a|Hms|H:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm\u{202F}a v|Hmv|H:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|EEE, d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|EEE, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|EGP|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} a|1|{0} a|0||0||0||0|||{0} m.|1|{0} m.|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} d|0||0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}sem|1|{0}sem|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_EC : Internal.Locale.Locale
es_EC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||EC||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|¤-||¤||¤||E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|$|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es_GQ : Internal.Locale.Locale
es_GQ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||GQ||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|X|J|V|S|0|a. C.|d. C.|antes de Cristo|después de Cristo|a. C.|d. C.|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss (zzzz)|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, H:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, H:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|H|hm|h:mm\u{202F}a|Hm|H:mm|hms|h:mm:ss\u{202F}a|Hms|H:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm\u{202F}a v|Hmv|H:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|EEE, d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|EEE, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W.|,|-||||||E2W.|,|-¤||¤||¤||E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|EGP|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} a|1|{0} a|0||0||0||0|||{0} m.|1|{0} m.|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} d|0||0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}sem|1|{0}sem|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_GT : Internal.Locale.Locale
es_GT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||GT||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/MM/yy|d/MM/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : dd 'de' MMMM 'de' y
  - Full : EEEE dd 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_HN : Internal.Locale.Locale
es_HN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||HN||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|dd 'de' MMMM 'de' y|EEEE dd 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es_IC : Internal.Locale.Locale
es_IC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||IC||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|X|J|V|S|0|a. C.|d. C.|antes de Cristo|después de Cristo|a. C.|d. C.|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss (zzzz)|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, H:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, H:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|H|hm|h:mm\u{202F}a|Hm|H:mm|hms|h:mm:ss\u{202F}a|Hms|H:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm\u{202F}a v|Hmv|H:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|EEE, d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|EEE, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|EGP|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} a|1|{0} a|0||0||0||0|||{0} m.|1|{0} m.|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} d|0||0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}sem|1|{0}sem|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_MX : Internal.Locale.Locale
es_MX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||MX||a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|dd/MM/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sep|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss (vvvv)|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E d 'de' MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|EEE, d 'de' MMM 'de' y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|p.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MRO|MRU|MRU|UM|MUR|Rs|MXN|$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} a|1|{0} a|0||0||0||0|||{0} m|1|{0} m.|0||0||0||0|||{0} sem|1|{0} sem.|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}sem|1|{0}sem|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_NI : Internal.Locale.Locale
es_NI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||NI||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : MM/dd/yy
  - Medium : MM/dd/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PA : Internal.Locale.Locale
es_PA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||PA||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|mediodía|pm|p.\u{202F}m.|MM/dd/yy|MM/dd/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|MM/dd|MEd|E, MM/dd|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|MM/dd/y|yMEd|E MM/dd/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PAB|B/.|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PE : Internal.Locale.Locale
es_PE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||PE||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/MM/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene.|feb.|mar.|abr.|may.|jun.|jul.|ago.|set.|oct.|nov.|dic.|enero|febrero|marzo|abril|mayo|junio|julio|agosto|setiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|1|Ene.|Feb.|Mar.|Abr.|May.|Jun.|Jul.|Ago.|Set.|Oct.|Nov.|Dic.|Enero|Febrero|Marzo|Abril|Mayo|Junio|Julio|Agosto|Setiembre|Octubre|Noviembre|Diciembre|E|F|M|A|M|J|J|A|S|O|N|D|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PEN|S/|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PH : Internal.Locale.Locale
es_PH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||PH||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|X|J|V|S|0|a. C.|d. C.|antes de Cristo|después de Cristo|a. C.|d. C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, H:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, H:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|H|hm|h:mm\u{202F}a|Hm|H:mm|hms|h:mm:ss\u{202F}a|Hms|H:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm\u{202F}a v|Hmv|H:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|EEE, d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|EEE, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|EGP|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} a|1|{0} a|0||0||0||0|||{0} m.|1|{0} m.|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} d|0||0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}sem|1|{0}sem|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : MM/dd/yy
  - Medium : MM/dd/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PR : Internal.Locale.Locale
es_PR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||PR||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|MM/dd/yy|MM/dd/y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|MM/dd|MEd|E, MM/dd|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|MM/dd/y|yMEd|E MM/dd/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|$|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PY : Internal.Locale.Locale
es_PY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||PY||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene.|feb.|mar.|abr.|may.|jun.|jul.|ago.|sept.|oct.|nov.|dic.|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|¤\u{00A0}-||¤\u{00A0}||¤\u{00A0}||E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|Gs.|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} seg.|1|{0} seg.|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_SV : Internal.Locale.Locale
es_SV =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||SV||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|$|UYU|$|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_US : Internal.Locale.Locale
es_US =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||US||a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|a.m.|p.m.|7|am|a.m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.m.|d/M/y|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene|feb|mar|abr|may|jun|jul|ago|sept|oct|nov|dic|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss (vvvv)|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d 'de' MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|EEE, d 'de' MMM 'de' y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a|0||0||0||0|||{0} mm.|1|{0} m|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_UY : Internal.Locale.Locale
es_UY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||UY||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene.|feb.|mar.|abr.|may.|jun.|jul.|ago.|set.|oct.|nov.|dic.|enero|febrero|marzo|abril|mayo|junio|julio|agosto|setiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|1|Ene.|Feb.|Mar.|Abr.|May.|Jun.|Jul.|Ago.|Set.|Oct.|Nov.|Dic.|Enero|Febrero|Marzo|Abril|Mayo|Junio|Julio|Agosto|Setiembre|Octubre|Noviembre|Diciembre|E|F|M|A|M|J|J|A|S|O|N|D|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|UYW|UP|VEF|BsF|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_VE : Internal.Locale.Locale
es_VE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "es||VE||a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|a.\u{00A0}m.|p.\u{00A0}m.|7|am|a.\u{00A0}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{00A0}m.|a.\u{202F}m.|p.\u{202F}m.|7|am|a.\u{202F}m.|evening1|de la tarde|morning1|de la madrugada|morning2|de la mañana|night1|de la noche|noon|del mediodía|pm|p.\u{202F}m.|d/M/yy|d MMM y|d 'de' MMMM 'de' y|EEEE, d 'de' MMMM 'de' y|ene.|feb.|mar.|abr.|may.|jun.|jul.|ago.|sept.|oct.|nov.|dic.|enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre|E|F|M|A|M|J|J|A|S|O|N|D|0|dom|lun|mar|mié|jue|vie|sáb|domingo|lunes|martes|miércoles|jueves|viernes|sábado|D|L|M|M|J|V|S|0|a.C.|d.C.|antes de Cristo|después de Cristo|a.C.|d.C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d 'de' MMM 'de' y G|GyMMMEd|E, d MMM y G|GyMMMM|MMMM 'de' y G|GyMMMMd|d 'de' MMMM 'de' y G|GyMMMMEd|E, d 'de' MMMM 'de' y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmsvvvv|h:mm:ss\u{202F}a (vvvv)|Hmsvvvv|HH:mm:ss vvvv|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMd|d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMdd|dd-MMM|MMMEd|E, d MMM|MMMMd|d 'de' MMMM|MMMMEd|E, d 'de' MMMM|MMMMW-count-one|'semana' W 'de' MMMM|MMMMW-count-other|'semana' W 'de' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM 'de' y|yMMMMd|d 'de' MMMM 'de' y|yMMMMEd|EEE, d 'de' MMMM 'de' y|yQQQ|QQQ 'de' y|yQQQQ|QQQQ 'de' y|yw-count-one|'semana' w 'de' Y|yw-count-other|'semana' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|¤-||¤||¤||E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|FK£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|SD£|STN|Db|SYP|S£|THB|THB|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs.|VES|Bs.S|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} aa.|1|{0} a.|0||0||0||0|||{0} mm.|1|{0} m.|0||0||0||0|||{0} sems.|1|{0} sem.|0||0||0||0|||{0} dd.|1|{0} d.|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} años|1|{0} año|0||0||0||0|||{0} meses|1|{0} mes|0||0||0||0|||{0} semanas|1|{0} semana|0||0||0||0|||{0} días|1|{0} día|0||0||0||0|||{0} horas|1|{0} hora|0||0||0||0|||{0} minutos|1|{0} minuto|0||0||0||0|||{0} segundos|1|{0} segundo|0||0||0||0|||{0} milisegundos|1|{0} milisegundo|0||0||0||0|||{0}aa.|1|{0}a.|0||0||0||0|||{0}mm.|1|{0}m.|0||0||0||0|||{0}sems.|1|{0}sem.|0||0||0||0|||{0}dd.|1|{0}d.|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0}, {1}|{0}, {1}|{0} y {1}|{0} y {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
