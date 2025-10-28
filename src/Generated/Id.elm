module Generated.Id exposing (id)

{-|

@docs id

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
        [ ( "id"
          , [ Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 15, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 15, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "night1"
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

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
id : Internal.Locale.Locale
id =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "id||||AM|PM|8|afternoon1|siang|am|AM|evening1|sore|midnight|tengah malam|morning1|pagi|night1|malam|noon|tengah hari|pm|PM|AM|PM|8|afternoon1|siang|am|AM|evening1|sore|midnight|tengah malam|morning1|pagi|night1|malam|noon|tengah hari|pm|PM|AM|PM|8|afternoon1|siang|am|AM|evening1|sore|midnight|tengah malam|morning1|pagi|night1|malam|noon|tengah hari|pm|PM|dd/MM/yy|d MMM y|d MMMM y|EEEE, dd MMMM y|Jan|Feb|Mar|Apr|Mei|Jun|Jul|Agu|Sep|Okt|Nov|Des|Januari|Februari|Maret|April|Mei|Juni|Juli|Agustus|September|Oktober|November|Desember|J|F|M|A|M|J|J|A|S|O|N|D|0|Min|Sen|Sel|Rab|Kam|Jum|Sab|Minggu|Senin|Selasa|Rabu|Kamis|Jumat|Sabtu|M|S|S|R|K|J|S|0|SM|M|Sebelum Masehi|Masehi|SM|M|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|48|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|E, d|Ehm|E h.mm\u{202F}a|EHm|E HH.mm|Ehms|E h.mm.ss\u{202F}a|EHms|E HH.mm.ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h.mm\u{202F}a|Hm|HH.mm|hms|h.mm.ss\u{202F}a|Hms|HH.mm.ss|hmsv|h.mm.ss. a v|Hmsv|HH.mm.ss v|hmv|h.mm\u{202F}a v|Hmv|HH.mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-other|'minggu' 'ke'-W MMMM|ms|mm.ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'minggu' 'ke'-w Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-¤||¤||¤||E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|Rs|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|{0} thn|0||0||0||0||0|||{0} bln|0||0||0||0||0|||{0} mgg|0||0||0||0||0|||{0} hr|0||0||0||0||0|||{0} j|0||0||0||0||0|||{0} mnt|0||0||0||0||0|||{0} dtk|0||0||0||0||0|||{0} md|0||0||0||0||0|||{0} tahun|0||0||0||0||0|||{0} bulan|0||0||0||0||0|||{0} minggu|0||0||0||0||0|||{0} hari|0||0||0||0||0|||{0} jam|0||0||0||0||0|||{0} menit|0||0||0||0||0|||{0} detik|0||0||0||0||0|||{0} milidetik|0||0||0||0||0|||{0} thn|0||0||0||0||0|||{0} bln|0||0||0||0||0|||{0} mgg|0||0||0||0||0|||{0} hr|0||0||0||0||0|||{0} j|0||0||0||0||0|||{0} mnt|0||0||0||0||0|||{0} dtk|0||0||0||0||0|||{0} md|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )
