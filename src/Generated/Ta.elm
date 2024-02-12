module Generated.Ta exposing (ta, ta_LK, ta_MY, ta_SG)

{-|

@docs ta, ta_LK, ta_MY, ta_SG

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


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


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h:mm:ss z
  - Full : a h:mm:ss zzzz

-}
ta : Internal.Locale.Locale
ta =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ta||||AM|பிற்பகல்|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|பிற்பகல்|AM|பிற்பகல்|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|பிற்பகல்|மு.ப|பி.ப|11|afternoon1|மதி.|afternoon2|பிற்.|am|மு.ப|evening1|மா.|evening2|அந்தி மா.|midnight|நள்.|morning1|அதி.|morning2|கா.|night1|இர.|noon|நண்.|pm|பி.ப|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|ஜன.|பிப்.|மார்.|ஏப்.|மே|ஜூன்|ஜூலை|ஆக.|செப்.|அக்.|நவ.|டிச.|ஜனவரி|பிப்ரவரி|மார்ச்|ஏப்ரல்|மே|ஜூன்|ஜூலை|ஆகஸ்ட்|செப்டம்பர்|அக்டோபர்|நவம்பர்|டிசம்பர்|ஜ|பி|மா|ஏ|மே|ஜூ|ஜூ|ஆ|செ|அ|ந|டி|0|ஞாயி.|திங்.|செவ்.|புத.|வியா.|வெள்.|சனி|ஞாயிறு|திங்கள்|செவ்வாய்|புதன்|வியாழன்|வெள்ளி|சனி|ஞா|தி|செ|பு|வி|வெ|ச|0|கி.மு.|கி.பி.|கிறிஸ்துவுக்கு முன்|அன்னோ டோமினி|கி.மு.|கி.பி.|a h:mm|a h:mm:ss|a h:mm:ss z|a h:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E a h:mm|EHm|E HH:mm|Ehms|E a h:mm:ss|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|a h|H|HH|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|HH:mm:ss|hmsv|a h:mm:ss v|Hmsv|HH:mm:ss v|hmv|a h:mm v|Hmv|HH:mm v|M|L|Md|d/M|MEd|dd-MM, E|MMdd|dd-MM|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|d MMMM|MMMMW-count-one|MMMM W -ஆம் வாரம்|MMMMW-count-other|MMMM W -ஆம் வாரம்|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ஆம் ஆண்டின் w -ஆம் வாரம்|yw-count-other|Y ஆம் ஆண்டின் w -ஆம் வாரம்|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2I,|.|-¤||¤||¤||E0I,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
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
            "ta||LK||AM|பிற்பகல்|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|பிற்பகல்|AM|பிற்பகல்|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|பிற்பகல்|மு.ப|பி.ப|11|afternoon1|மதி.|afternoon2|பிற்.|am|மு.ப|evening1|மா.|evening2|அந்தி மா.|midnight|நள்.|morning1|அதி.|morning2|கா.|night1|இர.|noon|நண்.|pm|பி.ப|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|ஜன.|பிப்.|மார்.|ஏப்.|மே|ஜூன்|ஜூலை|ஆக.|செப்.|அக்.|நவ.|டிச.|ஜனவரி|பிப்ரவரி|மார்ச்|ஏப்ரல்|மே|ஜூன்|ஜூலை|ஆகஸ்ட்|செப்டம்பர்|அக்டோபர்|நவம்பர்|டிசம்பர்|ஜ|பி|மா|ஏ|மே|ஜூ|ஜூ|ஆ|செ|அ|ந|டி|0|ஞாயி.|திங்.|செவ்.|புத.|வியா.|வெள்.|சனி|ஞாயிறு|திங்கள்|செவ்வாய்|புதன்|வியாழன்|வெள்ளி|சனி|ஞா|தி|செ|பு|வி|வெ|ச|0|கி.மு.|கி.பி.|கிறிஸ்துவுக்கு முன்|அன்னோ டோமினி|கி.மு.|கி.பி.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E a h:mm|EHm|E HH:mm|Ehms|E a h:mm:ss|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|a h|H|HH|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|HH:mm:ss|hmsv|a h:mm:ss v|Hmsv|HH:mm:ss v|hmv|a h:mm v|Hmv|HH:mm v|M|L|Md|d/M|MEd|dd-MM, E|MMdd|dd-MM|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|d MMMM|MMMMW-count-one|MMMM W -ஆம் வாரம்|MMMMW-count-other|MMMM W -ஆம் வாரம்|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ஆம் ஆண்டின் w -ஆம் வாரம்|yw-count-other|Y ஆம் ஆண்டின் w -ஆம் வாரம்|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3I,|.|-||||||E2I,|.|-¤||¤||¤||E0I,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs.|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h:mm:ss z
  - Full : a h:mm:ss zzzz

-}
ta_MY : Internal.Locale.Locale
ta_MY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ta||MY||AM|பிற்பகல்|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|பிற்பகல்|AM|பிற்பகல்|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|பிற்பகல்|மு.ப|பி.ப|11|afternoon1|மதி.|afternoon2|பிற்.|am|மு.ப|evening1|மா.|evening2|அந்தி மா.|midnight|நள்.|morning1|அதி.|morning2|கா.|night1|இர.|noon|நண்.|pm|பி.ப|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|ஜன.|பிப்.|மார்.|ஏப்.|மே|ஜூன்|ஜூலை|ஆக.|செப்.|அக்.|நவ.|டிச.|ஜனவரி|பிப்ரவரி|மார்ச்|ஏப்ரல்|மே|ஜூன்|ஜூலை|ஆகஸ்ட்|செப்டம்பர்|அக்டோபர்|நவம்பர்|டிசம்பர்|ஜ|பி|மா|ஏ|மே|ஜூ|ஜூ|ஆ|செ|அ|ந|டி|0|ஞாயி.|திங்.|செவ்.|புத.|வியா.|வெள்.|சனி|ஞாயிறு|திங்கள்|செவ்வாய்|புதன்|வியாழன்|வெள்ளி|சனி|ஞா|தி|செ|பு|வி|வெ|ச|0|கி.மு.|கி.பி.|கிறிஸ்துவுக்கு முன்|அன்னோ டோமினி|கி.மு.|கி.பி.|a h:mm|a h:mm:ss|a h:mm:ss z|a h:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E a h:mm|EHm|E HH:mm|Ehms|E a h:mm:ss|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|a h|H|HH|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|HH:mm:ss|hmsv|a h:mm:ss v|Hmsv|HH:mm:ss v|hmv|a h:mm v|Hmv|HH:mm v|M|L|Md|d/M|MEd|dd-MM, E|MMdd|dd-MM|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|d MMMM|MMMMW-count-one|MMMM W -ஆம் வாரம்|MMMMW-count-other|MMMM W -ஆம் வாரம்|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ஆம் ஆண்டின் w -ஆம் வாரம்|yw-count-other|Y ஆம் ஆண்டின் w -ஆம் வாரம்|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|S$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h:mm:ss z
  - Full : a h:mm:ss zzzz

-}
ta_SG : Internal.Locale.Locale
ta_SG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ta||SG||AM|பிற்பகல்|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|பிற்பகல்|AM|பிற்பகல்|11|afternoon1|மதியம்|afternoon2|பிற்பகல்|am|AM|evening1|மாலை|evening2|அந்தி மாலை|midnight|நள்ளிரவு|morning1|அதிகாலை|morning2|காலை|night1|இரவு|noon|நண்பகல்|pm|பிற்பகல்|மு.ப|பி.ப|11|afternoon1|மதி.|afternoon2|பிற்.|am|மு.ப|evening1|மா.|evening2|அந்தி மா.|midnight|நள்.|morning1|அதி.|morning2|கா.|night1|இர.|noon|நண்.|pm|பி.ப|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|ஜன.|பிப்.|மார்.|ஏப்.|மே|ஜூன்|ஜூலை|ஆக.|செப்.|அக்.|நவ.|டிச.|ஜனவரி|பிப்ரவரி|மார்ச்|ஏப்ரல்|மே|ஜூன்|ஜூலை|ஆகஸ்ட்|செப்டம்பர்|அக்டோபர்|நவம்பர்|டிசம்பர்|ஜ|பி|மா|ஏ|மே|ஜூ|ஜூ|ஆ|செ|அ|ந|டி|0|ஞாயி.|திங்.|செவ்.|புத.|வியா.|வெள்.|சனி|ஞாயிறு|திங்கள்|செவ்வாய்|புதன்|வியாழன்|வெள்ளி|சனி|ஞா|தி|செ|பு|வி|வெ|ச|0|கி.மு.|கி.பி.|கிறிஸ்துவுக்கு முன்|அன்னோ டோமினி|கி.மு.|கி.பி.|a h:mm|a h:mm:ss|a h:mm:ss z|a h:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E a h:mm|EHm|E HH:mm|Ehms|E a h:mm:ss|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|a h|H|HH|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|HH:mm:ss|hmsv|a h:mm:ss v|Hmsv|HH:mm:ss v|hmv|a h:mm v|Hmv|HH:mm v|M|L|Md|d/M|MEd|dd-MM, E|MMdd|dd-MM|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|d MMMM|MMMMW-count-one|MMMM W -ஆம் வாரம்|MMMMW-count-other|MMMM W -ஆம் வாரம்|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ஆம் ஆண்டின் w -ஆம் வாரம்|yw-count-other|Y ஆம் ஆண்டின் w -ஆம் வாரம்|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
