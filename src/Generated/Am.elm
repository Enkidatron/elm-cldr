module Generated.Am exposing (am)

{-|

@docs am

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "am"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
am : Internal.Locale.Locale
am =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "am||||ጥዋት|ከሰዓት|8|afternoon1|ከሰዓት|am|ጥዋት|evening1|በምሽት|midnight|እኩለ ሌሊት|morning1|ጥዋት|night1|በሌሊት|noon|ቀትር|pm|ከሰዓት|ጥዋት|ከሰዓት|8|afternoon1|ከሰዓት|am|ጥዋት|evening1|በምሽት|midnight|እኩለ ሌሊት|morning1|ጥዋት|night1|በሌሊት|noon|ቀትር|pm|ከሰዓት|ጠ|ከ|8|afternoon1|ከሰዓት|am|ጠ|evening1|በምሽት|midnight|እኩለ ሌሊት|morning1|ጥዋት|night1|በሌሊት|noon|ቀ|pm|ከ|dd/MM/y|d MMM y|d MMMM y|y MMMM d, EEEE|ጃን|ፌብ|ማርች|ኤፕሪ|ሜይ|ጁን|ጁላይ|ኦገስ|ሴፕቴ|ኦክቶ|ኖቬም|ዲሴም|ጃንዋሪ|ፌብሩዋሪ|ማርች|ኤፕሪል|ሜይ|ጁን|ጁላይ|ኦገስት|ሴፕቴምበር|ኦክቶበር|ኖቬምበር|ዲሴምበር|ጃ|ፌ|ማ|ኤ|ሜ|ጁ|ጁ|ኦ|ሴ|ኦ|ኖ|ዲ|0|እሑድ|ሰኞ|ማክሰ|ረቡዕ|ሐሙስ|ዓርብ|ቅዳሜ|እሑድ|ሰኞ|ማክሰኞ|ረቡዕ|ሐሙስ|ዓርብ|ቅዳሜ|እ|ሰ|ማ|ረ|ሐ|ዓ|ቅ|0|ዓ/ዓ|ዓ/ም|ዓመተ ዓለም|ዓመተ ምሕረት|ዓ/ዓ|ዓ/ም|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|H|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E፣ M/d|MMM|LLL|MMMd|MMM d|MMMEd|E፣ MMM d|MMMMd|MMMM d|MMMMEd|E፣ MMMM d|MMMMW-count-one|ሳምንት W የ MMMM|MMMMW-count-other|ሳምንት W የ MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E፣ d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E፣ MMM d y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNH|የቻይና ዩዋን|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|ETB|ብር|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
