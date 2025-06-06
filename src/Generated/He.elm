module Generated.He exposing (he)

{-|

@docs he

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "he"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 3, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 6, 0 ) "night2"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.M.y
  - Medium : d בMMM y
  - Long : d בMMMM y
  - Full : EEEE, d בMMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
he : Internal.Locale.Locale
he =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "he||||AM|PM|9|afternoon1|צהריים|afternoon2|אחר הצהריים|am|AM|evening1|ערב|midnight|חצות|morning1|בוקר|night1|לילה|night2|לפנות בוקר|pm|PM|AM|PM|9|afternoon1|בצהריים|afternoon2|אחר הצהריים|am|AM|evening1|בערב|midnight|חצות|morning1|בבוקר|night1|בלילה|night2|לפנות בוקר|pm|PM|AM|PM|9|afternoon1|בצהריים|afternoon2|אחה״צ|am|AM|evening1|בערב|midnight|חצות|morning1|בבוקר|night1|בלילה|night2|לפנות בוקר|pm|PM|d.M.y|d בMMM y|d בMMMM y|EEEE, d בMMMM y|ינו׳|פבר׳|מרץ|אפר׳|מאי|יוני|יולי|אוג׳|ספט׳|אוק׳|נוב׳|דצמ׳|ינואר|פברואר|מרץ|אפריל|מאי|יוני|יולי|אוגוסט|ספטמבר|אוקטובר|נובמבר|דצמבר|1|2|3|4|5|6|7|8|9|10|11|12|0|יום א׳|יום ב׳|יום ג׳|יום ד׳|יום ה׳|יום ו׳|שבת|יום ראשון|יום שני|יום שלישי|יום רביעי|יום חמישי|יום שישי|יום שבת|א׳|ב׳|ג׳|ד׳|ה׳|ו׳|ש׳|0|לפנה״ס|לספירה|לפני הספירה|לספירה|לפני|אחריי|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|52|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E ה-d|Ehm|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d בMMM y G|GyMMMEd|E, d בMMM y G|h|\u{200F}h a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M|MEd|E, d.M|MMM|LLL|MMMd|d בMMM|MMMEd|E, d בMMM|MMMMd|d בMMMM|MMMMW-count-one|שבוע W בMMMM|MMMMW-count-two|שבוע W בMMMM|MMMMW-count-other|שבוע W בMMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMM|M.y|yMMM|MMM y|yMMMd|d בMMM y|yMMMEd|E, d בMMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|שבוע w בשנת Y|yw-count-two|שבוע w בשנת Y|yw-count-other|שבוע w בשנת Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}\u{200F}¤|\u{200F}|\u{00A0}\u{200F}¤|\u{200F}|\u{00A0}\u{200F}¤|E0W,|.|\u{200E}-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р|BZD|$|CAD|CA$|CLP|$|CNY|\u{200E}CN¥\u{200E}|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILP|ל״י|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
