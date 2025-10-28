module Generated.As exposing (locale_as)

{-|

@docs locale_as

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
    { one =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.I
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    []
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    []
                ]
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : d-M-y
  - Medium : dd-MM-y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h.mm
  - Medium : a h.mm.ss
  - Long : a h.mm.ss z
  - Full : a h.mm.ss zzzz

-}
locale_as : Internal.Locale.Locale
locale_as =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "as||||AM|PM|2|am|AM|pm|PM|AM|PM|2|am|AM|pm|PM|am|pm|2|am|am|pm|pm|d-M-y|dd-MM-y|d MMMM, y|EEEE, d MMMM, y|জানু|ফেব্ৰু|মাৰ্চ|এপ্ৰিল|মে’|জুন|জুলাই|আগ|ছেপ্তে|অক্টো|নৱে|ডিচে|জানুৱাৰী|ফেব্ৰুৱাৰী|মাৰ্চ|এপ্ৰিল|মে’|জুন|জুলাই|আগষ্ট|ছেপ্তেম্বৰ|অক্টোবৰ|নৱেম্বৰ|ডিচেম্বৰ|জ|ফ|ম|এ|ম|জ|জ|আ|ছ|অ|ন|ড|0|দেও|সোম|মঙ্গল|বুধ|বৃহ|শুক্ৰ|শনি|দেওবাৰ|সোমবাৰ|মঙ্গলবাৰ|বুধবাৰ|বৃহস্পতিবাৰ|শুক্ৰবাৰ|শনিবাৰ|দ|স|ম|ব|ব|শ|শ|0|খ্ৰীঃ পূঃ|খ্ৰীঃ|খ্ৰীষ্টপূৰ্ব|খ্ৰীষ্টাব্দ|খ্ৰীঃ পূঃ|খ্ৰীঃ|a h.mm|a h.mm.ss|a h.mm.ss z|a h.mm.ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|E d|Ehm|E a h:mm|EHm|E HH:mm|Ehms|E a h:mm:ss|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|a h|H|HH|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|HH:mm:ss|hmsv|a h:mm:ss v|Hmsv|HH:mm:ss v|hmv|a h:mm v|Hmv|HH:mm v|M|L|Md|dd-MM|MEd|E, dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|MMMMৰ সপ্তাহ W|MMMMW-count-other|MMMMৰ সপ্তাহ W|ms|mm:ss|y|y|yM|MM-y|yMd|dd-MM-y|yMEd|E, dd-MM-y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Yৰ সপ্তাহ w|yw-count-other|Yৰ সপ্তাহ w|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2I,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0I,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} বছৰ|1|{0} বছৰ|0||0||0||0|||{0} মাহ|1|{0} মাহ|0||0||0||0|||{0} সপ্তাহ|1|{0} সপ্তাহ|0||0||0||0|||{0} দিন|1|{0} দিন|0||0||0||0|||{0} ঘণ্টা|1|{0} ঘণ্টা|0||0||0||0|||{0} মিনিট|1|{0} মিনিট|0||0||0||0|||{0} ছেকেণ্ড|1|{0} ছেকেণ্ড|0||0||0||0|||{0} মিঃ ছেঃ|1|{0} মিঃ ছেঃ|0||0||0||0|||{0} বছৰ|1|{0} বছৰ|0||0||0||0|||{0} মাহ|1|{0} মাহ|0||0||0||0|||{0} সপ্তাহ|1|{0} সপ্তাহ|0||0||0||0|||{0} দিন|1|{0} দিন|0||0||0||0|||{0} ঘণ্টা|1|{0} ঘণ্টা|0||0||0||0|||{0} মিনিট|1|{0} মিনিট|0||0||0||0|||{0} ছেকেণ্ড|1|{0} ছেকেণ্ড|0||0||0||0|||{0} মিলিছেকেণ্ড|1|{0} মিলিছেকেণ্ড|0||0||0||0|||{0} বছৰ|1|{0} বছৰ|0||0||0||0|||{0} মাহ|1|{0} মাহ|0||0||0||0|||{0} সপ্তাহ|1|{0} সপ্তাহ|0||0||0||0|||{0} দিন|1|{0} দিন|0||0||0||0|||{0} ঘণ্টা|1|{0} ঘণ্টা|0||0||0||0|||{0} মিনিট|1|{0} মিনিট|0||0||0||0|||{0} ছেকেণ্ড|1|{0} ছেকেণ্ড|0||0||0||0|||{0} মিঃ ছেঃ|1|{0} মিঃ ছেঃ|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
