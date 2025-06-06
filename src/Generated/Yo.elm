module Generated.Yo exposing (yo, yo_BJ)

{-|

@docs yo, yo_BJ

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

  - Short : d/M/y
  - Medium : d MM y
  - Long : d MMM y
  - Full : EEEE, d MMM y

Time format strings:

  - Short : H:m
  - Medium : H:m:s
  - Long : H:mm:ss z
  - Full : HH:mm:ss zzzz

-}
yo : Internal.Locale.Locale
yo =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "yo||||Àárọ̀|Ọ̀sán|2|am|Àárọ̀|pm|Ọ̀sán|Àárọ̀|Ọ̀sán|2|am|Àárọ̀|pm|Ọ̀sán|Àárọ̀|Ọ̀sán|2|am|Àárọ̀|pm|Ọ̀sán|d/M/y|d MM y|d MMM y|EEEE, d MMM y|Oṣù Ṣẹ́rẹ́|Oṣù Èrèlè|Oṣù Ẹrẹ̀nà|Oṣù Ìgbé|Oṣù Ẹ̀bibi|Oṣù Òkúdu|Oṣù Agẹmọ|Oṣù Ògún|Oṣù Owewe|Oṣù Ọ̀wàrà|Oṣù Bélú|Oṣù Ọ̀pẹ̀|Oṣù Ṣẹ́rẹ́|Oṣù Èrèlè|Oṣù Ẹrẹ̀nà|Oṣù Ìgbé|Oṣù Ẹ̀bibi|Oṣù Òkúdu|Oṣù Agẹmọ|Oṣù Ògún|Oṣù Owewe|Oṣù Ọ̀wàrà|Oṣù Bélú|Oṣù Ọ̀pẹ̀|S|È|Ẹ|Ì|Ẹ̀|Ò|A|Ò|O|Ọ̀|B|Ọ̀|0|Àìkú|Ajé|Ìsẹ́gun|Ọjọ́rú|Ọjọ́bọ|Ẹtì|Àbámẹ́ta|Ọjọ́ Àìkú|Ọjọ́ Ajé|Ọjọ́ Ìsẹ́gun|Ọjọ́rú|Ọjọ́bọ|Ọjọ́ Ẹtì|Ọjọ́ Àbámẹ́ta|À|A|Ì|Ọ|Ọ|Ẹ|À|1|Àìkú|Ajé|Ìsẹ́gun|Ọjọ́rú|Ọjọ́bọ|Ẹtì|Àbámẹ́ta|Àìkú|Ajé|Ìsẹ́gun|Ọjọ́rú|Ọjọ́bọ|Ẹtì|Àbámẹ́ta|À|A|Ì|Ọ|Ọ|Ẹ|À|BCE|AD|Saju Kristi|Lehin Kristi|BCE|AD|H:m|H:m:s|H:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|48|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|d MMM, E|MMMMd|d MMMM|MMMMEd|d, MMMM E|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|d/M/y, E|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM , y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'week' w 'of' Y|Hm|Hms|Hmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : d MM y
  - Long : d MMM y
  - Full : EEEE, d MMM y

Time format strings:

  - Short : H:m
  - Medium : H:m:s
  - Long : H:mm:ss z
  - Full : HH:mm:ss zzzz

-}
yo_BJ : Internal.Locale.Locale
yo_BJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "yo||BJ||Àárɔ̀|Ɔ̀sán|2|am|Àárɔ̀|pm|Ɔ̀sán|Àárɔ̀|Ɔ̀sán|2|am|Àárɔ̀|pm|Ɔ̀sán|Àárɔ̀|Ɔ̀sán|2|am|Àárɔ̀|pm|Ɔ̀sán|d/M/y|d MM y|d MMM y|EEEE, d MMM y|Oshù Shɛ́rɛ́|Oshù Èrèlè|Oshù Ɛrɛ̀nà|Oshù Ìgbé|Oshù Ɛ̀bibi|Oshù Òkúdu|Oshù Agɛmɔ|Oshù Ògún|Oshù Owewe|Oshù Ɔ̀wàrà|Oshù Bélú|Oshù Ɔ̀pɛ̀|Oshù Shɛ́rɛ́|Oshù Èrèlè|Oshù Ɛrɛ̀nà|Oshù Ìgbé|Oshù Ɛ̀bibi|Oshù Òkúdu|Oshù Agɛmɔ|Oshù Ògún|Oshù Owewe|Oshù Ɔ̀wàrà|Oshù Bélú|Oshù Ɔ̀pɛ̀|S|È|Ɛ|Ì|Ɛ̀|Ò|A|Ò|O|Ɔ̀|B|Ɔ̀|0|Àìkú|Ajé|Ìsɛ́gun|Ɔjɔ́rú|Ɔjɔ́bɔ|Ɛtì|Àbámɛ́ta|Ɔjɔ́ Àìkú|Ɔjɔ́ Ajé|Ɔjɔ́ Ìsɛ́gun|Ɔjɔ́rú|Ɔjɔ́bɔ|Ɔjɔ́ Ɛtì|Ɔjɔ́ Àbámɛ́ta|À|A|Ì|Ɔ|Ɔ|Ɛ|À|1|Àìkú|Ajé|Ìsɛ́gun|Ɔjɔ́rú|Ɔjɔ́bɔ|Ɛtì|Àbámɛ́ta|Àìkú|Ajé|Ìsɛ́gun|Ɔjɔ́rú|Ɔjɔ́bɔ|Ɛtì|Àbámɛ́ta|À|A|Ì|Ɔ|Ɔ|Ɛ|À|BCE|AD|Saju Kristi|Lehin Kristi|BCE|AD|H:m|H:m:s|H:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|48|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|d MMM, E|MMMMd|d MMMM|MMMMEd|d, MMMM E|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|d/M/y, E|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM , y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'week' w 'of' Y|Hm|Hms|Hmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
