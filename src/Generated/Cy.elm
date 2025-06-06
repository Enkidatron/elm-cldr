module Generated.Cy exposing (cy)

{-|

@docs cy

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "cy"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
cy : Internal.Locale.Locale
cy =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "cy||||AM|PM|7|afternoon1|y prynhawn|am|AM|evening1|yr hwyr|midnight|canol nos|morning1|y bore|noon|canol dydd|pm|PM|yb|yh|7|afternoon1|y prynhawn|am|yb|evening1|yr hwyr|midnight|canol nos|morning1|y bore|noon|canol dydd|pm|yh|b|h|7|afternoon1|yn y prynhawn|am|b|evening1|min nos|midnight|canol nos|morning1|yn y bore|noon|canol dydd|pm|h|dd/MM/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Ion|Chwef|Maw|Ebr|Mai|Meh|Gorff|Awst|Medi|Hyd|Tach|Rhag|Ionawr|Chwefror|Mawrth|Ebrill|Mai|Mehefin|Gorffennaf|Awst|Medi|Hydref|Tachwedd|Rhagfyr|I|Ch|M|E|M|M|G|A|M|H|T|Rh|1|Ion|Chw|Maw|Ebr|Mai|Meh|Gor|Awst|Medi|Hyd|Tach|Rhag|Ionawr|Chwefror|Mawrth|Ebrill|Mai|Mehefin|Gorffennaf|Awst|Medi|Hydref|Tachwedd|Rhagfyr|I|Ch|M|E|M|M|G|A|M|H|T|Rh|Sul|Llun|Maw|Mer|Iau|Gwen|Sad|Dydd Sul|Dydd Llun|Dydd Mawrth|Dydd Mercher|Dydd Iau|Dydd Gwener|Dydd Sadwrn|S|Ll|M|M|I|G|S|1|Sul|Llun|Maw|Mer|Iau|Gwe|Sad|Dydd Sul|Dydd Llun|Dydd Mawrth|Dydd Mercher|Dydd Iau|Dydd Gwener|Dydd Sadwrn|S|Ll|M|M|I|G|S|CC|OC|Cyn Crist|Oed Crist|C|O|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1}, {0}|{1}, {0}|58|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|MMMM d|MMMMW-count-zero|'wythnos' W 'o' MMMM|MMMMW-count-one|'wythnos' W 'o' MMMM|MMMMW-count-two|'wythnos' W 'o' MMMM|MMMMW-count-few|'wythnos' W 'o' MMMM|MMMMW-count-many|'wythnos' W 'o' MMMM|MMMMW-count-other|'wythnos' W 'o' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQ|Q y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|'wythnos' w 'o' Y|yw-count-one|'wythnos' w 'o' Y|yw-count-two|'wythnos' w 'o' Y|yw-count-few|'wythnos' w 'o' Y|yw-count-many|'wythnos' w 'o' Y|yw-count-other|'wythnos' w 'o' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|TK|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|BWP|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|ZAR|ZMW|ZMW|"
        )
