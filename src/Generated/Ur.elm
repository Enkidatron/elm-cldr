module Generated.Ur exposing (ur, ur_IN)

{-|

@docs ur, ur_IN

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ur"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM، y
  - Long : d MMMM، y
  - Full : EEEE، d MMMM، y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ur : Internal.Locale.Locale
ur =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ur||||AM|PM|8|afternoon1|دوپہر|afternoon2|سہ پہر|am|AM|evening1|شام|midnight|آدھی رات|morning1|صبح|night1|رات|pm|PM|AM|PM|8|afternoon1|دوپہر میں|afternoon2|سہ پہر|am|AM|evening1|شام میں|midnight|آدھی رات|morning1|صبح میں|night1|رات میں|pm|PM|a|p|8|afternoon1|دوپہر|afternoon2|سہ پہر|am|a|evening1|شام|midnight|آدھی رات|morning1|صبح|night1|رات|pm|p|d/M/yy|d MMM، y|d MMMM، y|EEEE، d MMMM، y|جنوری|فروری|مارچ|اپریل|مئی|جون|جولائی|اگست|ستمبر|اکتوبر|نومبر|دسمبر|جنوری|فروری|مارچ|اپریل|مئی|جون|جولائی|اگست|ستمبر|اکتوبر|نومبر|دسمبر|J|F|M|A|M|J|J|A|S|O|N|D|0|اتوار|پیر|منگل|بدھ|جمعرات|جمعہ|ہفتہ|اتوار|پیر|منگل|بدھ|جمعرات|جمعہ|ہفتہ|S|M|T|W|T|F|S|0|قبل مسیح|عیسوی|قبل مسیح|عیسوی|قبل مسیح|عیسوی|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM، y G|GyMMMEd|E، d MMM، y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E، d/M|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMW-count-one|MMMM کا ہفتہ W|MMMMW-count-other|MMMM کا ہفتہ W|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E، d/M/y|yMMM|MMM y|yMMMd|d MMM، y|yMMMEd|E، d MMM، y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y کا w ہفتہ|yw-count-other|Y کا w ہفتہ|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200E}-¤||¤||¤||E0W,|.|\u{200E}-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM، y
  - Long : d MMMM، y
  - Full : EEEE، d MMMM، y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ur_IN : Internal.Locale.Locale
ur_IN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ur||IN||AM|PM|8|afternoon1|دوپہر|afternoon2|سہ پہر|am|AM|evening1|شام|midnight|آدھی رات|morning1|صبح|night1|رات|pm|PM|AM|PM|8|afternoon1|دوپہر میں|afternoon2|سہ پہر|am|AM|evening1|شام میں|midnight|آدھی رات|morning1|صبح میں|night1|رات میں|pm|PM|a|p|8|afternoon1|دوپہر|afternoon2|سہ پہر|am|a|evening1|شام|midnight|آدھی رات|morning1|صبح|night1|رات|pm|p|d/M/yy|d MMM، y|d MMMM، y|EEEE، d MMMM، y|جنوری|فروری|مارچ|اپریل|مئی|جون|جولائی|اگست|ستمبر|اکتوبر|نومبر|دسمبر|جنوری|فروری|مارچ|اپریل|مئی|جون|جولائی|اگست|ستمبر|اکتوبر|نومبر|دسمبر|J|F|M|A|M|J|J|A|S|O|N|D|0|اتوار|پیر|منگل|بدھ|جمعرات|جمعہ|ہفتہ|اتوار|پیر|منگل|بدھ|جمعرات|جمعہ|ہفتہ|S|M|T|W|T|F|S|0|قبل مسیح|عیسوی|قبل مسیح|عیسوی|قبل مسیح|عیسوی|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM، y G|GyMMMEd|E، d MMM، y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E، d/M|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMW-count-one|MMMM کا ہفتہ W|MMMMW-count-other|MMMM کا ہفتہ W|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E، d/M/y|yMMM|MMM y|yMMMd|d MMM، y|yMMMEd|E، d MMM، y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y کا w ہفتہ|yw-count-other|Y کا w ہفتہ|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200E}-¤||¤||¤||E0W,|.|\u{200E}-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|PKR|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
