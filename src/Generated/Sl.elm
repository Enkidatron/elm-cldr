module Generated.Sl exposing (sl)

{-|

@docs sl

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "sl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d. M. yy
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sl : Internal.Locale.Locale
sl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sl||||dop.|pop.|9|afternoon1|pop.|am|dop.|evening1|zveč.|midnight|opoln.|morning1|zjut.|morning2|dop.|night1|ponoči|noon|opold.|pm|pop.|dop.|pop.|9|afternoon1|popoldan|am|dop.|evening1|zvečer|midnight|opolnoči|morning1|zjutraj|morning2|dopoldan|night1|ponoči|noon|opoldne|pm|pop.|d|p|9|afternoon1|p|am|d|evening1|zv|midnight|24.00|morning1|zj|morning2|d|night1|po|noon|12.00|pm|p|d. M. yy|d. MMM y|d. MMMM y|EEEE, d. MMMM y|jan.|feb.|mar.|apr.|maj|jun.|jul.|avg.|sep.|okt.|nov.|dec.|januar|februar|marec|april|maj|junij|julij|avgust|september|oktober|november|december|j|f|m|a|m|j|j|a|s|o|n|d|0|ned.|pon.|tor.|sre.|čet.|pet.|sob.|nedelja|ponedeljek|torek|sreda|četrtek|petek|sobota|n|p|t|s|č|p|s|0|pr. Kr.|po Kr.|pred Kristusom|po Kristusu|pr. Kr.|po Kr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyM|MMM y G|GyMd|d. M. y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h\u{202F}a|H|HH'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMW-count-one|MMMM: W. 'teden'|MMMMW-count-two|MMMM: W. 'teden'|MMMMW-count-few|MMMM: W. 'teden'|MMMMW-count-other|MMMM: W. 'teden'|ms|mm:ss|y|y|yM|M/y|yMd|d. M. y|yMEd|E, d. M. y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w. 'teden' 'leta' Y|yw-count-two|w. 'teden' 'leta' Y|yw-count-few|w. 'teden' 'leta' Y|yw-count-other|w. 'teden' 'leta' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|−||||||E2W.|,|−|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|−|\u{00A0}%||\u{00A0}%||\u{00A0}%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|XCD|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
