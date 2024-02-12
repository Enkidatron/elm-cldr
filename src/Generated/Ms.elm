module Generated.Ms exposing (ms, ms_BN, ms_ID, ms_SG)

{-|

@docs ms, ms_BN, ms_ID, ms_SG

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ms"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 1, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 1, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms : Internal.Locale.Locale
ms =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ms||||PG|PTG|7|afternoon1|tengah hari|am|PG|evening1|petang|morning1|pagi|morning2|pagi|night1|malam|pm|PTG|PG|PTG|7|afternoon1|tengah hari|am|PG|evening1|petang|morning1|tengah malam|morning2|pagi|night1|malam|pm|PTG|a|p|7|afternoon1|tengah hari|am|a|evening1|petang|morning1|pagi|morning2|pagi|night1|malam|pm|p|d/MM/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ogo|Sep|Okt|Nov|Dis|Januari|Februari|Mac|April|Mei|Jun|Julai|Ogos|September|Oktober|November|Disember|J|F|M|A|M|J|J|O|S|O|N|D|0|Ahd|Isn|Sel|Rab|Kha|Jum|Sab|Ahad|Isnin|Selasa|Rabu|Khamis|Jumaat|Sabtu|A|I|S|R|K|J|S|0|S.M.|TM|S.M.|TM|S.M.|TM|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|48|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|GGGGG y-MM-dd|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|E, d-M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : dd MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms_BN : Internal.Locale.Locale
ms_BN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ms||BN||PG|PTG|7|afternoon1|tengah hari|am|PG|evening1|petang|morning1|pagi|morning2|pagi|night1|malam|pm|PTG|PG|PTG|7|afternoon1|tengah hari|am|PG|evening1|petang|morning1|tengah malam|morning2|pagi|night1|malam|pm|PTG|a|p|7|afternoon1|tengah hari|am|a|evening1|petang|morning1|pagi|morning2|pagi|night1|malam|pm|p|d/MM/yy|d MMM y|d MMMM y|dd MMMM y|Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ogo|Sep|Okt|Nov|Dis|Januari|Februari|Mac|April|Mei|Jun|Julai|Ogos|September|Oktober|November|Disember|J|F|M|A|M|J|J|O|S|O|N|D|0|Ahd|Isn|Sel|Rab|Kha|Jum|Sab|Ahad|Isnin|Selasa|Rabu|Khamis|Jumaat|Sabtu|A|I|S|R|K|J|S|0|S.M.|TM|S.M.|TM|S.M.|TM|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|48|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|GGGGG y-MM-dd|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|E, d-M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W.|,|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
ms_ID : Internal.Locale.Locale
ms_ID =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ms||ID||PG|PTG|7|afternoon1|tengah hari|am|PG|evening1|petang|morning1|pagi|morning2|pagi|night1|malam|pm|PTG|PG|PTG|7|afternoon1|tengah hari|am|PG|evening1|petang|morning1|tengah malam|morning2|pagi|night1|malam|pm|PTG|a|p|7|afternoon1|tengah hari|am|a|evening1|petang|morning1|pagi|morning2|pagi|night1|malam|pm|p|dd/MM/yy|d MMM y|d MMMM y|EEEE, dd MMMM y|Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ogo|Sep|Okt|Nov|Dis|Januari|Februari|Mac|April|Mei|Jun|Julai|Ogos|September|Oktober|November|Disember|J|F|M|A|M|J|J|O|S|O|N|D|0|Ahd|Isn|Sel|Rab|Kha|Jum|Sab|Ahad|Isnin|Selasa|Rabu|Khamis|Jumaat|Sabtu|A|I|S|R|K|J|S|0|S.M.|TM|S.M.|TM|S.M.|TM|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|48|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|d E|Ehm|E h.mm\u{202F}a|EHm|E HH.mm|Ehms|E h.mm.ss\u{202F}a|EHms|E HH.mm.ss|Gy|y G|GyMd|GGGGG y-MM-dd|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h.mm\u{202F}a|Hm|HH.mm|hms|h.mm.ss\u{202F}a|Hms|HH.mm.ss|hmsv|h.mm.ss. a v|Hmsv|HH.mm.ss v|hmv|h.mm\u{202F}a v|Hmv|HH.mm v|M|L|Md|d-M|MEd|E, d-M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-¤||¤||¤||E0W.|,|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms_SG : Internal.Locale.Locale
ms_SG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ms||SG||PG|PTG|7|afternoon1|tengah hari|am|PG|evening1|petang|morning1|pagi|morning2|pagi|night1|malam|pm|PTG|PG|PTG|7|afternoon1|tengah hari|am|PG|evening1|petang|morning1|tengah malam|morning2|pagi|night1|malam|pm|PTG|a|p|7|afternoon1|tengah hari|am|a|evening1|petang|morning1|pagi|morning2|pagi|night1|malam|pm|p|d/MM/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mac|Apr|Mei|Jun|Jul|Ogo|Sep|Okt|Nov|Dis|Januari|Februari|Mac|April|Mei|Jun|Julai|Ogos|September|Oktober|November|Disember|J|F|M|A|M|J|J|O|S|O|N|D|0|Ahd|Isn|Sel|Rab|Kha|Jum|Sab|Ahad|Isnin|Selasa|Rabu|Khamis|Jumaat|Sabtu|A|I|S|R|K|J|S|0|S.M.|TM|S.M.|TM|S.M.|TM|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|48|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|GGGGG y-MM-dd|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d-M|MEd|E, d-M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M-y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
