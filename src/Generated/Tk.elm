module Generated.Tk exposing (tk)

{-|

@docs tk

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
tk : Internal.Locale.Locale
tk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "tk||||go.öň|go.soň|2|am|go.öň|pm|go.soň|günortadan öň|günortadan soň|2|am|günortadan öň|pm|günortadan soň|öň|soň|2|am|öň|pm|soň|dd.MM.y|d MMM y|d MMMM y|d MMMM y EEEE|ýan|few|mart|apr|maý|iýun|iýul|awg|sen|okt|noý|dek|ýanwar|fewral|mart|aprel|maý|iýun|iýul|awgust|sentýabr|oktýabr|noýabr|dekabr|Ý|F|M|A|M|I|I|A|S|O|N|D|1|Ýan|Few|Mar|Apr|Maý|Iýun|Iýul|Awg|Sen|Okt|Noý|Dek|Ýanwar|Fewral|Mart|Aprel|Maý|Iýun|Iýul|Awgust|Sentýabr|Oktýabr|Noýabr|Dekabr|Ý|F|M|A|M|I|I|A|S|O|N|D|ýek|duş|siş|çar|pen|ann|şen|ýekşenbe|duşenbe|sişenbe|çarşenbe|penşenbe|anna|şenbe|Ý|D|S|Ç|P|A|Ş|1|Ýek|Duş|Siş|Çar|Pen|Ann|Şen|Ýekşenbe|Duşenbe|Sişenbe|Çarşenbe|Penşenbe|Anna|Şenbe|Ý|D|S|Ç|P|A|Ş|B.e.öň|B.e.|Isadan öň|Isadan soň|B.e.öň|B.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG dd.MM.y|GyMMM|G MMM y|GyMMMd|G d MMM y|GyMMMEd|G d MMM y E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|dd.MM E|MMM|LLL|MMMd|d MMM|MMMEd|d MMM E|MMMMd|d MMMM|MMMMEd|d MMMM E|MMMMW-count-one|'hepde' W, MMMM|MMMMW-count-other|'hepde' W, MMMM|mmss|mm:ss|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|dd.MM.y E|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|d MMM y E|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|'hepde' w, Y|yw-count-other|'hepde' w, Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
