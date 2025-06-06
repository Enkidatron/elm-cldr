module Generated.Ti exposing (ti, ti_ER)

{-|

@docs ti, ti_ER

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

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE፣ d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ti : Internal.Locale.Locale
ti =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ti||||ቅ.ቀ.|ድ.ቀ.|2|am|ቅ.ቀ.|pm|ድ.ቀ.|ቅ.ቀ.|ድ.ቀ.|2|am|ቅ.ቀ.|pm|ድ.ቀ.|ቅ.ቀ.|ድ.ቀ.|2|am|ቅ.ቀ.|pm|ድ.ቀ.|M/d/yy|MMM d, y|MMMM d, y|EEEE፣ d MMMM y|ጥሪ|ለካ|መጋ|ሚያ|ግን|ሰነ|ሓም|ነሓ|መስ|ጥቅ|ሕዳ|ታሕ|ጥሪ|ለካቲት|መጋቢት|ሚያዝያ|ጉንበት|ሰነ|ሓምለ|ነሓሰ|መስከረም|ጥቅምቲ|ሕዳር|ታሕሳስ|ጥ|ለ|መ|ሚ|ግ|ሰ|ሓ|ነ|መ|ጥ|ሕ|ታ|0|ሰን|ሰኑ|ሰሉ|ረቡ|ሓሙ|ዓር|ቀዳ|ሰንበት|ሰኑይ|ሰሉስ|ረቡዕ|ሓሙስ|ዓርቢ|ቀዳም|ሰ|ሰ|ሰ|ረ|ሓ|ዓ|ቀ|0|ዓ/ዓ|ዓ/ም|ቅድመ ክርስቶስ|ዓመተ ምሕረት|ዓ/ዓ|ዓ/ም|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E፣ h:mm a|EHm|E፣ HH:mm|Ehms|E፣ h:mm:ss a|EHms|E፣ HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E፣ d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E፣ d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMEd|E፣ d MMM|MMMMd|d MMMM|MMMMdd|d MMMM|MMMMW-count-one|ሰሙን W ናይ MMMM|MMMMW-count-other|ሰሙን W ናይ MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E፣ d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|ሰሙን w ናይ Y|yw-count-other|ሰሙን w ናይ Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|ETB|Br|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JPY|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE፣ d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ti_ER : Internal.Locale.Locale
ti_ER =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ti||ER||ቅ.ቀ.|ድ.ቀ.|2|am|ቅ.ቀ.|pm|ድ.ቀ.|ቅ.ቀ.|ድ.ቀ.|2|am|ቅ.ቀ.|pm|ድ.ቀ.|ቅ.ቀ.|ድ.ቀ.|2|am|ቅ.ቀ.|pm|ድ.ቀ.|M/d/yy|MMM d, y|MMMM d, y|EEEE፣ d MMMM y|ጥሪ|ለካ|መጋ|ሚያ|ግን|ሰነ|ሓም|ነሓ|መስ|ጥቅ|ሕዳ|ታሕ|ጥሪ|ለካቲት|መጋቢት|ሚያዝያ|ጉንበት|ሰነ|ሓምለ|ነሓሰ|መስከረም|ጥቅምቲ|ሕዳር|ታሕሳስ|ጥ|ለ|መ|ሚ|ግ|ሰ|ሓ|ነ|መ|ጥ|ሕ|ታ|0|ሰን|ሰኑ|ሰሉ|ረቡ|ሓሙ|ዓር|ቀዳ|ሰንበት|ሰኑይ|ሰሉስ|ረቡዕ|ሓሙስ|ዓርቢ|ቀዳም|ሰ|ሰ|ሰ|ረ|ሓ|ዓ|ቀ|0|ዓ/ዓ|ዓ/ም|ዓመተ ዓለም|ዓመተ ምሕረት|ዓ/ዓ|ዓ/ም|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E፣ h:mm a|EHm|E፣ HH:mm|Ehms|E፣ h:mm:ss a|EHms|E፣ HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E፣ d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E፣ d/M|MMdd|d/M|MMM|LLL|MMMd|d MMM|MMMEd|E፣ d MMM|MMMMd|d MMMM|MMMMdd|d MMMM|MMMMW-count-one|ሰሙን W ናይ MMMM|MMMMW-count-other|ሰሙን W ናይ MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E፣ d/M/y|yMM|M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|ሰሙን w ናይ Y|yw-count-other|ሰሙን w ናይ Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ERN|Nfk|ESP|₧|ETB|Br|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JPY|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
