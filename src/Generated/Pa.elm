module Generated.Pa exposing (pa, pa_Guru)

{-|

@docs pa, pa_Guru

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
        [ ( "pa"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
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
                    , target = ( Internal.PluralRule.Range 0 1, [] )
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
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa : Internal.Locale.Locale
pa =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pa||||ਪੂ.ਦੁ.|ਬਾ.ਦੁ.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਪੂ.ਦੁ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਬਾ.ਦੁ.|ਪੂ.ਦੁ.|ਬਾ.ਦੁ.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਪੂ.ਦੁ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਬਾ.ਦੁ.|ਸ.|ਸ਼.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਸ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਸ਼.|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|ਜਨ|ਫ਼ਰ|ਮਾਰਚ|ਅਪ੍ਰੈ|ਮਈ|ਜੂਨ|ਜੁਲਾ|ਅਗ|ਸਤੰ|ਅਕਤੂ|ਨਵੰ|ਦਸੰ|ਜਨਵਰੀ|ਫ਼ਰਵਰੀ|ਮਾਰਚ|ਅਪ੍ਰੈਲ|ਮਈ|ਜੂਨ|ਜੁਲਾਈ|ਅਗਸਤ|ਸਤੰਬਰ|ਅਕਤੂਬਰ|ਨਵੰਬਰ|ਦਸੰਬਰ|ਜ|ਫ਼|ਮਾ|ਅ|ਮ|ਜੂ|ਜੁ|ਅ|ਸ|ਅ|ਨ|ਦ|0|ਐਤ|ਸੋਮ|ਮੰਗਲ|ਬੁੱਧ|ਵੀਰ|ਸ਼ੁੱਕਰ|ਸ਼ਨਿੱਚਰ|ਐਤਵਾਰ|ਸੋਮਵਾਰ|ਮੰਗਲਵਾਰ|ਬੁੱਧਵਾਰ|ਵੀਰਵਾਰ|ਸ਼ੁੱਕਰਵਾਰ|ਸ਼ਨਿੱਚਰਵਾਰ|ਐ|ਸੋ|ਮੰ|ਬੁੱ|ਵੀ|ਸ਼ੁੱ|ਸ਼|0|ਈ. ਪੂ.|ਸੰਨ|ਈਸਵੀ ਪੂਰਵ|ਈਸਵੀ ਸੰਨ|ਈ.ਪੂ.|ਸੰਨ|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/GGGGG y|GyMMM|MMM, G y|GyMMMd|d MMM, G y|GyMMMEd|E d MMM, G y|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, dd-MM.|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|MMMM d|MMMMW-count-one|MMMM ਦਾ W ਹਫ਼ਤਾ|MMMMW-count-other|MMMM ਦਾ W ਹਫ਼ਤਾ|mmss|mm:ss|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ਦਾ w ਹਫ਼ਤਾ|yw-count-other|Y ਦਾ w ਹਫ਼ਤਾ|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2I,|.|-¤||¤||¤||E0I,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|{0} ਸਾਲ|1|{0} ਸਾਲ|0||0||0||0|||{0} ਮਹੀਨੇ|1|{0} ਮਹੀਨਾ|0||0||0||0|||{0} ਹਫ਼ਤੇ|1|{0} ਹਫ਼ਤਾ|0||0||0||0|||{0} ਦਿਨ|1|{0} ਦਿਨ|0||0||0||0|||{0} ਘੰਟੇ|1|{0} ਘੰਟਾ|0||0||0||0|||{0} ਮਿੰਟ|1|{0} ਮਿੰਟ|0||0||0||0|||{0} ਸਕਿੰਟ|1|{0} ਸਕਿੰਟ|0||0||0||0|||{0} ਮਿਲੀਸਕਿੰਟ|1|{0} ਮਿਲੀਸਕਿੰਟ|0||0||0||0|||{0} ਸਾਲ|1|{0} ਸਾਲ|0||0||0||0|||{0} ਮਹੀਨੇ|1|{0} ਮਹੀਨਾ|0||0||0||0|||{0} ਹਫ਼ਤੇ|1|{0} ਹਫ਼ਤਾ|0||0||0||0|||{0} ਦਿਨ|1|{0} ਦਿਨ|0||0||0||0|||{0} ਘੰਟੇ|1|{0} ਘੰਟਾ|0||0||0||0|||{0} ਮਿੰਟ|1|{0} ਮਿੰਟ|0||0||0||0|||{0} ਸਕਿੰਟ|1|{0} ਸਕਿੰਟ|0||0||0||0|||{0} ਮਿਲੀਸਕਿੰਟ|1|{0} ਮਿਲੀਸਕਿੰਟ|0||0||0||0|||{0} ਸਾਲ|1|{0} ਸਾਲ|0||0||0||0|||{0} ਮਹੀਨੇ|1|{0} ਮਹੀਨਾ|0||0||0||0|||{0} ਹਫ਼ਤੇ|1|{0} ਹਫ਼ਤਾ|0||0||0||0|||{0} ਦਿਨ|1|{0} ਦਿਨ|0||0||0||0|||{0} ਘੰਟੇ|1|{0} ਘੰਟਾ|0||0||0||0|||{0} ਮਿੰਟ|1|{0} ਮਿੰਟ|0||0||0||0|||{0} ਸਕਿੰਟ|1|{0} ਸਕਿੰਟ|0||0||0||0|||{0} ਮਿ.ਸ.|1|{0} ਮਿ.ਸ.|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa_Guru : Internal.Locale.Locale
pa_Guru =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pa|Guru|||ਪੂ.ਦੁ.|ਬਾ.ਦੁ.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਪੂ.ਦੁ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਬਾ.ਦੁ.|ਪੂ.ਦੁ.|ਬਾ.ਦੁ.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਪੂ.ਦੁ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਬਾ.ਦੁ.|ਸ.|ਸ਼.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਸ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਸ਼.|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|ਜਨ|ਫ਼ਰ|ਮਾਰਚ|ਅਪ੍ਰੈ|ਮਈ|ਜੂਨ|ਜੁਲਾ|ਅਗ|ਸਤੰ|ਅਕਤੂ|ਨਵੰ|ਦਸੰ|ਜਨਵਰੀ|ਫ਼ਰਵਰੀ|ਮਾਰਚ|ਅਪ੍ਰੈਲ|ਮਈ|ਜੂਨ|ਜੁਲਾਈ|ਅਗਸਤ|ਸਤੰਬਰ|ਅਕਤੂਬਰ|ਨਵੰਬਰ|ਦਸੰਬਰ|ਜ|ਫ਼|ਮਾ|ਅ|ਮ|ਜੂ|ਜੁ|ਅ|ਸ|ਅ|ਨ|ਦ|0|ਐਤ|ਸੋਮ|ਮੰਗਲ|ਬੁੱਧ|ਵੀਰ|ਸ਼ੁੱਕਰ|ਸ਼ਨਿੱਚਰ|ਐਤਵਾਰ|ਸੋਮਵਾਰ|ਮੰਗਲਵਾਰ|ਬੁੱਧਵਾਰ|ਵੀਰਵਾਰ|ਸ਼ੁੱਕਰਵਾਰ|ਸ਼ਨਿੱਚਰਵਾਰ|ਐ|ਸੋ|ਮੰ|ਬੁੱ|ਵੀ|ਸ਼ੁੱ|ਸ਼|0|ਈ. ਪੂ.|ਸੰਨ|ਈਸਵੀ ਪੂਰਵ|ਈਸਵੀ ਸੰਨ|ਈ.ਪੂ.|ਸੰਨ|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/GGGGG y|GyMMM|MMM, G y|GyMMMd|d MMM, G y|GyMMMEd|E d MMM, G y|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, dd-MM.|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|MMMM d|MMMMW-count-one|MMMM ਦਾ W ਹਫ਼ਤਾ|MMMMW-count-other|MMMM ਦਾ W ਹਫ਼ਤਾ|mmss|mm:ss|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ਦਾ w ਹਫ਼ਤਾ|yw-count-other|Y ਦਾ w ਹਫ਼ਤਾ|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2I,|.|-¤||¤||¤||E0I,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|{0} ਸਾਲ|1|{0} ਸਾਲ|0||0||0||0|||{0} ਮਹੀਨੇ|1|{0} ਮਹੀਨਾ|0||0||0||0|||{0} ਹਫ਼ਤੇ|1|{0} ਹਫ਼ਤਾ|0||0||0||0|||{0} ਦਿਨ|1|{0} ਦਿਨ|0||0||0||0|||{0} ਘੰਟੇ|1|{0} ਘੰਟਾ|0||0||0||0|||{0} ਮਿੰਟ|1|{0} ਮਿੰਟ|0||0||0||0|||{0} ਸਕਿੰਟ|1|{0} ਸਕਿੰਟ|0||0||0||0|||{0} ਮਿਲੀਸਕਿੰਟ|1|{0} ਮਿਲੀਸਕਿੰਟ|0||0||0||0|||{0} ਸਾਲ|1|{0} ਸਾਲ|0||0||0||0|||{0} ਮਹੀਨੇ|1|{0} ਮਹੀਨਾ|0||0||0||0|||{0} ਹਫ਼ਤੇ|1|{0} ਹਫ਼ਤਾ|0||0||0||0|||{0} ਦਿਨ|1|{0} ਦਿਨ|0||0||0||0|||{0} ਘੰਟੇ|1|{0} ਘੰਟਾ|0||0||0||0|||{0} ਮਿੰਟ|1|{0} ਮਿੰਟ|0||0||0||0|||{0} ਸਕਿੰਟ|1|{0} ਸਕਿੰਟ|0||0||0||0|||{0} ਮਿਲੀਸਕਿੰਟ|1|{0} ਮਿਲੀਸਕਿੰਟ|0||0||0||0|||{0} ਸਾਲ|1|{0} ਸਾਲ|0||0||0||0|||{0} ਮਹੀਨੇ|1|{0} ਮਹੀਨਾ|0||0||0||0|||{0} ਹਫ਼ਤੇ|1|{0} ਹਫ਼ਤਾ|0||0||0||0|||{0} ਦਿਨ|1|{0} ਦਿਨ|0||0||0||0|||{0} ਘੰਟੇ|1|{0} ਘੰਟਾ|0||0||0||0|||{0} ਮਿੰਟ|1|{0} ਮਿੰਟ|0||0||0||0|||{0} ਸਕਿੰਟ|1|{0} ਸਕਿੰਟ|0||0||0||0|||{0} ਮਿ.ਸ.|1|{0} ਮਿ.ਸ.|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
