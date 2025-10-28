module Generated.Am exposing (am)

{-|

@docs am

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

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

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
            pluralRules
            "am||||ጥዋት|ከሰዓት|8|afternoon1|ከሰዓት|am|ጥዋት|evening1|በምሽት|midnight|እኩለ ሌሊት|morning1|ጥዋት|night1|በሌሊት|noon|ቀትር|pm|ከሰዓት|ጥዋት|ከሰዓት|8|afternoon1|ከሰዓት|am|ጥዋት|evening1|በምሽት|midnight|እኩለ ሌሊት|morning1|ጥዋት|night1|በሌሊት|noon|ቀትር|pm|ከሰዓት|ጠ|ከ|8|afternoon1|ከሰዓት|am|ጠ|evening1|በምሽት|midnight|እኩለ ሌሊት|morning1|ጥዋት|night1|በሌሊት|noon|ቀ|pm|ከ|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|ጃን|ፌብ|ማርች|ኤፕሪ|ሜይ|ጁን|ጁላይ|ኦገስ|ሴፕቴ|ኦክቶ|ኖቬም|ዲሴም|ጃንዋሪ|ፌብሩዋሪ|ማርች|ኤፕሪል|ሜይ|ጁን|ጁላይ|ኦገስት|ሴፕቴምበር|ኦክቶበር|ኖቬምበር|ዲሴምበር|ጃ|ፌ|ማ|ኤ|ሜ|ጁ|ጁ|ኦ|ሴ|ኦ|ኖ|ዲ|0|እሑድ|ሰኞ|ማክሰ|ረቡዕ|ሐሙስ|ዓርብ|ቅዳሜ|እሑድ|ሰኞ|ማክሰኞ|ረቡዕ|ሐሙስ|ዓርብ|ቅዳሜ|እ|ሰ|ማ|ረ|ሐ|ዓ|ቅ|0|ዓ/ዓ|ዓ/ም|ዓመተ ዓለም|ዓመተ ምሕረት|ዓ/ዓ|ዓ/ም|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|E d|Ehm|E a h:mm|EHm|E HH:mm|Ehms|E a h:mm:ss|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d y G|GyMMMEd|E MMM d y G|h|a h|H|H|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E፣ d/M|MMM|LLL|MMMd|MMM d|MMMEd|E፣ MMM d|MMMMd|MMMM d|MMMMEd|E፣ MMMM d|MMMMW-count-one|የMMMM Wኛ ሳምንት|MMMMW-count-other|የMMMM Wኛ ሳምንት|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E፣ d/M/y|yMMM|MMM y|yMMMd|MMM d y|yMMMEd|E፣ MMM d y|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|የY wኛ ሳምንት|yw-count-other|የY wኛ ሳምንት|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|ETB|ብር|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ዓመታት|1|{0} ዓመት|0||0||0||0|||{0} ወራት|1|{0} ወራት|0||0||0||0|||{0} ሳምንታት|1|{0} ሳምንት|0||0||0||0|||{0} ቀናት|1|{0} ቀናት|0||0||0||0|||{0} ሰዓ|1|{0} ሰዓ|0||0||0||0|||{0} ደቂቃ|1|{0} ደቂ|0||0||0||0|||{0} ሰከ|1|{0} ሰከ|0||0||0||0|||{0} ሚሴ|1|{0} ሚሴ|0||0||0||0|||{0} ዓመታት|1|{0} ዓመት|0||0||0||0|||{0} ወራት|1|{0} ወር|0||0||0||0|||{0} ሳምንታት|1|{0} ሳምንት|0||0||0||0|||{0} ቀናት|1|{0} ቀናት|0||0||0||0|||{0} ሰዓቶች|1|{0} ሰዓት|0||0||0||0|||{0} ደቂቃዎች|1|{0} ደቂቃ|0||0||0||0|||{0} ሰከንዶች|1|{0} ሰከንድ|0||0||0||0|||{0} ሚሊሰከንድ|1|{0} ሚሊሰከንድ|0||0||0||0|||{0} ዓ|1|{0} ዓመት|0||0||0||0|||{0} ወር|1|{0} ወር|0||0||0||0|||{0} ሳምንት|1|{0} ሳምንት|0||0||0||0|||{0} ቀ|1|{0} ቀ|0||0||0||0|||{0} ሰ|1|{0} ሰ|0||0||0||0|||{0} ደ|1|{0} ደ|0||0||0||0|||{0} ሰ|1|{0} ሰ|0||0||0||0|||{0} ሚሴ|1|{0} ሚሴ|0||0||0||0|||{0}፣ {1}|{0}፣ {1}|{0} እና {1}|{0} እና {1}|{0}፣ {1}|{0}፣ {1}|{0} እና {1}|{0} እና {1}|{0}፣ {1}|{0}፣ {1}|{0} እና {1}|{0} እና {1}|"
        )
