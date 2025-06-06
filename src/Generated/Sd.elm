module Generated.Sd exposing (sd, sd_Arab)

{-|

@docs sd, sd_Arab

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

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd : Internal.Locale.Locale
sd =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sd||||صبح،\u{202F}منجهند|شام،\u{202F}منجهند|2|am|صبح،\u{202F}منجهند|pm|شام،\u{202F}منجهند|صبح، منجهند|منجهند، شام|2|am|صبح، منجهند|pm|منجهند، شام|صبح،\u{202F}منجهند|منجهند،\u{202F}شام|2|am|صبح،\u{202F}منجهند|pm|منجهند،\u{202F}شام|y-MM-dd|y MMM d|y MMMM d|EEEE, MMMM d, y|جنوري|فيبروري|مارچ|اپريل|مئي|جون|جولاءِ|آگسٽ|سيپٽمبر|آڪٽوبر|نومبر|ڊسمبر|جنوري|فيبروري|مارچ|اپريل|مئي|جون|جولاءِ|آگسٽ|سيپٽمبر|آڪٽوبر|نومبر|ڊسمبر|J|F|M|A|M|J|J|A|S|O|N|D|0|آچر|سومر|اڱارو|اربع|خميس|جمعو|ڇنڇر|آچر|سومر|اڱارو|اربع|خميس|جمعو|ڇنڇر|آچر|سو|اڱارو|اربع|خم|جمعو|ڇنڇر|0|BC|CD|قبل مسيح|عيسوي کان پهرين|BC|CD|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|MMMM d|MMMMW-count-one|ھفتو W جو MMMM|MMMMW-count-other|ھفتو W جو MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|ھفتو w جو Y|yw-count-other|ھفتو w جو Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd_Arab : Internal.Locale.Locale
sd_Arab =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sd|Arab|||صبح،\u{202F}منجهند|شام،\u{202F}منجهند|2|am|صبح،\u{202F}منجهند|pm|شام،\u{202F}منجهند|صبح، منجهند|منجهند، شام|2|am|صبح، منجهند|pm|منجهند، شام|صبح،\u{202F}منجهند|منجهند،\u{202F}شام|2|am|صبح،\u{202F}منجهند|pm|منجهند،\u{202F}شام|y-MM-dd|y MMM d|y MMMM d|EEEE, MMMM d, y|جنوري|فيبروري|مارچ|اپريل|مئي|جون|جولاءِ|آگسٽ|سيپٽمبر|آڪٽوبر|نومبر|ڊسمبر|جنوري|فيبروري|مارچ|اپريل|مئي|جون|جولاءِ|آگسٽ|سيپٽمبر|آڪٽوبر|نومبر|ڊسمبر|J|F|M|A|M|J|J|A|S|O|N|D|0|آچر|سومر|اڱارو|اربع|خميس|جمعو|ڇنڇر|آچر|سومر|اڱارو|اربع|خميس|جمعو|ڇنڇر|آچر|سو|اڱارو|اربع|خم|جمعو|ڇنڇر|0|BC|CD|قبل مسيح|عيسوي کان پهرين|BC|CD|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|MMMM d|MMMMW-count-one|ھفتو W جو MMMM|MMMMW-count-other|ھفتو W جو MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|ھفتو w جو Y|yw-count-other|ھفتو w جو Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
