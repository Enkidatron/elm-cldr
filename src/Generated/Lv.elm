module Generated.Lv exposing (lv)

{-|

@docs lv

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "lv"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 23, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : y. 'gada' d. MMM
  - Long : y. 'gada' d. MMMM
  - Full : EEEE, y. 'gada' d. MMMM

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lv : Internal.Locale.Locale
lv =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "lv||||priekšp.|pēcp.|8|afternoon1|pēcpusd.|am|priekšp.|evening1|vakarā|midnight|pusnaktī|morning1|no rīta|night1|naktī|noon|pusd.|pm|pēcp.|priekšpusdienā|pēcpusdienā|8|afternoon1|pēcpusdienā|am|priekšpusdienā|evening1|vakarā|midnight|pusnaktī|morning1|no rīta|night1|naktī|noon|pusdienlaikā|pm|pēcpusdienā|priekšp.|pēcp.|8|afternoon1|pēcpusd.|am|priekšp.|evening1|vakarā|midnight|pusnaktī|morning1|no rīta|night1|naktī|noon|pusd.|pm|pēcp.|dd.MM.yy|y. 'gada' d. MMM|y. 'gada' d. MMMM|EEEE, y. 'gada' d. MMMM|janv.|febr.|marts|apr.|maijs|jūn.|jūl.|aug.|sept.|okt.|nov.|dec.|janvāris|februāris|marts|aprīlis|maijs|jūnijs|jūlijs|augusts|septembris|oktobris|novembris|decembris|J|F|M|A|M|J|J|A|S|O|N|D|0|svētd.|pirmd.|otrd.|trešd.|ceturtd.|piektd.|sestd.|svētdiena|pirmdiena|otrdiena|trešdiena|ceturtdiena|piektdiena|sestdiena|S|P|O|T|C|P|S|1|Svētd.|Pirmd.|Otrd.|Trešd.|Ceturtd.|Piektd.|Sestd.|Svētdiena|Pirmdiena|Otrdiena|Trešdiena|Ceturtdiena|Piektdiena|Sestdiena|S|P|O|T|C|P|S|p.m.ē.|m.ē.|pirms mūsu ēras|mūsu ērā|p.m.ē.|m.ē.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|53|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E, d.|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|G y. 'g'.|GyMd|GGGGG dd-MM-y|GyMMM|G y. 'g'. MMM|GyMMMd|G y. 'g'. d. MMM|GyMMMEd|E, G y. 'g'. d. MMM|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM.|MEd|E, dd.MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-zero|MMMM, W. 'nedēļa'|MMMMW-count-one|MMMM, W. 'nedēļa'|MMMMW-count-other|MMMM, W. 'nedēļa'|mmss|mm:ss|ms|mm:ss|y|y. 'g'.|yM|MM.y.|yMd|d.MM.y.|yMEd|E, d.MM.y.|yMMM|y. 'g'. MMM|yMMMd|y. 'g'. d. MMM|yMMMEd|E, y. 'g'. d. MMM|yMMMM|y. 'g'. MMMM|yQQQ|y. 'g'. QQQ|yQQQQ|y. 'g'. QQQQ|yw-count-zero|Y. 'g'. w. 'nedēļa'|yw-count-one|Y. 'g'. w. 'nedēļa'|yw-count-other|Y. 'g'. w. 'nedēļa'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GHS|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
