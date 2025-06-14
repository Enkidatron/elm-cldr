module Generated.Chr exposing (chr)

{-|

@docs chr

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "chr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 24, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


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
chr : Internal.Locale.Locale
chr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "chr||||ᏌᎾᎴ|ᏒᎯᏱᎢ|5|afternoon1|ᏒᎯᏱᎢᏗᏢ|am|ᏌᎾᎴ|morning1|ᏌᎾᎴ|noon|ᎢᎦ|pm|ᏒᎯᏱᎢ|ᏌᎾᎴ|ᏒᎯᏱᎢᏗᏢ|5|afternoon1|ᏒᎯᏱᎢᏗᏢ|am|ᏌᎾᎴ|morning1|ᏌᎾᎴ|noon|ᎢᎦ|pm|ᏒᎯᏱᎢᏗᏢ|Ꮜ|Ꮢ|5|afternoon1|ᏒᎯᏱᎢᏗᏢ|am|Ꮜ|morning1|ᏌᎾᎴ|noon|Ꭲ|pm|Ꮢ|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|ᎤᏃ|ᎧᎦ|ᎠᏅ|ᎧᏬ|ᎠᏂ|ᏕᎭ|ᎫᏰ|ᎦᎶ|ᏚᎵ|ᏚᏂ|ᏅᏓ|ᎥᏍ|ᎤᏃᎸᏔᏅ|ᎧᎦᎵ|ᎠᏅᏱ|ᎧᏬᏂ|ᎠᏂᏍᎬᏘ|ᏕᎭᎷᏱ|ᎫᏰᏉᏂ|ᎦᎶᏂ|ᏚᎵᏍᏗ|ᏚᏂᏅᏗ|ᏅᏓᏕᏆ|ᎥᏍᎩᏱ|Ꭴ|Ꭷ|Ꭰ|Ꭷ|Ꭰ|Ꮥ|Ꭻ|Ꭶ|Ꮪ|Ꮪ|Ꮕ|Ꭵ|0|ᏆᏍᎬ|ᏉᏅᎯ|ᏔᎵᏁ|ᏦᎢᏁ|ᏅᎩᏁ|ᏧᎾᎩ|ᏈᏕᎾ|ᎤᎾᏙᏓᏆᏍᎬ|ᎤᎾᏙᏓᏉᏅᎯ|ᏔᎵᏁᎢᎦ|ᏦᎢᏁᎢᎦ|ᏅᎩᏁᎢᎦ|ᏧᎾᎩᎶᏍᏗ|ᎤᎾᏙᏓᏈᏕᎾ|Ꮖ|Ꮙ|Ꮤ|Ꮶ|Ꮕ|Ꮷ|Ꭴ|0|BC|AD|ᏧᏓᎷᎸ ᎤᎷᎯᏍᏗ ᎦᎶᏁᏛ|ᎠᏃ ᏙᎻᏂ|BC|AD|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|ᏒᎾᏙᏓᏆᏍᏗ W ᎾᎿ MMMM|MMMMW-count-other|ᏒᎾᏙᏓᏆᏍᏗ W ᎾᎿ MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|’ᏒᎾᏙᏓᏆᏍᏗ’ w ’ᎾᎿ’ Y|yw-count-other|’ᏒᎾᏙᏓᏆᏍᏗ’ w ’ᎾᎿ’ Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
