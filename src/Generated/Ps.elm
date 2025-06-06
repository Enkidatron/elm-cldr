module Generated.Ps exposing (ps, ps_PK)

{-|

@docs ps, ps_PK

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

  - Short : y/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : EEEE د y د MMMM d

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
ps : Internal.Locale.Locale
ps =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ps||||AM|PM|2|am|AM|pm|PM|غ.م.|غ.و.|2|am|غ.م.|pm|غ.و.|غ.م.|غ.و.|2|am|غ.م.|pm|غ.و.|y/M/d|y MMM d|y MMMM d|EEEE د y د MMMM d|جنوري|فبروري|مارچ|اپریل|مۍ|جون|جولای|اګست|سېپتمبر|اکتوبر|نومبر|دسمبر|جنوري|فبروري|مارچ|اپریل|مۍ|جون|جولای|اګست|سېپتمبر|اکتوبر|نومبر|دسمبر|ج|ف|م|ا|م|ج|ج|ا|س|ا|ن|د|1|جنوري|فبروري|مارچ|اپریل|مۍ|جون|جولای|اګست|سپتمبر|اکتوبر|نومبر|دسمبر|جنوري|فېبروري|مارچ|اپریل|مۍ|جون|جولای|اګست|سپتمبر|اکتوبر|نومبر|دسمبر|1|2|3|4|5|6|7|8|9|10|11|12|يونۍ|دونۍ|درېنۍ|څلرنۍ|پينځنۍ|جمعه|اونۍ|يونۍ|دونۍ|درېنۍ|څلرنۍ|پينځنۍ|جمعه|اونۍ|S|M|T|W|T|F|S|0|له میلاد وړاندې|م.|له میلاد څخه وړاندې|له میلاد څخه وروسته|له میلاد وړاندې|م.|H:mm|H:mm:ss|H:mm:ss (z)|H:mm:ss (zzzz)|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|اونۍ W د MMMM|MMMMW-count-other|اونۍ W د MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|اونۍ w د Y|yw-count-other|اونۍ w د Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W.|,|\u{200E}−||||||E2W.|,|\u{200E}−¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W.|,|\u{200E}−|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : y/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : EEEE د y د MMMM d

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ps_PK : Internal.Locale.Locale
ps_PK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ps||PK||AM|PM|2|am|AM|pm|PM|غ.م.|غ.و.|2|am|غ.م.|pm|غ.و.|غ.م.|غ.و.|2|am|غ.م.|pm|غ.و.|y/M/d|y MMM d|y MMMM d|EEEE د y د MMMM d|جنوري|فبروري|مارچ|اپریل|مۍ|جون|جولای|اګست|سېپتمبر|اکتوبر|نومبر|دسمبر|جنوري|فبروري|مارچ|اپریل|مۍ|جون|جولای|اګست|سېپتمبر|اکتوبر|نومبر|دسمبر|ج|ف|م|ا|م|ج|ج|ا|س|ا|ن|د|1|جنوري|فبروري|مارچ|اپریل|مۍ|جون|جولای|اګست|سپتمبر|اکتوبر|نومبر|دسمبر|جنوري|فېبروري|مارچ|اپریل|مۍ|جون|جولای|اګست|سپتمبر|اکتوبر|نومبر|دسمبر|1|2|3|4|5|6|7|8|9|10|11|12|يونۍ|دونۍ|درېنۍ|څلرنۍ|پينځنۍ|جمعه|اونۍ|يونۍ|دونۍ|درېنۍ|څلرنۍ|پينځنۍ|جمعه|اونۍ|S|M|T|W|T|F|S|0|له میلاد وړاندې|م.|له میلاد څخه وړاندې|له میلاد څخه وروسته|له میلاد وړاندې|م.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|اونۍ W د MMMM|MMMMW-count-other|اونۍ W د MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|اونۍ w د Y|yw-count-other|اونۍ w د Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|\u{200E}−||||||E2W.|,|\u{200E}−¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W.|,|\u{200E}−|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
