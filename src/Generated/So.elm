module Generated.So exposing (so, so_DJ, so_ET, so_KE)

{-|

@docs so, so_DJ, so_ET, so_KE

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

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
so : Internal.Locale.Locale
so =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "so||||GH|GD|2|am|GH|pm|GD|GH|GD|2|am|GH|pm|GD|h|d|2|am|h|pm|d|dd/MM/yy|dd-MMM-y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Abr|May|Jun|Lul|Ogs|Seb|Okt|Nof|Dis|Janaayo|Febraayo|Maarso|Abriil|Maayo|Juun|Luulyo|Agosto|Sebtembar|Oktoobar|Noofeembar|Diseembar|J|F|M|A|M|J|L|O|S|O|N|D|1|Jan|Feb|Mar|Abr|May|Jun|Lul|Ogs|Seb|Okt|Nof|Dis|Jannaayo|Febraayo|Maarso|Abriil|Maayo|Juun|Luulyo|Ogosto|Sebteembar|Oktoobar|Noofeembar|Diseembar|J|F|M|A|M|J|L|O|S|O|N|D|Axd|Isn|Tldo|Arbc|Khms|Jmc|Sbti|Axad|Isniin|Talaado|Arbaco|Khamiis|Jimco|Sabti|A|I|T|A|Kh|J|S|0|BC|AD|Ciise Hortii|Ciise Dabadii|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'toddobaadka' W 'ee' MMMM|MMMMW-count-other|'toddobaadka' W 'ee' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'toddobaadka' w 'ee' Y|yw-count-other|'toddobaadka' w 'ee' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|DBB|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SOS|S|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} snd|1|snd|0||0||0||0|||{0} bil|1|{0} bil|0||0||0||0|||{0} tdbd|1|{0} tdbd|0||0||0||0|||{0} mln|1|{0} mln|0||0||0||0|||{0} scd|1|{0} scd|0||0||0||0|||{0} daqiiqo|1|{0} dqqd|0||0||0||0|||{0} ilbrqsi|1|{0} ilbrqsi|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} Sannado|1|{0} Sannad|0||0||0||0|||{0} bilood|1|{0} bil|0||0||0||0|||{0} toddobaadyo|1|{0} toddobaad|0||0||0||0|||{0} maalmood|1|{0} maalin|0||0||0||0|||{0} saacadood|1|{0} saacad|0||0||0||0|||{0} daqiiqo|1|{0} daqiiqad|0||0||0||0|||{0} ilbiriqsi|1|{0} ilbiriqsi|0||0||0||0|||{0} miliseken|1|{0} miliseken|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}b|1|{0}b|0||0||0||0|||{0}t|1|{0}t|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0} s|1|{0} scd|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}il|1|{0}il|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} iyo {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
so_DJ : Internal.Locale.Locale
so_DJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "so||DJ||GH|GD|2|am|GH|pm|GD|GH|GD|2|am|GH|pm|GD|h|d|2|am|h|pm|d|dd/MM/yy|dd-MMM-y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Abr|May|Jun|Lul|Ogs|Seb|Okt|Nof|Dis|Janaayo|Febraayo|Maarso|Abriil|Maayo|Juun|Luulyo|Agosto|Sebtembar|Oktoobar|Noofeembar|Diseembar|J|F|M|A|M|J|L|O|S|O|N|D|1|Jan|Feb|Mar|Abr|May|Jun|Lul|Ogs|Seb|Okt|Nof|Dis|Jannaayo|Febraayo|Maarso|Abriil|Maayo|Juun|Luulyo|Ogosto|Sebteembar|Oktoobar|Noofeembar|Diseembar|J|F|M|A|M|J|L|O|S|O|N|D|Axd|Isn|Tldo|Arbc|Khms|Jmc|Sbti|Axad|Isniin|Talaado|Arbaco|Khamiis|Jimco|Sabti|A|I|T|A|Kh|J|S|0|BC|AD|Ciise Hortii|Ciise Dabadii|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'toddobaadka' W 'ee' MMMM|MMMMW-count-other|'toddobaadka' W 'ee' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'toddobaadka' w 'ee' Y|yw-count-other|'toddobaadka' w 'ee' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|DBB|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DJF|Fdj|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SOS|S|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} snd|1|snd|0||0||0||0|||{0} bil|1|{0} bil|0||0||0||0|||{0} tdbd|1|{0} tdbd|0||0||0||0|||{0} mln|1|{0} mln|0||0||0||0|||{0} scd|1|{0} scd|0||0||0||0|||{0} daqiiqo|1|{0} dqqd|0||0||0||0|||{0} ilbrqsi|1|{0} ilbrqsi|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} Sannado|1|{0} Sannad|0||0||0||0|||{0} bilood|1|{0} bil|0||0||0||0|||{0} toddobaadyo|1|{0} toddobaad|0||0||0||0|||{0} maalmood|1|{0} maalin|0||0||0||0|||{0} saacadood|1|{0} saacad|0||0||0||0|||{0} daqiiqo|1|{0} daqiiqad|0||0||0||0|||{0} ilbiriqsi|1|{0} ilbiriqsi|0||0||0||0|||{0} miliseken|1|{0} miliseken|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}b|1|{0}b|0||0||0||0|||{0}t|1|{0}t|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0} s|1|{0} scd|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}il|1|{0}il|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} iyo {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
so_ET : Internal.Locale.Locale
so_ET =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "so||ET||GH|GD|2|am|GH|pm|GD|GH|GD|2|am|GH|pm|GD|h|d|2|am|h|pm|d|dd/MM/yy|dd-MMM-y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Abr|May|Jun|Lul|Ogs|Seb|Okt|Nof|Dis|Janaayo|Febraayo|Maarso|Abriil|Maayo|Juun|Luulyo|Agosto|Sebtembar|Oktoobar|Noofeembar|Diseembar|J|F|M|A|M|J|L|O|S|O|N|D|1|Jan|Feb|Mar|Abr|May|Jun|Lul|Ogs|Seb|Okt|Nof|Dis|Jannaayo|Febraayo|Maarso|Abriil|Maayo|Juun|Luulyo|Ogosto|Sebteembar|Oktoobar|Noofeembar|Diseembar|J|F|M|A|M|J|L|O|S|O|N|D|Axd|Isn|Tldo|Arbc|Khms|Jmc|Sbti|Axad|Isniin|Talaado|Arbaco|Khamiis|Jimco|Sabti|A|I|T|A|Kh|J|S|0|BC|AD|Ciise Hortii|Ciise Dabadii|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'toddobaadka' W 'ee' MMMM|MMMMW-count-other|'toddobaadka' W 'ee' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'toddobaadka' w 'ee' Y|yw-count-other|'toddobaadka' w 'ee' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|DBB|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|ETB|Br|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SOS|S|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} snd|1|snd|0||0||0||0|||{0} bil|1|{0} bil|0||0||0||0|||{0} tdbd|1|{0} tdbd|0||0||0||0|||{0} mln|1|{0} mln|0||0||0||0|||{0} scd|1|{0} scd|0||0||0||0|||{0} daqiiqo|1|{0} dqqd|0||0||0||0|||{0} ilbrqsi|1|{0} ilbrqsi|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} Sannado|1|{0} Sannad|0||0||0||0|||{0} bilood|1|{0} bil|0||0||0||0|||{0} toddobaadyo|1|{0} toddobaad|0||0||0||0|||{0} maalmood|1|{0} maalin|0||0||0||0|||{0} saacadood|1|{0} saacad|0||0||0||0|||{0} daqiiqo|1|{0} daqiiqad|0||0||0||0|||{0} ilbiriqsi|1|{0} ilbiriqsi|0||0||0||0|||{0} miliseken|1|{0} miliseken|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}b|1|{0}b|0||0||0||0|||{0}t|1|{0}t|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0} s|1|{0} scd|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}il|1|{0}il|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} iyo {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
so_KE : Internal.Locale.Locale
so_KE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "so||KE||GH|GD|2|am|GH|pm|GD|GH|GD|2|am|GH|pm|GD|h|d|2|am|h|pm|d|dd/MM/yy|dd-MMM-y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Abr|May|Jun|Lul|Ogs|Seb|Okt|Nof|Dis|Janaayo|Febraayo|Maarso|Abriil|Maayo|Juun|Luulyo|Agosto|Sebtembar|Oktoobar|Noofeembar|Diseembar|J|F|M|A|M|J|L|O|S|O|N|D|1|Jan|Feb|Mar|Abr|May|Jun|Lul|Ogs|Seb|Okt|Nof|Dis|Jannaayo|Febraayo|Maarso|Abriil|Maayo|Juun|Luulyo|Ogosto|Sebteembar|Oktoobar|Noofeembar|Diseembar|J|F|M|A|M|J|L|O|S|O|N|D|Axd|Isn|Tldo|Arbc|Khms|Jmc|Sbti|Axad|Isniin|Talaado|Arbaco|Khamiis|Jimco|Sabti|A|I|T|A|Kh|J|S|0|BC|AD|Ciise Hortii|Ciise Dabadii|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'toddobaadka' W 'ee' MMMM|MMMMW-count-other|'toddobaadka' W 'ee' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'toddobaadka' w 'ee' Y|yw-count-other|'toddobaadka' w 'ee' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|DBB|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KES|Ksh|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SOS|S|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} snd|1|snd|0||0||0||0|||{0} bil|1|{0} bil|0||0||0||0|||{0} tdbd|1|{0} tdbd|0||0||0||0|||{0} mln|1|{0} mln|0||0||0||0|||{0} scd|1|{0} scd|0||0||0||0|||{0} daqiiqo|1|{0} dqqd|0||0||0||0|||{0} ilbrqsi|1|{0} ilbrqsi|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} Sannado|1|{0} Sannad|0||0||0||0|||{0} bilood|1|{0} bil|0||0||0||0|||{0} toddobaadyo|1|{0} toddobaad|0||0||0||0|||{0} maalmood|1|{0} maalin|0||0||0||0|||{0} saacadood|1|{0} saacad|0||0||0||0|||{0} daqiiqo|1|{0} daqiiqad|0||0||0||0|||{0} ilbiriqsi|1|{0} ilbiriqsi|0||0||0||0|||{0} miliseken|1|{0} miliseken|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}b|1|{0}b|0||0||0||0|||{0}t|1|{0}t|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0} s|1|{0} scd|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}il|1|{0}il|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} iyo {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )
