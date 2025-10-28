module Generated.Vi exposing (vi)

{-|

@docs vi

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
        [ ( "vi"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
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
vi : Internal.Locale.Locale
vi =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "vi||||SA|CH|8|afternoon1|chiều|am|SA|evening1|tối|midnight|nửa đêm|morning1|sáng|night1|đêm|noon|TR|pm|CH|SA|CH|8|afternoon1|chiều|am|SA|evening1|tối|midnight|nửa đêm|morning1|sáng|night1|đêm|noon|trưa|pm|CH|s|c|8|afternoon1|chiều|am|s|evening1|tối|midnight|nửa đêm|morning1|sáng|night1|đêm|noon|tr|pm|c|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|thg 1|thg 2|thg 3|thg 4|thg 5|thg 6|thg 7|thg 8|thg 9|thg 10|thg 11|thg 12|tháng 1|tháng 2|tháng 3|tháng 4|tháng 5|tháng 6|tháng 7|tháng 8|tháng 9|tháng 10|tháng 11|tháng 12|1|2|3|4|5|6|7|8|9|10|11|12|1|Tháng 1|Tháng 2|Tháng 3|Tháng 4|Tháng 5|Tháng 6|Tháng 7|Tháng 8|Tháng 9|Tháng 10|Tháng 11|Tháng 12|Tháng 1|Tháng 2|Tháng 3|Tháng 4|Tháng 5|Tháng 6|Tháng 7|Tháng 8|Tháng 9|Tháng 10|Tháng 11|Tháng 12|1|2|3|4|5|6|7|8|9|10|11|12|CN|Th 2|Th 3|Th 4|Th 5|Th 6|Th 7|Chủ Nhật|Thứ Hai|Thứ Ba|Thứ Tư|Thứ Năm|Thứ Sáu|Thứ Bảy|CN|T2|T3|T4|T5|T6|T7|0|TCN|SCN|Trước Chúa Giáng Sinh|Sau Công Nguyên|TCN|CN|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{0} {1}|{0} {1}|{0} {1}|{0} {1}|51|Bh|h 'giờ' B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|h:mm B E|EBhms|h:mm:ss B E|Ed|E, 'ngày' d|Ehm|h:mm\u{202F}a E|EHm|HH:mm E|Ehms|h:mm:ss\u{202F}a E|EHms|HH:mm:ss E|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM, y G|GyMMMEd|E, d MMM, y G|h|h\u{202F}a|H|HH 'giờ'|hm|h:mm\u{202F}a|Hm|H:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-other|'tuần' W 'của' 'tháng' M|mmss|mm:ss|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|'tháng' MM, y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM 'năm' y|yQQQ|QQQ y|yQQQQ|QQQQ 'năm' y|yw-count-other|'tuần' w 'của' 'năm' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|{0} năm|0||0||0||0||0|||{0} tháng|0||0||0||0||0|||{0} tuần|0||0||0||0||0|||{0} ngày|0||0||0||0||0|||{0} giờ|0||0||0||0||0|||{0} phút|0||0||0||0||0|||{0} giây|0||0||0||0||0|||{0} mili giây|0||0||0||0||0|||{0} năm|0||0||0||0||0|||{0} tháng|0||0||0||0||0|||{0} tuần|0||0||0||0||0|||{0} ngày|0||0||0||0||0|||{0} giờ|0||0||0||0||0|||{0} phút|0||0||0||0||0|||{0} giây|0||0||0||0||0|||{0} mili giây|0||0||0||0||0|||{0} năm|0||0||0||0||0|||{0} tháng|0||0||0||0||0|||{0} tuần|0||0||0||0||0|||{0} ngày|0||0||0||0||0|||{0} giờ|0||0||0||0||0|||{0} phút|0||0||0||0||0|||{0} giây|0||0||0||0||0|||{0}miligiây|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
