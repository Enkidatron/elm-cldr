module Generated.Be exposing (be, be_TARASK)

{-|

@docs be, be_TARASK

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be : Internal.Locale.Locale
be =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "be||||AM|PM|2|am|AM|pm|PM|AM|PM|2|am|AM|pm|PM|am|pm|2|am|am|pm|pm|d.MM.yy|d MMM y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|сту|лют|сак|кра|мая|чэр|ліп|жні|вер|кас|ліс|сне|студзеня|лютага|сакавіка|красавіка|мая|чэрвеня|ліпеня|жніўня|верасня|кастрычніка|лістапада|снежня|с|л|с|к|м|ч|л|ж|в|к|л|с|1|сту|лют|сак|кра|май|чэр|ліп|жні|вер|кас|ліс|сне|студзень|люты|сакавік|красавік|май|чэрвень|ліпень|жнівень|верасень|кастрычнік|лістапад|снежань|с|л|с|к|м|ч|л|ж|в|к|л|с|нд|пн|аў|ср|чц|пт|сб|нядзеля|панядзелак|аўторак|серада|чацвер|пятніца|субота|н|п|а|с|ч|п|с|0|да н.э.|н.э.|да нараджэння Хрыстова|ад нараджэння Хрыстова|да н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss, zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y\u{202F}'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y\u{202F}'г'. G|GyMMMd|d MMM y\u{202F}'г'. G|GyMMMEd|E, d MMM y\u{202F}'г'. G|h|hh\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M|MEd|E, d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|W 'тыдзень' MMMM|MMMMW-count-few|W 'тыдзень' MMMM|MMMMW-count-many|W 'тыдзень' MMMM|MMMMW-count-other|W 'тыдзень' MMMM|ms|mm.ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|LLL y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w 'тыдзень' Y|yw-count-few|w 'тыдзень' Y|yw-count-many|w 'тыдзень' Y|yw-count-other|w 'тыдзень' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|Bds$|BDT|৳|BMD|BD$|BND|$|BOB|Bs|BRL|BRL|BSD|B$|BWP|P|BYN|Br|BZD|BZ$|CAD|CAD|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|CUC$|CUP|$MN|CZK|Kč|DKK|kr|DOP|RD$|EGP|E£|ESP|₧|EUR|€|FJD|FJ$|FKP|FK£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|G$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|Íkr|JMD|J$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|CI$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|L$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|N$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|SI$|SEK|kr|SGD|S$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|$|UYU|$U|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be_TARASK : Internal.Locale.Locale
be_TARASK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "be|||TARASK|AM|PM|2|am|AM|pm|PM|AM|PM|2|am|AM|pm|PM|am|pm|2|am|am|pm|pm|d.MM.yy|d MMM y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|сту|лют|сак|кра|мая|чэр|ліп|жні|вер|кас|ліс|сне|студзеня|лютага|сакавіка|красавіка|мая|чэрвеня|ліпеня|жніўня|верасня|кастрычніка|лістапада|снежня|с|л|с|к|м|ч|л|ж|в|к|л|с|1|сту|лют|сак|кра|май|чэр|ліп|жні|вер|кас|ліс|сне|студзень|люты|сакавік|красавік|май|чэрвень|ліпень|жнівень|верасень|кастрычнік|лістапад|снежань|с|л|с|к|м|ч|л|ж|в|к|л|с|нд|пн|аў|ср|чц|пт|сб|нядзеля|панядзелак|аўторак|серада|чацвер|пятніца|субота|н|п|а|с|ч|п|с|0|да н.э.|н.э.|да нараджэння Хрыстова|ад нараджэння Хрыстова|да н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss, zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y\u{202F}'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y\u{202F}'г'. G|GyMMMd|d MMM y\u{202F}'г'. G|GyMMMEd|E, d MMM y\u{202F}'г'. G|h|hh\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M|MEd|E, d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|W 'тыдзень' MMMM|MMMMW-count-few|W 'тыдзень' MMMM|MMMMW-count-many|W 'тыдзень' MMMM|MMMMW-count-other|W 'тыдзень' MMMM|ms|mm.ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|LLL y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w 'тыдзень' Y|yw-count-few|w 'тыдзень' Y|yw-count-many|w 'тыдзень' Y|yw-count-other|w 'тыдзень' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|Bds$|BDT|৳|BMD|BD$|BND|$|BOB|Bs|BRL|BRL|BSD|B$|BWP|P|BYN|Br|BZD|BZ$|CAD|CAD|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|CUC$|CUP|$MN|CZK|Kč|DKK|kr|DOP|RD$|EGP|E£|ESP|₧|EUR|€|FJD|FJ$|FKP|FK£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|G$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|Íkr|JMD|J$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|CI$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|L$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|N$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|SI$|SEK|kr|SGD|S$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|$|UYU|$U|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
