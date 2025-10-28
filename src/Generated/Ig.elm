module Generated.Ig exposing (ig)

{-|

@docs ig

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.PluralRule


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


pluralRules : Internal.PluralRule.PluralRulesInfo
pluralRules =
    { one = Nothing
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ig : Internal.Locale.Locale
ig =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ig||||N’ụtụtụ|N’abalị|2|am|N’ụtụtụ|pm|N’abalị|N’ụtụtụ|N’abali|2|am|N’ụtụtụ|pm|N’abali|N’ụtụtụ|N’abalị|2|am|N’ụtụtụ|pm|N’abalị|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Jen|Feb|Maa|Epr|Mee|Juu|Jul|Ọgọ|Sep|Ọkt|Nov|Dis|Jenụwarị|Febrụwarị|Maachị|Epreel|Mee|Jun|Julaị|Ọgọọst|Septemba|Ọktoba|Novemba|Disemba|J|F|M|E|M|J|J|Ọ|S|Ọ|N|D|0|Sọn|Mọn|Tiu|Wen|Tọọ|Fraị|Sat|Sọndee|Mọnde|Tiuzdee|Wenezdee|Tọọzdee|Fraịdee|Satọdee|S|M|T|W|T|F|S|0|BC|AD|Tupu Kraist|Afọ Kraịst|BC|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|48|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|MMM G y|GyMMMd|d MMM, G y|GyMMMEd|E, d MMM, G y|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-other|'Izu' W 'n'‘'ime' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'Izu' w 'n' 'ime' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} y|0||0||0||0||0|||{0} mths|0||0||0||0||0|||{0} wks|0||0||0||0||0|||{0} Ọtụtụ Ubochi|0||0||0||0||0|||{0} awa|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} Ọtụtụ Afọ|0||0||0||0||0|||{0} Ọnwa|0||0||0||0||0|||{0} Ọtụtụ Izu|0||0||0||0||0|||{0} Ọtụtụ Ubochi|0||0||0||0||0|||{0} Ọtụtụ awa|0||0||0||0||0|||{0} nkeji|0||0||0||0||0|||{0} sekọnd|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} y|0||0||0||0||0|||{0} mths|0||0||0||0||0|||{0} wks|0||0||0||0||0|||{0} Ọtụtụ Ubochi|0||0||0||0||0|||{0} awa|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|"
        )
