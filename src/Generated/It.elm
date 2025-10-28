module Generated.It exposing (it, it_CH, it_SM, it_VA)

{-|

@docs it, it_CH, it_SM, it_VA

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
        [ ( "it"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
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

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it : Internal.Locale.Locale
it =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "it||||AM|PM|8|afternoon1|di pomeriggio|am|AM|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|PM|AM|PM|8|afternoon1|del pomeriggio|am|AM|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|PM|m.|p.|8|afternoon1|di pomeriggio|am|m.|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|p.|dd/MM/yy|d MMM y|d MMMM y|EEEE d MMMM y|gen|feb|mar|apr|mag|giu|lug|ago|set|ott|nov|dic|gennaio|febbraio|marzo|aprile|maggio|giugno|luglio|agosto|settembre|ottobre|novembre|dicembre|G|F|M|A|M|G|L|A|S|O|N|D|0|dom|lun|mar|mer|gio|ven|sab|domenica|lunedì|martedì|mercoledì|giovedì|venerdì|sabato|D|L|M|M|G|V|S|0|a.C.|d.C.|avanti Cristo|dopo Cristo|aC|dC|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'settimana' W 'di' MMMM|MMMMW-count-other|'settimana' W 'di' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'settimana' w 'del' Y|yw-count-other|'settimana' w 'del' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|Br|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|NKr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anni|1|{0} anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0} sett.|1|{0} sett.|0||0||0||0|||{0} giorni|1|{0} giorno|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anni|1|{0} anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0} settimane|1|{0} settimana|0||0||0||0|||{0} giorni|1|{0} giorno|0||0||0||0|||{0} ore|1|{0} ora|0||0||0||0|||{0} minuti|1|{0} minuto|0||0||0||0|||{0} secondi|1|{0} secondo|0||0||0||0|||{0} millisecondi|1|{0} millisecondo|0||0||0||0|||{0}anni|1|{0}anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0}sett.|1|{0}sett.|0||0||0||0|||{0}gg|1|{0}g|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it_CH : Internal.Locale.Locale
it_CH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "it||CH||AM|PM|8|afternoon1|di pomeriggio|am|AM|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|PM|AM|PM|8|afternoon1|del pomeriggio|am|AM|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|PM|m.|p.|8|afternoon1|di pomeriggio|am|m.|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|p.|dd.MM.yy|d MMM y|d MMMM y|EEEE, d MMMM y|gen|feb|mar|apr|mag|giu|lug|ago|set|ott|nov|dic|gennaio|febbraio|marzo|aprile|maggio|giugno|luglio|agosto|settembre|ottobre|novembre|dicembre|G|F|M|A|M|G|L|A|S|O|N|D|0|dom|lun|mar|mer|gio|ven|sab|domenica|lunedì|martedì|mercoledì|giovedì|venerdì|sabato|D|L|M|M|G|V|S|0|a.C.|d.C.|avanti Cristo|dopo Cristo|aC|dC|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'settimana' W 'di' MMMM|MMMMW-count-other|'settimana' W 'di' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'settimana' w 'del' Y|yw-count-other|'settimana' w 'del' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W’|.|-||||||E2W’|.|¤-||¤\u{00A0}||¤\u{00A0}||E0W’|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|Br|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|NKr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anni|1|{0} anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0} sett.|1|{0} sett.|0||0||0||0|||{0} giorni|1|{0} giorno|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anni|1|{0} anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0} settimane|1|{0} settimana|0||0||0||0|||{0} giorni|1|{0} giorno|0||0||0||0|||{0} ore|1|{0} ora|0||0||0||0|||{0} minuti|1|{0} minuto|0||0||0||0|||{0} secondi|1|{0} secondo|0||0||0||0|||{0} millisecondi|1|{0} millisecondo|0||0||0||0|||{0}anni|1|{0}anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0}sett.|1|{0}sett.|0||0||0||0|||{0}gg|1|{0}g|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it_SM : Internal.Locale.Locale
it_SM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "it||SM||AM|PM|8|afternoon1|di pomeriggio|am|AM|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|PM|AM|PM|8|afternoon1|del pomeriggio|am|AM|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|PM|m.|p.|8|afternoon1|di pomeriggio|am|m.|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|p.|dd/MM/yy|d MMM y|d MMMM y|EEEE d MMMM y|gen|feb|mar|apr|mag|giu|lug|ago|set|ott|nov|dic|gennaio|febbraio|marzo|aprile|maggio|giugno|luglio|agosto|settembre|ottobre|novembre|dicembre|G|F|M|A|M|G|L|A|S|O|N|D|0|dom|lun|mar|mer|gio|ven|sab|domenica|lunedì|martedì|mercoledì|giovedì|venerdì|sabato|D|L|M|M|G|V|S|0|a.C.|d.C.|avanti Cristo|dopo Cristo|aC|dC|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'settimana' W 'di' MMMM|MMMMW-count-other|'settimana' W 'di' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'settimana' w 'del' Y|yw-count-other|'settimana' w 'del' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|Br|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|NKr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anni|1|{0} anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0} sett.|1|{0} sett.|0||0||0||0|||{0} giorni|1|{0} giorno|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anni|1|{0} anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0} settimane|1|{0} settimana|0||0||0||0|||{0} giorni|1|{0} giorno|0||0||0||0|||{0} ore|1|{0} ora|0||0||0||0|||{0} minuti|1|{0} minuto|0||0||0||0|||{0} secondi|1|{0} secondo|0||0||0||0|||{0} millisecondi|1|{0} millisecondo|0||0||0||0|||{0}anni|1|{0}anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0}sett.|1|{0}sett.|0||0||0||0|||{0}gg|1|{0}g|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it_VA : Internal.Locale.Locale
it_VA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "it||VA||AM|PM|8|afternoon1|di pomeriggio|am|AM|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|PM|AM|PM|8|afternoon1|del pomeriggio|am|AM|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|PM|m.|p.|8|afternoon1|di pomeriggio|am|m.|evening1|di sera|midnight|mezzanotte|morning1|di mattina|night1|di notte|noon|mezzogiorno|pm|p.|dd/MM/yy|d MMM y|d MMMM y|EEEE d MMMM y|gen|feb|mar|apr|mag|giu|lug|ago|set|ott|nov|dic|gennaio|febbraio|marzo|aprile|maggio|giugno|luglio|agosto|settembre|ottobre|novembre|dicembre|G|F|M|A|M|G|L|A|S|O|N|D|0|dom|lun|mar|mer|gio|ven|sab|domenica|lunedì|martedì|mercoledì|giovedì|venerdì|sabato|D|L|M|M|G|V|S|0|a.C.|d.C.|avanti Cristo|dopo Cristo|aC|dC|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'settimana' W 'di' MMMM|MMMMW-count-other|'settimana' W 'di' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'settimana' w 'del' Y|yw-count-other|'settimana' w 'del' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|Br|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|NKr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} anni|1|{0} anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0} sett.|1|{0} sett.|0||0||0||0|||{0} giorni|1|{0} giorno|0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} anni|1|{0} anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0} settimane|1|{0} settimana|0||0||0||0|||{0} giorni|1|{0} giorno|0||0||0||0|||{0} ore|1|{0} ora|0||0||0||0|||{0} minuti|1|{0} minuto|0||0||0||0|||{0} secondi|1|{0} secondo|0||0||0||0|||{0} millisecondi|1|{0} millisecondo|0||0||0||0|||{0}anni|1|{0}anno|0||0||0||0|||{0} mesi|1|{0} mese|0||0||0||0|||{0}sett.|1|{0}sett.|0||0||0||0|||{0}gg|1|{0}g|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0}, {1}|{0}, {1}|{0} e {1}|{0} e {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
