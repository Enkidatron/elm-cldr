module Generated.Mk exposing (mk)

{-|

@docs mk

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "mk"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d.M.y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
mk : Internal.Locale.Locale
mk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "mk||||претпл.|попл.|9|afternoon1|попладне|am|претпл.|evening1|навечер|midnight|полноќ|morning1|наутро|morning2|претпладне|night1|ноќе|noon|напладне|pm|попл.|претпл.|попл.|9|afternoon1|попладне|am|претпл.|evening1|навечер|midnight|полноќ|morning1|наутро|morning2|претпладне|night1|ноќе|noon|напладне|pm|попл.|претпл.|попл.|9|afternoon1|попл.|am|претпл.|evening1|навечер|midnight|полн.|morning1|наутро|morning2|претпл.|night1|ноќе|noon|напл.|pm|попл.|d.M.yy|d.M.y|d MMMM y|EEEE, d MMMM y|јан.|фев.|мар.|апр.|мај|јун.|јул.|авг.|сеп.|окт.|ное.|дек.|јануари|февруари|март|април|мај|јуни|јули|август|септември|октомври|ноември|декември|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед.|пон.|вто.|сре.|чет.|пет.|саб.|недела|понеделник|вторник|среда|четврток|петок|сабота|н|п|в|с|ч|п|с|0|п.н.е.|н.е.|пред нашата ера|од нашата ера|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d.M.y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M|Mdd|d.M|MEd|E, d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|W. 'седмица' 'од' MMMM|MMMMW-count-other|W. 'седмица' 'од' MMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|MMM y\u{202F}'г'.|yMMMd|d MMM y\u{202F}'г'.|yMMMEd|E, d MMM y\u{202F}'г'.|yMMMM|MMMM y\u{202F}'г'.|yQQQ|QQQ y\u{202F}'г'.|yQQQQ|QQQQ y\u{202F}'г'.|yw-count-one|w. 'седмица' 'од' Y|yw-count-other|w. 'седмица' 'од' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MKD|ден.|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
