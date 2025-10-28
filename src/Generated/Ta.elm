module Generated.Ta exposing (ta, ta_LK, ta_MY, ta_SG)

{-|

@docs ta, ta_LK, ta_MY, ta_SG

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
        [ ( "ta"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 16, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening2"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 5, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 3, 0 ) "night1"
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
ta : Internal.Locale.Locale
ta =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ta||||AM|PM|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|PM|AM|PM|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|PM|AM|PM|11|afternoon1|மதி.|afternoon2|பிற்.|am|AM|evening1|மா.|evening2|அந்தி மா.|midnight|நள்.|morning1|அதி.|morning2|கா.|night1|இர.|noon|நண்.|pm|PM|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|ஜன.|பிப்.|மார்.|ஏப்.|மே|ஜூன்|ஜூலை|ஆக.|செப்.|அக்.|நவ.|டிச.|ஜனவரி|பிப்ரவரி|மார்ச்|ஏப்ரல்|மே|ஜூன்|ஜூலை|ஆகஸ்ட்|செப்டம்பர்|அக்டோபர்|நவம்பர்|டிசம்பர்|ஜ|பி|மா|ஏ|மே|ஜூ|ஜூ|ஆ|செ|அ|ந|டி|0|ஞாயி.|திங்.|செவ்.|புத.|வியா.|வெள்.|சனி|ஞாயிறு|திங்கள்|செவ்வாய்|புதன்|வியாழன்|வெள்ளி|சனி|ஞா|தி|செ|பு|வி|வெ|ச|0|கி.மு.|கி.பி.|கிறிஸ்துவுக்கு முன்|அன்னோ டோமினி|கி.மு.|கி.பி.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|dd-MM, E|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|MMM d, E|MMMMd|d MMMM|MMMMW-count-one|MMMM W -ஆம் வாரம்|MMMMW-count-other|MMMM W -ஆம் வாரம்|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ஆம் ஆண்டின் w -ஆம் வாரம்|yw-count-other|Y ஆம் ஆண்டின் w -ஆம் வாரம்|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2I,|.|-¤||¤||¤||E0I,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ஆண்டு.|1|{0} ஆண்டு|0||0||0||0|||{0} மாத.|1|{0} மாதம்|0||0||0||0|||{0} வார.|1|{0} வாரம்|0||0||0||0|||{0} நாட்கள்|1|{0} நாள்|0||0||0||0|||{0} மணிநேரம்|1|{0} மணிநேரம்|0||0||0||0|||{0} நிமிட|1|{0} நிமிடம்|0||0||0||0|||{0} விநாடி|1|{0} விநாடி|0||0||0||0|||{0} மி.வி.|1|{0} மி.வி.|0||0||0||0|||{0} ஆண்டுகள்|1|{0} ஆண்டு|0||0||0||0|||{0} மாதங்கள்|1|{0} மாதம்|0||0||0||0|||{0} வாரங்கள்|1|{0} வாரம்|0||0||0||0|||{0} நாட்கள்|1|{0} நாள்|0||0||0||0|||{0} மணிநேரங்கள்|1|{0} மணிநேரம்|0||0||0||0|||{0} நிமிடங்கள்|1|{0} நிமிடம்|0||0||0||0|||{0} விநாடிகள்|1|{0} விநாடி|0||0||0||0|||{0} மில்லிவிநாடிகள்|1|{0} மில்லிவிநாடி|0||0||0||0|||{0} ஆ|1|{0} ஆ|0||0||0||0|||{0} மா|1|{0} மா|0||0||0||0|||{0} வா|1|{0} வா|0||0||0||0|||{0} நா|1|{0} நா|0||0||0||0|||{0} ம.நே.|1|{0} ம.நே.|0||0||0||0|||{0} நிமி.|1|{0} நிமி.|0||0||0||0|||{0} வி.|1|{0} வி.|0||0||0||0|||{0} மி.வி.|1|{0} மி.வி.|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ta_LK : Internal.Locale.Locale
ta_LK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ta||LK||AM|PM|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|PM|AM|PM|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|PM|AM|PM|11|afternoon1|மதி.|afternoon2|பிற்.|am|AM|evening1|மா.|evening2|அந்தி மா.|midnight|நள்.|morning1|அதி.|morning2|கா.|night1|இர.|noon|நண்.|pm|PM|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|ஜன.|பிப்.|மார்.|ஏப்.|மே|ஜூன்|ஜூலை|ஆக.|செப்.|அக்.|நவ.|டிச.|ஜனவரி|பிப்ரவரி|மார்ச்|ஏப்ரல்|மே|ஜூன்|ஜூலை|ஆகஸ்ட்|செப்டம்பர்|அக்டோபர்|நவம்பர்|டிசம்பர்|ஜ|பி|மா|ஏ|மே|ஜூ|ஜூ|ஆ|செ|அ|ந|டி|0|ஞாயி.|திங்.|செவ்.|புத.|வியா.|வெள்.|சனி|ஞாயிறு|திங்கள்|செவ்வாய்|புதன்|வியாழன்|வெள்ளி|சனி|ஞா|தி|செ|பு|வி|வெ|ச|0|கி.மு.|கி.பி.|கிறிஸ்துவுக்கு முன்|அன்னோ டோமினி|கி.மு.|கி.பி.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|dd-MM, E|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|MMM d, E|MMMMd|d MMMM|MMMMW-count-one|MMMM W -ஆம் வாரம்|MMMMW-count-other|MMMM W -ஆம் வாரம்|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ஆம் ஆண்டின் w -ஆம் வாரம்|yw-count-other|Y ஆம் ஆண்டின் w -ஆம் வாரம்|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3I,|.|-||||||E2I,|.|-¤||¤||¤||E0I,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs.|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ஆண்டு.|1|{0} ஆண்டு|0||0||0||0|||{0} மாத.|1|{0} மாதம்|0||0||0||0|||{0} வார.|1|{0} வாரம்|0||0||0||0|||{0} நாட்கள்|1|{0} நாள்|0||0||0||0|||{0} மணிநேரம்|1|{0} மணிநேரம்|0||0||0||0|||{0} நிமிட|1|{0} நிமிடம்|0||0||0||0|||{0} விநாடி|1|{0} விநாடி|0||0||0||0|||{0} மி.வி.|1|{0} மி.வி.|0||0||0||0|||{0} ஆண்டுகள்|1|{0} ஆண்டு|0||0||0||0|||{0} மாதங்கள்|1|{0} மாதம்|0||0||0||0|||{0} வாரங்கள்|1|{0} வாரம்|0||0||0||0|||{0} நாட்கள்|1|{0} நாள்|0||0||0||0|||{0} மணிநேரங்கள்|1|{0} மணிநேரம்|0||0||0||0|||{0} நிமிடங்கள்|1|{0} நிமிடம்|0||0||0||0|||{0} விநாடிகள்|1|{0} விநாடி|0||0||0||0|||{0} மில்லிவிநாடிகள்|1|{0} மில்லிவிநாடி|0||0||0||0|||{0} ஆ|1|{0} ஆ|0||0||0||0|||{0} மா|1|{0} மா|0||0||0||0|||{0} வா|1|{0} வா|0||0||0||0|||{0} நா|1|{0} நா|0||0||0||0|||{0} ம.நே.|1|{0} ம.நே.|0||0||0||0|||{0} நிமி.|1|{0} நிமி.|0||0||0||0|||{0} வி.|1|{0} வி.|0||0||0||0|||{0} மி.வி.|1|{0} மி.வி.|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


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
ta_MY : Internal.Locale.Locale
ta_MY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ta||MY||AM|PM|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|PM|AM|PM|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|PM|AM|PM|11|afternoon1|மதி.|afternoon2|பிற்.|am|AM|evening1|மா.|evening2|அந்தி மா.|midnight|நள்.|morning1|அதி.|morning2|கா.|night1|இர.|noon|நண்.|pm|PM|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|ஜன.|பிப்.|மார்.|ஏப்.|மே|ஜூன்|ஜூலை|ஆக.|செப்.|அக்.|நவ.|டிச.|ஜனவரி|பிப்ரவரி|மார்ச்|ஏப்ரல்|மே|ஜூன்|ஜூலை|ஆகஸ்ட்|செப்டம்பர்|அக்டோபர்|நவம்பர்|டிசம்பர்|ஜ|பி|மா|ஏ|மே|ஜூ|ஜூ|ஆ|செ|அ|ந|டி|0|ஞாயி.|திங்.|செவ்.|புத.|வியா.|வெள்.|சனி|ஞாயிறு|திங்கள்|செவ்வாய்|புதன்|வியாழன்|வெள்ளி|சனி|ஞா|தி|செ|பு|வி|வெ|ச|0|கி.மு.|கி.பி.|கிறிஸ்துவுக்கு முன்|அன்னோ டோமினி|கி.மு.|கி.பி.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|dd-MM, E|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|MMM d, E|MMMMd|d MMMM|MMMMW-count-one|MMMM W -ஆம் வாரம்|MMMMW-count-other|MMMM W -ஆம் வாரம்|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ஆம் ஆண்டின் w -ஆம் வாரம்|yw-count-other|Y ஆம் ஆண்டின் w -ஆம் வாரம்|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|S$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ஆண்டு.|1|{0} ஆண்டு|0||0||0||0|||{0} மாத.|1|{0} மாதம்|0||0||0||0|||{0} வார.|1|{0} வாரம்|0||0||0||0|||{0} நாட்கள்|1|{0} நாள்|0||0||0||0|||{0} மணிநேரம்|1|{0} மணிநேரம்|0||0||0||0|||{0} நிமிட|1|{0} நிமிடம்|0||0||0||0|||{0} விநாடி|1|{0} விநாடி|0||0||0||0|||{0} மி.வி.|1|{0} மி.வி.|0||0||0||0|||{0} ஆண்டுகள்|1|{0} ஆண்டு|0||0||0||0|||{0} மாதங்கள்|1|{0} மாதம்|0||0||0||0|||{0} வாரங்கள்|1|{0} வாரம்|0||0||0||0|||{0} நாட்கள்|1|{0} நாள்|0||0||0||0|||{0} மணிநேரங்கள்|1|{0} மணிநேரம்|0||0||0||0|||{0} நிமிடங்கள்|1|{0} நிமிடம்|0||0||0||0|||{0} விநாடிகள்|1|{0} விநாடி|0||0||0||0|||{0} மில்லிவிநாடிகள்|1|{0} மில்லிவிநாடி|0||0||0||0|||{0} ஆ|1|{0} ஆ|0||0||0||0|||{0} மா|1|{0} மா|0||0||0||0|||{0} வா|1|{0} வா|0||0||0||0|||{0} நா|1|{0} நா|0||0||0||0|||{0} ம.நே.|1|{0} ம.நே.|0||0||0||0|||{0} நிமி.|1|{0} நிமி.|0||0||0||0|||{0} வி.|1|{0} வி.|0||0||0||0|||{0} மி.வி.|1|{0} மி.வி.|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


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
ta_SG : Internal.Locale.Locale
ta_SG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ta||SG||AM|PM|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|PM|AM|PM|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|PM|AM|PM|11|afternoon1|மதி.|afternoon2|பிற்.|am|AM|evening1|மா.|evening2|அந்தி மா.|midnight|நள்.|morning1|அதி.|morning2|கா.|night1|இர.|noon|நண்.|pm|PM|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|ஜன.|பிப்.|மார்.|ஏப்.|மே|ஜூன்|ஜூலை|ஆக.|செப்.|அக்.|நவ.|டிச.|ஜனவரி|பிப்ரவரி|மார்ச்|ஏப்ரல்|மே|ஜூன்|ஜூலை|ஆகஸ்ட்|செப்டம்பர்|அக்டோபர்|நவம்பர்|டிசம்பர்|ஜ|பி|மா|ஏ|மே|ஜூ|ஜூ|ஆ|செ|அ|ந|டி|0|ஞாயி.|திங்.|செவ்.|புத.|வியா.|வெள்.|சனி|ஞாயிறு|திங்கள்|செவ்வாய்|புதன்|வியாழன்|வெள்ளி|சனி|ஞா|தி|செ|பு|வி|வெ|ச|0|கி.மு.|கி.பி.|கிறிஸ்துவுக்கு முன்|அன்னோ டோமினி|கி.மு.|கி.பி.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|dd-MM, E|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|MMM d, E|MMMMd|d MMMM|MMMMW-count-one|MMMM W -ஆம் வாரம்|MMMMW-count-other|MMMM W -ஆம் வாரம்|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ஆம் ஆண்டின் w -ஆம் வாரம்|yw-count-other|Y ஆம் ஆண்டின் w -ஆம் வாரம்|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ஆண்டு.|1|{0} ஆண்டு|0||0||0||0|||{0} மாத.|1|{0} மாதம்|0||0||0||0|||{0} வார.|1|{0} வாரம்|0||0||0||0|||{0} நாட்கள்|1|{0} நாள்|0||0||0||0|||{0} மணிநேரம்|1|{0} மணிநேரம்|0||0||0||0|||{0} நிமிட|1|{0} நிமிடம்|0||0||0||0|||{0} விநாடி|1|{0} விநாடி|0||0||0||0|||{0} மி.வி.|1|{0} மி.வி.|0||0||0||0|||{0} ஆண்டுகள்|1|{0} ஆண்டு|0||0||0||0|||{0} மாதங்கள்|1|{0} மாதம்|0||0||0||0|||{0} வாரங்கள்|1|{0} வாரம்|0||0||0||0|||{0} நாட்கள்|1|{0} நாள்|0||0||0||0|||{0} மணிநேரங்கள்|1|{0} மணிநேரம்|0||0||0||0|||{0} நிமிடங்கள்|1|{0} நிமிடம்|0||0||0||0|||{0} விநாடிகள்|1|{0} விநாடி|0||0||0||0|||{0} மில்லிவிநாடிகள்|1|{0} மில்லிவிநாடி|0||0||0||0|||{0} ஆ|1|{0} ஆ|0||0||0||0|||{0} மா|1|{0} மா|0||0||0||0|||{0} வா|1|{0} வா|0||0||0||0|||{0} நா|1|{0} நா|0||0||0||0|||{0} ம.நே.|1|{0} ம.நே.|0||0||0||0|||{0} நிமி.|1|{0} நிமி.|0||0||0||0|||{0} வி.|1|{0} வி.|0||0||0||0|||{0} மி.வி.|1|{0} மி.வி.|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
