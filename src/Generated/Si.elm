module Generated.Si exposing (si)

{-|

@docs si

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "si"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 1, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 1, 0 ) "night2"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
si : Internal.Locale.Locale
si =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "si||||පෙ.ව.|ප.ව.|10|afternoon1|දවල්|am|පෙ.ව.|evening1|හවස|midnight|මැදියම|morning1|පාන්දර|morning2|උදේ|night1|රෑ|night2|මැදියමට පසු|noon|මධ්\u{200D}යාහ්නය|pm|ප.ව.|පෙ.ව.|ප.ව.|10|afternoon1|දවල්|am|පෙ.ව.|evening1|හවස|midnight|මැදියම|morning1|පාන්දර|morning2|උදේ|night1|රෑ|night2|මැදියමට පසු|noon|මධ්\u{200D}යාහ්නය|pm|ප.ව.|පෙ|ප|10|afternoon1|ද|am|පෙ|evening1|හ|midnight|මැ|morning1|පා|morning2|උ|night1|රෑ|night2|මැ|noon|ම|pm|ප|y-MM-dd|y MMM d|y MMMM d|y MMMM d, EEEE|ජන|පෙබ|මාර්තු|අප්\u{200D}රේල්|මැයි|ජූනි|ජූලි|අගෝ|සැප්|ඔක්|නොවැ|දෙසැ|ජනවාරි|පෙබරවාරි|මාර්තු|අප්\u{200D}රේල්|මැයි|ජූනි|ජූලි|අගෝස්තු|සැප්තැම්බර්|ඔක්තෝබර්|නොවැම්බර්|දෙසැම්බර්|ජ|පෙ|මා|අ|මැ|ජූ|ජූ|අ|සැ|ඔ|නෙ|දෙ|1|ජන|පෙබ|මාර්|අප්\u{200D}රේල්|මැයි|ජූනි|ජූලි|අගෝ|සැප්|ඔක්|නොවැ|දෙසැ|ජනවාරි|පෙබරවාරි|මාර්තු|අප්\u{200D}රේල්|මැයි|ජූනි|ජූලි|අගෝස්තු|සැප්තැම්බර්|ඔක්තෝබර්|නොවැම්බර්|දෙසැම්බර්|ජ|පෙ|මා|අ|මැ|ජූ|ජූ|අ|සැ|ඔ|නෙ|දෙ|ඉරිදා|සඳුදා|අඟහ|බදාදා|බ්\u{200D}රහස්|සිකු|සෙන|ඉරිදා|සඳුදා|අඟහරුවාදා|බදාදා|බ්\u{200D}රහස්පතින්දා|සිකුරාදා|සෙනසුරාදා|ඉ|ස|අ|බ|බ්\u{200D}ර|සි|සෙ|0|ක්\u{200D}රි.පූ.|ක්\u{200D}රි.ව.|ක්\u{200D}රිස්තු පූර්ව|ක්\u{200D}රිස්තු වර්ෂ|ක්\u{200D}රි.පූ.|ක්\u{200D}රි.ව.|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E a h.mm|EHm|E HH.mm|Ehms|E a h.mm.ss|EHms|E HH.mm.ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|a h|H|HH|hm|a h.mm|Hm|HH.mm|hms|a h.mm.ss|Hms|HH.mm.ss|hmsv|h.mm.ss a v|Hmsv|HH.mm.ss v|hmv|h.mm a v|Hmv|HH.mm v|M|L|Md|M-d|MEd|M-d, E|MMM|LLL|MMMd|MMM d|MMMEd|MMM d E|MMMMd|MMMM d|MMMMW-count-one|MMMM සතිය W|MMMMW-count-other|MMMM සතිය W|ms|mm.ss|y|y|yM|y-M|yMd|y-M-d|yMEd|y-M-d, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y සතිය w|yw-count-other|Y සතිය w|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|රු.|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|සිෆ්එ|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
