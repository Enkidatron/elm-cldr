module Generated.Ja exposing (ja)

{-|

@docs ja

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
        [ ( "ja"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 23, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 4, 0 ) "night2"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


pluralRules : Internal.PluralRule.PluralRulesInfo
pluralRules =
    { one = Nothing
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : y/MM/dd
  - Medium : y/MM/dd
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H時mm分ss秒 zzzz

-}
ja : Internal.Locale.Locale
ja =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ja||||午前|午後|9|afternoon1|昼|am|午前|evening1|夕方|midnight|真夜中|morning1|朝|night1|夜|night2|夜中|noon|正午|pm|午後|午前|午後|9|afternoon1|昼|am|午前|evening1|夕方|midnight|真夜中|morning1|朝|night1|夜|night2|夜中|noon|正午|pm|午後|午前|午後|9|afternoon1|昼|am|午前|evening1|夕方|midnight|真夜中|morning1|朝|night1|夜|night2|夜中|noon|正午|pm|午後|y/MM/dd|y/MM/dd|y年M月d日|y年M月d日EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1|2|3|4|5|6|7|8|9|10|11|12|0|日|月|火|水|木|金|土|日曜日|月曜日|火曜日|水曜日|木曜日|金曜日|土曜日|日|月|火|水|木|金|土|0|紀元前|西暦|紀元前|西暦|BC|AD|H:mm|H:mm:ss|H:mm:ss z|H時mm分ss秒 zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|54|Bh|BK時|Bhm|BK:mm|Bhms|BK:mm:ss|d|d日|E|ccc|EBhm|BK:mm (E)|EBhms|BK:mm:ss (E)|Ed|d日(E)|EEEEd|d日EEEE|Ehm|aK:mm (E)|EHm|H:mm (E)|Ehms|aK:mm:ss (E)|EHms|H:mm:ss (E)|Gy|Gy年|GyMd|Gy/M/d|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日(E)|GyMMMEEEEd|Gy年M月d日EEEE|h|aK時|H|H時|hm|aK:mm|Hm|H:mm|hms|aK:mm:ss|Hms|H:mm:ss|hmsv|aK:mm:ss v|Hmsv|H:mm:ss v|hmv|aK:mm v|Hmv|H:mm v|M|M月|Md|M/d|MEd|M/d(E)|MEEEEd|M/dEEEE|MMM|M月|MMMd|M月d日|MMMEd|M月d日(E)|MMMEEEEd|M月d日EEEE|MMMMd|M月d日|MMMMW-count-other|M月第W週|ms|mm:ss|y|y年|yM|y/M|yMd|y/M/d|yMEd|y/M/d(E)|yMEEEEd|y/M/dEEEE|yMM|y/MM|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日(E)|yMMMEEEEd|y年M月d日EEEE|yMMMM|y年M月|yQQQ|y/QQQ|yQQQQ|y年QQQQ|yw-count-other|Y年第w週|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|元|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|￥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|レイ|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|{0} 年|0||0||0||0||0|||{0} か月|0||0||0||0||0|||{0} 週間|0||0||0||0||0|||{0} 日|0||0||0||0||0|||{0} 時間|0||0||0||0||0|||{0} 分|0||0||0||0||0|||{0} 秒|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} 年|0||0||0||0||0|||{0} か月|0||0||0||0||0|||{0} 週間|0||0||0||0||0|||{0} 日|0||0||0||0||0|||{0} 時間|0||0||0||0||0|||{0} 分|0||0||0||0||0|||{0} 秒|0||0||0||0||0|||{0} ミリ秒|0||0||0||0||0|||{0}y|0||0||0||0||0|||{0}m|0||0||0||0||0|||{0}w|0||0||0||0||0|||{0}d|0||0||0||0||0|||{0}h|0||0||0||0||0|||{0}m|0||0||0||0||0|||{0}s|0||0||0||0||0|||{0}ms|0||0||0||0||0|||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0}{1}|{0}{1}|{0}{1}|{0}{1}|"
        )
