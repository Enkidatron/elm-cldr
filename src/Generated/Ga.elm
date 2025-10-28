module Generated.Ga exposing (ga, ga_GB)

{-|

@docs ga, ga_GB

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.PluralRule


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


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
    , two =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 2, [] )
                    }
                    []
                )
                []
            )
    , zero = Nothing
    , few =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Range 3 6, [] )
                    }
                    []
                )
                []
            )
    , many =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Range 7 10, [] )
                    }
                    []
                )
                []
            )
    }


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ga : Internal.Locale.Locale
ga =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ga||||r.n.|i.n.|2|am|r.n.|pm|i.n.|r.n.|i.n.|2|am|r.n.|pm|i.n.|r.n.|i.n.|2|am|r.n.|pm|i.n.|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|Ean|Feabh|Márta|Aib|Beal|Meith|Iúil|Lún|MFómh|DFómh|Samh|Noll|Eanáir|Feabhra|Márta|Aibreán|Bealtaine|Meitheamh|Iúil|Lúnasa|Meán Fómhair|Deireadh Fómhair|Samhain|Nollaig|E|F|M|A|B|M|I|L|M|D|S|N|0|Domh|Luan|Máirt|Céad|Déar|Aoine|Sath|Dé Domhnaigh|Dé Luain|Dé Máirt|Dé Céadaoin|Déardaoin|Dé hAoine|Dé Sathairn|D|L|M|C|D|A|S|0|RC|AD|Roimh Chríost|Anno Domini|RC|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|LL|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'seachtain' 'a' W 'i' MMMM|MMMMW-count-two|'seachtain' 'a' W 'i' MMMM|MMMMW-count-few|'seachtain' 'a' W 'i' MMMM|MMMMW-count-many|'seachtain' 'a' W 'i' MMMM|MMMMW-count-other|'seachtain' 'a' W 'i' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'seachtain' 'a' w 'in' Y|yw-count-two|'seachtain' 'a' w 'in' Y|yw-count-few|'seachtain' 'a' w 'in' Y|yw-count-many|'seachtain' 'a' w 'in' Y|yw-count-other|'seachtain' 'a' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|{0} bl|1|{0} bl|1|{0} bl|0||1|{0} bl|1|{0} bl||{0} m|1|{0} mí|1|{0} mí|0||1|{0} mí|1|{0} mí||{0} scht|1|{0} scht|1|{0} scht|0||1|{0} scht|1|{0} scht||{0} lá|1|{0} lá|1|{0} lá|0||1|{0} lá|1|{0} lá||{0} u|1|{0} u|1|{0} u|0||1|{0} u|1|{0} u||{0} nóim|1|{0} nóim|1|{0} nóim|0||1|{0} nóim|1|{0} nóim||{0} soic|1|{0} soic|1|{0} soic|0||1|{0} soic|1|{0} soic||{0} ms|0||0||0||0||0|||{0} bl|1|{0} bhliain|1|{0} bhl|0||1|{0} bl|1|{0} mbl||{0} mí|1|{0} mhí|1|{0} mhí|0||1|{0} mhí|1|{0} mí||{0} scht|1|{0} scht|1|{0} scht|0||1|{0} scht|1|{0} scht||{0} lá|1|{0} lá|1|{0} lá|0||1|{0} lá|1|{0} lá||{0} u|1|{0} u|1|{0} u|0||1|{0} u|1|{0} u||{0} nóim|1|{0} nóim|1|{0} nóim|0||1|{0} nóim|1|{0} nóim||{0} soic|1|{0} soic|1|{0} shoic|0||1|{0} shoic|1|{0} soic||{0} ms|0||0||0||0||0|||{0} bl|1|{0} bl|1|{0} bl|0||1|{0} bl|1|{0} bl||{0} m|1|{0}m|1|{0}m|0||1|{0}m|1|{0}m||{0} scht|1|{0} scht|1|{0} scht|0||1|{0} scht|1|{0} scht||{0} lá|1|{0} lá|1|{0} lá|0||1|{0} lá|1|{0} lá||{0} u|1|{0} u|1|{0} u|0||1|{0} u|1|{0} u||{0} nóim|1|{0} nóim|1|{0} nóim|0||1|{0} nóim|1|{0}n||{0} soic|1|{0} soic|1|{0} soic|0||1|{0} soic|1|{0} soic||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} agus {1}|{0} agus {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ga_GB : Internal.Locale.Locale
ga_GB =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ga||GB||r.n.|i.n.|2|am|r.n.|pm|i.n.|r.n.|i.n.|2|am|r.n.|pm|i.n.|r.n.|i.n.|2|am|r.n.|pm|i.n.|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|Ean|Feabh|Márta|Aib|Beal|Meith|Iúil|Lún|MFómh|DFómh|Samh|Noll|Eanáir|Feabhra|Márta|Aibreán|Bealtaine|Meitheamh|Iúil|Lúnasa|Meán Fómhair|Deireadh Fómhair|Samhain|Nollaig|E|F|M|A|B|M|I|L|M|D|S|N|0|Domh|Luan|Máirt|Céad|Déar|Aoine|Sath|Dé Domhnaigh|Dé Luain|Dé Máirt|Dé Céadaoin|Déardaoin|Dé hAoine|Dé Sathairn|D|L|M|C|D|A|S|0|RC|AD|Roimh Chríost|Anno Domini|RC|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|LL|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'seachtain' 'a' W 'i' MMMM|MMMMW-count-two|'seachtain' 'a' W 'i' MMMM|MMMMW-count-few|'seachtain' 'a' W 'i' MMMM|MMMMW-count-many|'seachtain' 'a' W 'i' MMMM|MMMMW-count-other|'seachtain' 'a' W 'i' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'seachtain' 'a' w 'in' Y|yw-count-two|'seachtain' 'a' w 'in' Y|yw-count-few|'seachtain' 'a' w 'in' Y|yw-count-many|'seachtain' 'a' w 'in' Y|yw-count-other|'seachtain' 'a' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|{0} bl|1|{0} bl|1|{0} bl|0||1|{0} bl|1|{0} bl||{0} m|1|{0} mí|1|{0} mí|0||1|{0} mí|1|{0} mí||{0} scht|1|{0} scht|1|{0} scht|0||1|{0} scht|1|{0} scht||{0} lá|1|{0} lá|1|{0} lá|0||1|{0} lá|1|{0} lá||{0} u|1|{0} u|1|{0} u|0||1|{0} u|1|{0} u||{0} nóim|1|{0} nóim|1|{0} nóim|0||1|{0} nóim|1|{0} nóim||{0} soic|1|{0} soic|1|{0} soic|0||1|{0} soic|1|{0} soic||{0} ms|0||0||0||0||0|||{0} bl|1|{0} bhliain|1|{0} bhl|0||1|{0} bl|1|{0} mbl||{0} mí|1|{0} mhí|1|{0} mhí|0||1|{0} mhí|1|{0} mí||{0} scht|1|{0} scht|1|{0} scht|0||1|{0} scht|1|{0} scht||{0} lá|1|{0} lá|1|{0} lá|0||1|{0} lá|1|{0} lá||{0} u|1|{0} u|1|{0} u|0||1|{0} u|1|{0} u||{0} nóim|1|{0} nóim|1|{0} nóim|0||1|{0} nóim|1|{0} nóim||{0} soic|1|{0} soic|1|{0} shoic|0||1|{0} shoic|1|{0} soic||{0} ms|0||0||0||0||0|||{0} bl|1|{0} bl|1|{0} bl|0||1|{0} bl|1|{0} bl||{0} m|1|{0}m|1|{0}m|0||1|{0}m|1|{0}m||{0} scht|1|{0} scht|1|{0} scht|0||1|{0} scht|1|{0} scht||{0} lá|1|{0} lá|1|{0} lá|0||1|{0} lá|1|{0} lá||{0} u|1|{0} u|1|{0} u|0||1|{0} u|1|{0} u||{0} nóim|1|{0} nóim|1|{0} nóim|0||1|{0} nóim|1|{0}n||{0} soic|1|{0} soic|1|{0} soic|0||1|{0} soic|1|{0} soic||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} agus {1}|{0} agus {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
