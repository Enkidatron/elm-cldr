module Generated.Hu exposing (hu)

{-|

@docs hu

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "hu"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 9, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 9, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "night2"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : y. MM. dd.
  - Medium : y. MMM d.
  - Long : y. MMMM d.
  - Full : y. MMMM d., EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
hu : Internal.Locale.Locale
hu =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "hu||||de.|du.|10|afternoon1|du.|am|de.|evening1|este|midnight|éjfél|morning1|reggel|morning2|de.|night1|éjjel|night2|hajnal|noon|dél|pm|du.|de.|du.|10|afternoon1|délután|am|de.|evening1|este|midnight|éjfél|morning1|reggel|morning2|délelőtt|night1|éjjel|night2|hajnal|noon|dél|pm|du.|de.|du.|10|afternoon1|du.|am|de.|evening1|este|midnight|éjfél|morning1|reggel|morning2|de.|night1|éjjel|night2|hajnal|noon|dél|pm|du.|y. MM. dd.|y. MMM d.|y. MMMM d.|y. MMMM d., EEEE|jan.|febr.|márc.|ápr.|máj.|jún.|júl.|aug.|szept.|okt.|nov.|dec.|január|február|március|április|május|június|július|augusztus|szeptember|október|november|december|J|F|M|Á|M|J|J|A|Sz|O|N|D|0|V|H|K|Sze|Cs|P|Szo|vasárnap|hétfő|kedd|szerda|csütörtök|péntek|szombat|V|H|K|Sz|Cs|P|Sz|0|i. e.|i. sz.|Krisztus előtt|időszámításunk szerint|ie.|isz.|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d., E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y.|GyMd|GGGGG y. MM. dd.|GyMMM|G y. MMM|GyMMMd|G y. MMM d.|GyMMMEd|G y. MMM d., E|h|a\u{202F}h|H|H|hm|a\u{202F}h:mm|Hm|H:mm|hms|a\u{202F}h:mm:ss|Hms|H:mm:ss|hmsv|a\u{202F}h:mm:ss v|Hmsv|HH:mm:ss v|hmv|a\u{202F}h:mm v|Hmv|HH:mm v|M|L|Md|M. d.|MEd|M. d., E|MMM|LLL|MMMd|MMM d.|MMMEd|MMM d., E|MMMMd|MMMM d.|MMMMW-count-one|MMMM W. 'hete'|MMMMW-count-other|MMMM W. 'hete'|mmss|mm:ss|ms|mm:ss|y|y.|yM|y. M.|yMd|y. MM. dd.|yMEd|y. MM. dd., E|yMMM|y. MMM|yMMMd|y. MMM d.|yMMMEd|y. MMM d., E|yMMMM|y. MMMM|yQQQ|y. QQQ|yQQQQ|y. QQQQ|yw-count-one|Y w. 'hete'|yw-count-other|Y w. 'hete'|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
