module Generated.Hsb exposing (hsb)

{-|

@docs hsb

-}

import Dict
import Internal.DayPeriodRule
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

  - Short : H:mm 'hodź'.
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
hsb : Internal.Locale.Locale
hsb =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "hsb||||dop.|pop.|2|am|dop.|pm|pop.|dopołdnja|popołdnju|2|am|dopołdnja|pm|popołdnju|dop.|pop.|2|am|dop.|pm|pop.|d.M.yy|d.M.y|d. MMMM y|EEEE, d. MMMM y|jan.|feb.|měr.|apr.|mej.|jun.|jul.|awg.|sep.|okt.|now.|dec.|januara|februara|měrca|apryla|meje|junija|julija|awgusta|septembra|oktobra|nowembra|decembra|j|f|m|a|m|j|j|a|s|o|n|d|1|jan|feb|měr|apr|mej|jun|jul|awg|sep|okt|now|dec|januar|februar|měrc|apryl|meja|junij|julij|awgust|september|oktober|nowember|december|j|f|m|a|m|j|j|a|s|o|n|d|nje|pón|wut|srj|štw|pja|sob|njedźela|póndźela|wutora|srjeda|štwórtk|pjatk|sobota|n|p|w|s|š|p|s|0|př.Chr.n.|po Chr.n.|před Chrystowym narodźenjom|po Chrystowym narodźenju|př.Chr.n.|po Chr.n.|H:mm 'hodź'.|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|53|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E, h:mm\u{202F}a|EHm|E, H:mm 'hodź'.|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d.M.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h\u{202F}a|H|H 'hodź'.|hm|h:mm\u{202F}a|Hm|H:mm 'hodź'.|hms|h:mm:ss\u{202F}a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmv|h:mm a v|Hmv|H:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMW-count-one|W. 'tydźeń' MMMM|MMMMW-count-two|W. 'tydźeń' MMMM|MMMMW-count-few|W. 'tydźeń' MMMM|MMMMW-count-other|W. 'tydźeń' MMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w. 'tydźeń' 'lěta' Y|yw-count-two|w. 'tydźeń' 'lěta' Y|yw-count-few|w. 'tydźeń' 'lěta' Y|yw-count-other|w. 'tydźeń' 'lěta' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|105|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
