module Generated.Kok exposing (kok, kok_Deva)

{-|

@docs kok, kok_Deva

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : d-M-yy
  - Medium : d-MMM-y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
kok : Internal.Locale.Locale
kok =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "kok||||AM|PM|2|am|AM|pm|PM|सकाळीं|सांजे|2|am|सकाळीं|pm|सांजे|a|p|2|am|a|pm|p|d-M-yy|d-MMM-y|d MMMM y|EEEE d MMMM y|जानेवारी|फेब्रुवारी|मार्च|एप्रील|मे|जून|जुलय|ऑगस्ट|सप्टेंबर|ऑक्टोबर|नोव्हेंबर|डिसेंबर|जानेवारी|फेब्रुवारी|मार्च|एप्रील|मे|जून|जुलय|ऑगस्ट|सप्टेंबर|ऑक्टोबर|नोव्हेंबर|डिसेंबर|1|2|3|4|5|6|7|8|9|10|11|12|1|जाने|फेब्रु|मार्च|एप्री|मे|जून|जुल|ऑग|सप्टें|ऑक्टो|नो|डिसे|जानेवारी|फेब्रुवारी|मार्च|एप्रील|मे|जून|जुलय|ऑगस्ट|सप्टेंबर|ऑक्टोबर|नोव्हेंबर|डिसेंबर|1|2|3|4|5|6|7|8|9|10|11|12|आयतार|सोमार|मंगळार|बुधवार|बिरेस्तार|शुक्रार|शेनवार|आयतार|सोमार|मंगळार|बुधवार|बिरेस्तार|शुक्रार|शेनवार|आ|सो|मं|बु|बि|शु|शे|1|आयतार|सोमार|मंगळार|बुधवार|बिरेस्तार|शुक्रार|शेनवार|आयतार|सोमार|मंगळार|बुधवार|बिरेस्तार|शुक्रार|शेनवार|आ|सो|मं|बु|ब|शु|शे|क्रिस्तपूर्व|क्रि.श.|क्रिस्तपूर्व|क्रिस्तशक|क्रि.आ.|क्रि.श.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|47|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|d-M, E|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d-M-y|yMEd|d-M-y, E|yMMM|MMM, y|yMMMd|d MMM, y|yMMMEd|y MMM d, E|yMMMM|MMMM, y|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|रॉन|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d-M-yy
  - Medium : d-MMM-y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
kok_Deva : Internal.Locale.Locale
kok_Deva =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "kok|Deva|||AM|PM|2|am|AM|pm|PM|सकाळीं|सांजे|2|am|सकाळीं|pm|सांजे|a|p|2|am|a|pm|p|d-M-yy|d-MMM-y|d MMMM y|EEEE d MMMM y|जानेवारी|फेब्रुवारी|मार्च|एप्रील|मे|जून|जुलय|ऑगस्ट|सप्टेंबर|ऑक्टोबर|नोव्हेंबर|डिसेंबर|जानेवारी|फेब्रुवारी|मार्च|एप्रील|मे|जून|जुलय|ऑगस्ट|सप्टेंबर|ऑक्टोबर|नोव्हेंबर|डिसेंबर|1|2|3|4|5|6|7|8|9|10|11|12|1|जाने|फेब्रु|मार्च|एप्री|मे|जून|जुल|ऑग|सप्टें|ऑक्टो|नो|डिसे|जानेवारी|फेब्रुवारी|मार्च|एप्रील|मे|जून|जुलय|ऑगस्ट|सप्टेंबर|ऑक्टोबर|नोव्हेंबर|डिसेंबर|1|2|3|4|5|6|7|8|9|10|11|12|आयतार|सोमार|मंगळार|बुधवार|बिरेस्तार|शुक्रार|शेनवार|आयतार|सोमार|मंगळार|बुधवार|बिरेस्तार|शुक्रार|शेनवार|आ|सो|मं|बु|बि|शु|शे|1|आयतार|सोमार|मंगळार|बुधवार|बिरेस्तार|शुक्रार|शेनवार|आयतार|सोमार|मंगळार|बुधवार|बिरेस्तार|शुक्रार|शेनवार|आ|सो|मं|बु|ब|शु|शे|क्रिस्तपूर्व|क्रि.श.|क्रिस्तपूर्व|क्रिस्तशक|क्रि.आ.|क्रि.श.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|47|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|d-M, E|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d-M-y|yMEd|d-M-y, E|yMMM|MMM, y|yMMMd|d MMM, y|yMMMEd|y MMM d, E|yMMMM|MMMM, y|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|रॉन|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
