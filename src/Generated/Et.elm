module Generated.Et exposing (et)

{-|

@docs et

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "et"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 23, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 5, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
et : Internal.Locale.Locale
et =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "et||||AM|PM|8|afternoon1|pärastlõunal|am|AM|evening1|õhtul|midnight|keskööl|morning1|hommikul|night1|öösel|noon|keskpäeval|pm|PM|AM|PM|8|afternoon1|pärastlõunal|am|AM|evening1|õhtul|midnight|keskööl|morning1|hommikul|night1|öösel|noon|keskpäeval|pm|PM|AM|PM|8|afternoon1|pärastlõunal|am|AM|evening1|õhtul|midnight|keskööl|morning1|hommikul|night1|öösel|noon|keskpäeval|pm|PM|dd.MM.yy|d. MMM y|d. MMMM y|EEEE, d. MMMM y|jaan|veebr|märts|apr|mai|juuni|juuli|aug|sept|okt|nov|dets|jaanuar|veebruar|märts|aprill|mai|juuni|juuli|august|september|oktoober|november|detsember|J|V|M|A|M|J|J|A|S|O|N|D|0|P|E|T|K|N|R|L|pühapäev|esmaspäev|teisipäev|kolmapäev|neljapäev|reede|laupäev|P|E|T|K|N|R|L|0|eKr|pKr|enne Kristust|pärast Kristust|eKr|pKr|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d.MM.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|M|Md|d.M|MEd|E, d.M|MMM|MMMM|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM (W. 'nädal')|MMMMW-count-other|MMMM (W. 'nädal')|mmss|mm:ss|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w. 'nädal' (Y)|yw-count-other|w. 'nädal' (Y)|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|−||||||E2W\u{00A0}|,|−|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|−|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EEK|kr|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
