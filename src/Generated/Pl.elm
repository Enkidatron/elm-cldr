module Generated.Pl exposing (pl)

{-|

@docs pl

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "pl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pl : Internal.Locale.Locale
pl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "pl||||AM|PM|9|afternoon1|po południu|am|AM|evening1|wieczorem|midnight|o północy|morning1|rano|morning2|przed południem|night1|w nocy|noon|w południe|pm|PM|AM|PM|9|afternoon1|po południu|am|AM|evening1|wieczorem|midnight|o północy|morning1|rano|morning2|przed południem|night1|w nocy|noon|w południe|pm|PM|a|p|9|afternoon1|po poł.|am|a|evening1|wiecz.|midnight|o półn.|morning1|rano|morning2|przed poł.|night1|w nocy|noon|w poł.|pm|p|d.MM.y|d MMM y|d MMMM y|EEEE, d MMMM y|sty|lut|mar|kwi|maj|cze|lip|sie|wrz|paź|lis|gru|stycznia|lutego|marca|kwietnia|maja|czerwca|lipca|sierpnia|września|października|listopada|grudnia|s|l|m|k|m|c|l|s|w|p|l|g|1|sty|lut|mar|kwi|maj|cze|lip|sie|wrz|paź|lis|gru|styczeń|luty|marzec|kwiecień|maj|czerwiec|lipiec|sierpień|wrzesień|październik|listopad|grudzień|S|L|M|K|M|C|L|S|W|P|L|G|niedz.|pon.|wt.|śr.|czw.|pt.|sob.|niedziela|poniedziałek|wtorek|środa|czwartek|piątek|sobota|n|p|w|ś|c|p|s|1|niedz.|pon.|wt.|śr.|czw.|pt.|sob.|niedziela|poniedziałek|wtorek|środa|czwartek|piątek|sobota|N|P|W|Ś|C|P|S|p.n.e.|n.e.|przed naszą erą|naszej ery|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|59|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d.MM.y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|LLLL y G|GyMMMMd|d MMMM y G|GyMMMMEd|E, d MMMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.MM|MEd|E, d.MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|LLLL, 'tydz'. W|MMMMW-count-few|LLLL, 'tydz'. W|MMMMW-count-many|LLLL, 'tydz'. W|MMMMW-count-other|LLLL, 'tydz'. W|ms|mm:ss|y|y|yM|MM.y|yMd|d.MM.y|yMEd|E, d.MM.y|yMMM|LLL y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|LLLL y|yMMMMd|d MMMM y|yMMMMEd|E, d MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y, 'tydz'. w|yw-count-few|Y, 'tydz'. w|yw-count-many|Y, 'tydz'. w|yw-count-other|Y, 'tydz'. w|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|105|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lej|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
