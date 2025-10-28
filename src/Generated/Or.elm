module Generated.Or exposing (or)

{-|

@docs or

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
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    []
                )
                []
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
or : Internal.Locale.Locale
or =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "or||||AM|PM|2|am|AM|pm|PM|AM|PM|2|am|AM|pm|PM|ପୂ|ଅ|2|am|ପୂ|pm|ଅ|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|ଜାନୁଆରୀ|ଫେବୃଆରୀ|ମାର୍ଚ୍ଚ|ଅପ୍ରେଲ|ମଇ|ଜୁନ|ଜୁଲାଇ|ଅଗଷ୍ଟ|ସେପ୍ଟେମ୍ବର|ଅକ୍ଟୋବର|ନଭେମ୍ବର|ଡିସେମ୍ବର|ଜାନୁଆରୀ|ଫେବୃଆରୀ|ମାର୍ଚ୍ଚ|ଅପ୍ରେଲ|ମଇ|ଜୁନ|ଜୁଲାଇ|ଅଗଷ୍ଟ|ସେପ୍ଟେମ୍ବର|ଅକ୍ଟୋବର|ନଭେମ୍ବର|ଡିସେମ୍ବର|ଜା|ଫେ|ମା|ଅ|ମଇ|ଜୁ|ଜୁ|ଅ|ସେ|ଅ|ନ|ଡି|0|ରବି|ସୋମ|ମଙ୍ଗଳ|ବୁଧ|ଗୁରୁ|ଶୁକ୍ର|ଶନି|ରବିବାର|ସୋମବାର|ମଙ୍ଗଳବାର|ବୁଧବାର|ଗୁରୁବାର|ଶୁକ୍ରବାର|ଶନିବାର|ର|ସୋ|ମ|ବୁ|ଗୁ|ଶୁ|ଶ|0|BC|AD|ଖ୍ରୀଷ୍ଟପୂର୍ବ|ଖ୍ରୀଷ୍ଟାବ୍ଦ|BC|AD|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMdd|dd-MM|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|MMMM ର ସପ୍ତାହ W|MMMMW-count-other|MMMM ର ସପ୍ତାହ W|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMM|MM-y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ର ସପ୍ତାହ w|yw-count-other|Y ର ସପ୍ତାହ w|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ବର୍ଷ|1|{0} ବର୍ଷ|0||0||0||0|||{0} ମାସ|1|{0} ମାସ|0||0||0||0|||{0} ସପ୍ତାହ|1|{0} ସପ୍ତାହ|0||0||0||0|||{0} ଦିନ|1|{0} ଦିନ|0||0||0||0|||{0} ଘଣ୍ଟା|1|{0} ଘଣ୍ଟା|0||0||0||0|||{0} ମିନିଟ୍\u{200C}|1|{0} ମିନିଟ୍\u{200C}|0||0||0||0|||{0} ସେକେଣ୍ଡ|1|{0} ସେକେଣ୍ଡ|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} ବର୍ଷ|1|{0} ବର୍ଷ|0||0||0||0|||{0} ମାସ|1|{0} ମାସ|0||0||0||0|||{0} ସପ୍ତାହ|1|{0} ସପ୍ତାହ|0||0||0||0|||{0} ଦିନ|1|{0} ଦିନ|0||0||0||0|||{0} ଘଣ୍ଟା|1|{0} ଘଣ୍ଟା|0||0||0||0|||{0} ମିନିଟ୍|1|{0} ମିନିଟ୍\u{200C}|0||0||0||0|||{0} ସେକେଣ୍ଡ|1|{0} ସେକେଣ୍ଡ|0||0||0||0|||{0} ମିଲିସେକେଣ୍ଡ|1|{0} ମିଲିସେକେଣ୍ଡ|0||0||0||0|||{0}ବର୍ଷ|1|{0}ବର୍ଷ|0||0||0||0|||{0}ମାସ|1|{0}ମାସ|0||0||0||0|||{0} ସପ୍|1|{0}ସପ୍|0||0||0||0|||{0}ଦିନ|1|{0}ଦିନ|0||0||0||0|||{0}ଘଣ୍ଟା|1|{0}ଘଣ୍ଟା|0||0||0||0|||{0}ମିନିଟ୍\u{200C}|1|{0}ମିନିଟ୍\u{200C}|0||0||0||0|||{0}ସେକ୍|1|{0}ସେକ୍|0||0||0||0|||{0} ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
