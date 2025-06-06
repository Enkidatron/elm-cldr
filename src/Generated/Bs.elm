module Generated.Bs exposing (bs, bs_Latn)

{-|

@docs bs, bs_Latn

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "bs"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs : Internal.Locale.Locale
bs =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "bs||||a.\u{202F}m.|p.\u{202F}m.|8|afternoon1|poslijepodne|am|a.\u{202F}m.|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|p.\u{202F}m.|prijepodne|popodne|8|afternoon1|poslijepodne|am|prijepodne|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|popodne|a.\u{202F}m.|p.\u{202F}m.|8|afternoon1|poslijepodne|am|a.\u{202F}m.|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|p.\u{202F}m.|d. M. y.|d. MMM y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mar|apr|maj|jun|jul|aug|sep|okt|nov|dec|januar|februar|mart|april|maj|juni|juli|august|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|N|P|U|S|Č|P|S|1|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|p. n. e.|n. e.|prije nove ere|nove ere|p.n.e.|n. e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d. M. y. G|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|hh:mm\u{202F}a|Hm|HH:mm|hms|hh:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a (v)|Hmsv|HH:mm:ss (v)|hmv|h:mm\u{202F}a (v)|Hmv|HH:mm (v)|M|L|Md|d. M.|MEd|E, d. M.|MMdd|d. M.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'sedmica' 'mjesec' MMMM|MMMMW-count-few|W. 'sedmica' 'mjesec' MMMM|MMMMW-count-other|W. 'sedmica' 'mjesec' MMMM|ms|mm:ss|y|y.|yM|MM/y|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|M. y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|LLLL y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'sedmica' 'u' Y.|yw-count-few|w. 'sedmica' 'u' Y.|yw-count-other|w. 'sedmica' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RSD|din.|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|XPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs_Latn : Internal.Locale.Locale
bs_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "bs|Latn|||a.\u{202F}m.|p.\u{202F}m.|8|afternoon1|poslijepodne|am|a.\u{202F}m.|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|p.\u{202F}m.|prijepodne|popodne|8|afternoon1|poslijepodne|am|prijepodne|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|popodne|a.\u{202F}m.|p.\u{202F}m.|8|afternoon1|poslijepodne|am|a.\u{202F}m.|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|p.\u{202F}m.|d. M. y.|d. MMM y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mar|apr|maj|jun|jul|aug|sep|okt|nov|dec|januar|februar|mart|april|maj|juni|juli|august|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|N|P|U|S|Č|P|S|1|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|p. n. e.|n. e.|prije nove ere|nove ere|p.n.e.|n. e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d. M. y. G|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|hh:mm\u{202F}a|Hm|HH:mm|hms|hh:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a (v)|Hmsv|HH:mm:ss (v)|hmv|h:mm\u{202F}a (v)|Hmv|HH:mm (v)|M|L|Md|d. M.|MEd|E, d. M.|MMdd|d. M.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'sedmica' 'mjesec' MMMM|MMMMW-count-few|W. 'sedmica' 'mjesec' MMMM|MMMMW-count-other|W. 'sedmica' 'mjesec' MMMM|ms|mm:ss|y|y.|yM|MM/y|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|M. y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|LLLL y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'sedmica' 'u' Y.|yw-count-few|w. 'sedmica' 'u' Y.|yw-count-other|w. 'sedmica' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RSD|din.|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|XPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
