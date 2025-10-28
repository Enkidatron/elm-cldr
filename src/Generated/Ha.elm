module Generated.Ha exposing (ha, ha_GH, ha_NE)

{-|

@docs ha, ha_GH, ha_NE

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

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ha : Internal.Locale.Locale
ha =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ha||||SF|YM|2|am|SF|pm|YM|Safiya|Yamma|2|am|Safiya|pm|Yamma|SF|YM|2|am|SF|pm|YM|d/M/yy|d MMM, y|d MMMM, y|EEEE d MMMM, y|Jan|Fab|Mar|Afi|May|Yun|Yul|Agu|Sat|Okt|Nuw|Dis|Janairu|Faburairu|Maris|Afirilu|Mayu|Yuni|Yuli|Agusta|Satumba|Oktoba|Nuwamba|Disamba|J|F|M|A|M|Y|Y|A|S|O|N|D|0|Lah|Lit|Tal|Lar|Alh|Jum|Asa|Lahadi|Litinin|Talata|Laraba|Alhamis|Jummaʼa|Asabar|L|L|T|L|A|J|A|0|K.H|BHAI|Kafin haihuwar annab|Bayan haihuwar annab|K.H|BHAI|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'satin' W 'cikin' MMMM|MMMMW-count-other|'satin' W 'cikin' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|y-MM-dd|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|y MMM d, E|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'sati' w 'cikin' Y|yw-count-other|'sati' w 'cikin' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|shkru {0}|1|shkr {0}|0||0||0||0|||wtnn {0}|1|wat {0}|0||0||0||0|||mkn {0}|1|mk {0}|0||0||0||0|||Rnk. {0}|1|rana {0}|0||0||0||0|||s {0}|1|s {0}|0||0||0||0|||mnt {0}|1|mnt {0}|0||0||0||0|||d {0}|1|d {0}|0||0||0||0|||ms {0}|1|ms {0}|0||0||0||0|||shekaru {0}|1|shekara {0}|0||0||0||0|||watanni {0}|1|wata {0}|0||0||0||0|||makonni {0}|1|mako {0}|0||0||0||0|||ranaku {0}|1|rana {0}|0||0||0||0|||sa′o′i {0}|1|sa′a {0}|0||0||0||0|||mintoci {0}|1|minti {0}|0||0||0||0|||daƙiƙoƙi {0}|1|daƙiƙa {0}|0||0||0||0|||millisakans {0}|1|millisakan {0}|0||0||0||0|||s{0}|1|shkr {0}|0||0||0||0|||w{0}|1|w{0}|0||0||0||0|||m{0}|1|m{0}|0||0||0||0|||r{0}|1|r{0}|0||0||0||0|||s{0}|1|s{0}|0||0||0||0|||minti {0}|1|minti{0}|0||0||0||0|||d {0}|1|d {0}|0||0||0||0|||ms {0}|1|ms {0}|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ha_GH : Internal.Locale.Locale
ha_GH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ha||GH||SF|YM|2|am|SF|pm|YM|Safiya|Yamma|2|am|Safiya|pm|Yamma|SF|YM|2|am|SF|pm|YM|d/M/yy|d MMM, y|d MMMM, y|EEEE d MMMM, y|Jan|Fab|Mar|Afi|May|Yun|Yul|Agu|Sat|Okt|Nuw|Dis|Janairu|Faburairu|Maris|Afirilu|Mayu|Yuni|Yuli|Agusta|Satumba|Oktoba|Nuwamba|Disamba|J|F|M|A|M|Y|Y|A|S|O|N|D|0|Lah|Lit|Tal|Lar|Alh|Jum|Asa|Lahadi|Litinin|Talata|Laraba|Alhamis|Jummaʼa|Asabar|L|L|T|L|A|J|A|0|K.H|BHAI|Kafin haihuwar annab|Bayan haihuwar annab|K.H|BHAI|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'satin' W 'cikin' MMMM|MMMMW-count-other|'satin' W 'cikin' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|y-MM-dd|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|y MMM d, E|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'sati' w 'cikin' Y|yw-count-other|'sati' w 'cikin' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|shkru {0}|1|shkr {0}|0||0||0||0|||wtnn {0}|1|wat {0}|0||0||0||0|||mkn {0}|1|mk {0}|0||0||0||0|||Rnk. {0}|1|rana {0}|0||0||0||0|||s {0}|1|s {0}|0||0||0||0|||mnt {0}|1|mnt {0}|0||0||0||0|||d {0}|1|d {0}|0||0||0||0|||ms {0}|1|ms {0}|0||0||0||0|||shekaru {0}|1|shekara {0}|0||0||0||0|||watanni {0}|1|wata {0}|0||0||0||0|||makonni {0}|1|mako {0}|0||0||0||0|||ranaku {0}|1|rana {0}|0||0||0||0|||sa′o′i {0}|1|sa′a {0}|0||0||0||0|||mintoci {0}|1|minti {0}|0||0||0||0|||daƙiƙoƙi {0}|1|daƙiƙa {0}|0||0||0||0|||millisakans {0}|1|millisakan {0}|0||0||0||0|||s{0}|1|shkr {0}|0||0||0||0|||w{0}|1|w{0}|0||0||0||0|||m{0}|1|m{0}|0||0||0||0|||r{0}|1|r{0}|0||0||0||0|||s{0}|1|s{0}|0||0||0||0|||minti {0}|1|minti{0}|0||0||0||0|||d {0}|1|d {0}|0||0||0||0|||ms {0}|1|ms {0}|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ha_NE : Internal.Locale.Locale
ha_NE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ha||NE||SF|YM|2|am|SF|pm|YM|Safiya|Yamma|2|am|Safiya|pm|Yamma|SF|YM|2|am|SF|pm|YM|d/M/yy|d MMM, y|d MMMM, y|EEEE d MMMM, y|Jan|Fab|Mar|Afi|May|Yun|Yul|Agu|Sat|Okt|Nuw|Dis|Janairu|Faburairu|Maris|Afirilu|Mayu|Yuni|Yuli|Agusta|Satumba|Oktoba|Nuwamba|Disamba|J|F|M|A|M|Y|Y|A|S|O|N|D|0|Lah|Lit|Tal|Lar|Alh|Jum|Asa|Lahadi|Litinin|Talata|Laraba|Alhamis|Jummaʼa|Asabar|L|L|T|L|A|J|A|0|K.H|BHAI|Kafin haihuwar annab|Bayan haihuwar annab|K.H|BHAI|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'satin' W 'cikin' MMMM|MMMMW-count-other|'satin' W 'cikin' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|y-MM-dd|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|y MMM d, E|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'sati' w 'cikin' Y|yw-count-other|'sati' w 'cikin' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|shkru {0}|1|shkr {0}|0||0||0||0|||wtnn {0}|1|wat {0}|0||0||0||0|||mkn {0}|1|mk {0}|0||0||0||0|||Rnk. {0}|1|rana {0}|0||0||0||0|||s {0}|1|s {0}|0||0||0||0|||mnt {0}|1|mnt {0}|0||0||0||0|||d {0}|1|d {0}|0||0||0||0|||ms {0}|1|ms {0}|0||0||0||0|||shekaru {0}|1|shekara {0}|0||0||0||0|||watanni {0}|1|wata {0}|0||0||0||0|||makonni {0}|1|mako {0}|0||0||0||0|||ranaku {0}|1|rana {0}|0||0||0||0|||sa′o′i {0}|1|sa′a {0}|0||0||0||0|||mintoci {0}|1|minti {0}|0||0||0||0|||daƙiƙoƙi {0}|1|daƙiƙa {0}|0||0||0||0|||millisakans {0}|1|millisakan {0}|0||0||0||0|||s{0}|1|shkr {0}|0||0||0||0|||w{0}|1|w{0}|0||0||0||0|||m{0}|1|m{0}|0||0||0||0|||r{0}|1|r{0}|0||0||0||0|||s{0}|1|s{0}|0||0||0||0|||minti {0}|1|minti{0}|0||0||0||0|||d {0}|1|d {0}|0||0||0||0|||ms {0}|1|ms {0}|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )
