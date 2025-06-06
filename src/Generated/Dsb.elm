module Generated.Dsb exposing (dsb)

{-|

@docs dsb

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

  - Short : d.M.yy
  - Medium : d.M.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
dsb : Internal.Locale.Locale
dsb =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "dsb||||dop.|wótp.|2|am|dop.|pm|wótp.|dopołdnja|wótpołdnja|2|am|dopołdnja|pm|wótpołdnja|dop.|wótp.|2|am|dop.|pm|wótp.|d.M.yy|d.M.y|d. MMMM y|EEEE, d. MMMM y|jan.|feb.|měr.|apr.|maj.|jun.|jul.|awg.|sep.|okt.|now.|dec.|januara|februara|měrca|apryla|maja|junija|julija|awgusta|septembra|oktobra|nowembra|decembra|j|f|m|a|m|j|j|a|s|o|n|d|1|jan|feb|měr|apr|maj|jun|jul|awg|sep|okt|now|dec|januar|februar|měrc|apryl|maj|junij|julij|awgust|september|oktober|nowember|december|j|f|m|a|m|j|j|a|s|o|n|d|nje|pón|wał|srj|stw|pět|sob|njeźela|pónjeźele|wałtora|srjoda|stwórtk|pětk|sobota|n|p|w|s|s|p|s|0|pś.Chr.n.|pó Chr.n.|pśed Kristusowym naroźenim|pó Kristusowem naroźenju|pś.Chr.n.|pó Chr.n.|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|53|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E, h:mm\u{202F}a|EHm|E, 'zeg'. H:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d.M.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h\u{202F}a|H|'zeg'. H|hm|h:mm\u{202F}a|Hm|'zeg'. H:mm|hms|h:mm:ss\u{202F}a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmv|h:mm a v|Hmv|H:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMW-count-one|W. 'tyźeń' MMMM|MMMMW-count-two|W. 'tyźeń' MMMM|MMMMW-count-few|W. 'tyźeń' MMMM|MMMMW-count-other|W. 'tyźeń' MMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w. 'tyźeń' 'lěta' Y|yw-count-two|w. 'tyźeń' 'lěta' Y|yw-count-few|w. 'tyźeń' 'lěta' Y|yw-count-other|w. 'tyźeń' 'lěta' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
