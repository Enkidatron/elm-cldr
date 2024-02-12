module Generated.Sq exposing (sq, sq_MK, sq_XK)

{-|

@docs sq, sq_MK, sq_XK

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "sq"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 9, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 9, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a, z
  - Full : h:mm:ss a, zzzz

-}
sq : Internal.Locale.Locale
sq =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sq||||p.d.|m.d.|9|afternoon1|e pasdites|am|p.d.|evening1|e mbrëmjes|midnight|e mesnatës|morning1|e mëngjesit|morning2|e paradites|night1|e natës|noon|e mesditës|pm|m.d.|e paradites|e pasdites|9|afternoon1|e pasdites|am|e paradites|evening1|e mbrëmjes|midnight|e mesnatës|morning1|e mëngjesit|morning2|e paradites|night1|e natës|noon|e mesditës|pm|e pasdites|p.d.|m.d.|9|afternoon1|e pasdites|am|p.d.|evening1|e mbrëmjes|midnight|e mesnatës|morning1|e mëngjesit|morning2|e paradites|night1|e natës|noon|e mesditës|pm|m.d.|d.M.yy|d MMM y|d MMMM y|EEEE, d MMMM y|jan|shk|mar|pri|maj|qer|korr|gush|sht|tet|nën|dhj|janar|shkurt|mars|prill|maj|qershor|korrik|gusht|shtator|tetor|nëntor|dhjetor|j|sh|m|p|m|q|k|g|sh|t|n|dh|0|die|hën|mar|mër|enj|pre|sht|e diel|e hënë|e martë|e mërkurë|e enjte|e premte|e shtunë|d|h|m|m|e|p|sh|0|p.K.|mb.K.|para Krishtit|mbas Krishtit|p.K.|mb.K.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a, z|h:mm:ss\u{202F}a, zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d.M.y GGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a, v|Hmsv|HH:mm:ss, v|hmv|h:mm\u{202F}a, v|Hmv|HH:mm, v|M|L|Md|d.M|MEd|E, d.M|MMdd|d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'java' W 'e' MMMM|MMMMW-count-other|'java' W 'e' MMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ, y|yQQQQ|QQQQ, y|yw-count-one|'java' w 'e' Y|yw-count-other|'java' w 'e' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|106|AFN|AFN|ALL|Lekë|AMD|AMD|AOA|AOA|ARS|ARS|AUD|A$|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BMD|BMD|BND|BND|BOB|BOB|BRL|BRL|BSD|BSD|BWP|BWP|BZD|BZD|CAD|CA$|CLP|CLP|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CZK|CZK|DKK|DKK|DOP|DOP|EGP|EGP|ESP|₧|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GH₵|GIP|GIP|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|ISK|ISK|JMD|JMD|JPY|JP¥|KGS|\u{20C0}|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LTL|Lt|LVL|Ls|MGA|MGA|MMK|MMK|MNT|MNT|MUR|MUR|MXN|MX$|MYR|MYR|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|PHP|PHP|PKR|PKR|PLN|PLN|PYG|PYG|RON|RON|RUB|RUB|RWF|RWF|SBD|SBD|SEK|SEK|SGD|SGD|SHP|SHP|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|THB|฿|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|UAH|UAH|USD|US$|UYU|UYU|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|ZAR|ZMW|ZMW|"
        )


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sq_MK : Internal.Locale.Locale
sq_MK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sq||MK||p.d.|m.d.|9|afternoon1|e pasdites|am|p.d.|evening1|e mbrëmjes|midnight|e mesnatës|morning1|e mëngjesit|morning2|e paradites|night1|e natës|noon|e mesditës|pm|m.d.|e paradites|e pasdites|9|afternoon1|e pasdites|am|e paradites|evening1|e mbrëmjes|midnight|e mesnatës|morning1|e mëngjesit|morning2|e paradites|night1|e natës|noon|e mesditës|pm|e pasdites|p.d.|m.d.|9|afternoon1|e pasdites|am|p.d.|evening1|e mbrëmjes|midnight|e mesnatës|morning1|e mëngjesit|morning2|e paradites|night1|e natës|noon|e mesditës|pm|m.d.|d.M.yy|d MMM y|d MMMM y|EEEE, d MMMM y|jan|shk|mar|pri|maj|qer|korr|gush|sht|tet|nën|dhj|janar|shkurt|mars|prill|maj|qershor|korrik|gusht|shtator|tetor|nëntor|dhjetor|j|sh|m|p|m|q|k|g|sh|t|n|dh|0|die|hën|mar|mër|enj|pre|sht|e diel|e hënë|e martë|e mërkurë|e enjte|e premte|e shtunë|d|h|m|m|e|p|sh|0|p.K.|mb.K.|para Krishtit|mbas Krishtit|p.K.|mb.K.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d.M.y GGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a, v|Hmsv|HH:mm:ss, v|hmv|h:mm\u{202F}a, v|Hmv|HH:mm, v|M|L|Md|d.M|MEd|E, d.M|MMdd|d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'java' W 'e' MMMM|MMMMW-count-other|'java' W 'e' MMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ, y|yQQQQ|QQQQ, y|yw-count-one|'java' w 'e' Y|yw-count-other|'java' w 'e' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|107|AFN|AFN|ALL|Lekë|AMD|AMD|AOA|AOA|ARS|ARS|AUD|A$|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BMD|BMD|BND|BND|BOB|BOB|BRL|BRL|BSD|BSD|BWP|BWP|BZD|BZD|CAD|CA$|CLP|CLP|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CZK|CZK|DKK|DKK|DOP|DOP|EGP|EGP|ESP|₧|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GH₵|GIP|GIP|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|ISK|ISK|JMD|JMD|JPY|JP¥|KGS|\u{20C0}|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LTL|Lt|LVL|Ls|MGA|MGA|MKD|den|MMK|MMK|MNT|MNT|MUR|MUR|MXN|MX$|MYR|MYR|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|PHP|PHP|PKR|PKR|PLN|PLN|PYG|PYG|RON|RON|RUB|RUB|RWF|RWF|SBD|SBD|SEK|SEK|SGD|SGD|SHP|SHP|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|THB|฿|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|UAH|UAH|USD|US$|UYU|UYU|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|ZAR|ZMW|ZMW|"
        )


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sq_XK : Internal.Locale.Locale
sq_XK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sq||XK||p.d.|m.d.|9|afternoon1|e pasdites|am|p.d.|evening1|e mbrëmjes|midnight|e mesnatës|morning1|e mëngjesit|morning2|e paradites|night1|e natës|noon|e mesditës|pm|m.d.|e paradites|e pasdites|9|afternoon1|e pasdites|am|e paradites|evening1|e mbrëmjes|midnight|e mesnatës|morning1|e mëngjesit|morning2|e paradites|night1|e natës|noon|e mesditës|pm|e pasdites|p.d.|m.d.|9|afternoon1|e pasdites|am|p.d.|evening1|e mbrëmjes|midnight|e mesnatës|morning1|e mëngjesit|morning2|e paradites|night1|e natës|noon|e mesditës|pm|m.d.|d.M.yy|d MMM y|d MMMM y|EEEE, d MMMM y|jan|shk|mar|pri|maj|qer|korr|gush|sht|tet|nën|dhj|janar|shkurt|mars|prill|maj|qershor|korrik|gusht|shtator|tetor|nëntor|dhjetor|j|sh|m|p|m|q|k|g|sh|t|n|dh|0|die|hën|mar|mër|enj|pre|sht|e diel|e hënë|e martë|e mërkurë|e enjte|e premte|e shtunë|d|h|m|m|e|p|sh|0|p.K.|mb.K.|para Krishtit|mbas Krishtit|p.K.|mb.K.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d.M.y GGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a, v|Hmsv|HH:mm:ss, v|hmv|h:mm\u{202F}a, v|Hmv|HH:mm, v|M|L|Md|d.M|MEd|E, d.M|MMdd|d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'java' W 'e' MMMM|MMMMW-count-other|'java' W 'e' MMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ, y|yQQQQ|QQQQ, y|yw-count-one|'java' w 'e' Y|yw-count-other|'java' w 'e' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|106|AFN|AFN|ALL|Lekë|AMD|AMD|AOA|AOA|ARS|ARS|AUD|A$|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BMD|BMD|BND|BND|BOB|BOB|BRL|BRL|BSD|BSD|BWP|BWP|BZD|BZD|CAD|CA$|CLP|CLP|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CZK|CZK|DKK|DKK|DOP|DOP|EGP|EGP|ESP|₧|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GH₵|GIP|GIP|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|ISK|ISK|JMD|JMD|JPY|JP¥|KGS|\u{20C0}|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LTL|Lt|LVL|Ls|MGA|MGA|MMK|MMK|MNT|MNT|MUR|MUR|MXN|MX$|MYR|MYR|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|PHP|PHP|PKR|PKR|PLN|PLN|PYG|PYG|RON|RON|RUB|RUB|RWF|RWF|SBD|SBD|SEK|SEK|SGD|SGD|SHP|SHP|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|THB|฿|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|UAH|UAH|USD|US$|UYU|UYU|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|ZAR|ZMW|ZMW|"
        )
