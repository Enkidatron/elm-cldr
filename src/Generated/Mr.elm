module Generated.Mr exposing (mr)

{-|

@docs mr

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.PluralRule


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "mr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


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

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
mr : Internal.Locale.Locale
mr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "mr||||AM|PM|9|afternoon1|दुपार|am|AM|evening1|संध्याकाळ|midnight|मध्यरात्र|morning1|पहाट|morning2|सकाळ|night1|रात्र|noon|मध्यान्ह|pm|PM|AM|PM|9|afternoon1|दुपार|am|AM|evening1|संध्याकाळ|midnight|मध्यरात्र|morning1|पहाट|morning2|सकाळ|night1|रात्र|noon|मध्यान्ह|pm|PM|a|p|9|afternoon1|दु|am|a|evening1|सं|midnight|म.रा.|morning1|प|morning2|स|night1|रा|noon|दु|pm|p|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|जाने|फेब्रु|मार्च|एप्रि|मे|जून|जुलै|ऑग|सप्टें|ऑक्टो|नोव्हें|डिसें|जानेवारी|फेब्रुवारी|मार्च|एप्रिल|मे|जून|जुलै|ऑगस्ट|सप्टेंबर|ऑक्टोबर|नोव्हेंबर|डिसेंबर|जा|फे|मा|ए|मे|जू|जु|ऑ|स|ऑ|नो|डि|0|रवि|सोम|मंगळ|बुध|गुरु|शुक्र|शनि|रविवार|सोमवार|मंगळवार|बुधवार|गुरुवार|शुक्रवार|शनिवार|र|सो|मं|बु|गु|शु|श|0|ई. स. पू.|इ. स.|ईसवीसनपूर्व|ईसवीसन|ई. स. पू.|इ. स.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG d/M/y|GyMMM|MMM G y|GyMMMd|d MMM, G y|GyMMMEd|E, d MMM, G y|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|MMMM चा W रा आठवडा|MMMMW-count-other|MMMM चा W रा आठवडा|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d, MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y चा w वा आठवडा|yw-count-other|Y चा w वा आठवडा|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} वर्षे|1|{0} वर्ष|0||0||0||0|||{0} महिने|1|{0} महिना|0||0||0||0|||{0} आ|1|{0} आ|0||0||0||0|||{0} दिवस|1|{0} दिवस|0||0||0||0|||{0} ता|1|{0} ता|0||0||0||0|||{0} मिनि|1|{0} मिनि|0||0||0||0|||{0} से|1|{0} से|0||0||0||0|||{0} मिलिसे|1|{0} मिलिसे|0||0||0||0|||{0} वर्षे|1|{0} वर्ष|0||0||0||0|||{0} महिने|1|{0} महिना|0||0||0||0|||{0} आठवडे|1|{0} आठवडा|0||0||0||0|||{0} दिवस|1|{0} दिवस|0||0||0||0|||{0} तास|1|{0} तास|0||0||0||0|||{0} मिनिटे|1|{0} मिनिट|0||0||0||0|||{0} सेकंद|1|{0} सेकंद|0||0||0||0|||{0} मिलिसेकंद|1|{0} मिलिसेकंद|0||0||0||0|||{0}व|1|{0}व|0||0||0||0|||{0}म|1|{0}म|0||0||0||0|||{0}आ|1|{0}आ|0||0||0||0|||{0}दि|1|{0}दि|0||0||0||0|||{0}ता|1|{0}ता|0||0||0||0|||{0}मि|1|{0}मि|0||0||0||0|||{0}से|1|{0}से|0||0||0||0|||{0} मिलिसे|1|{0} मिलिसे|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
