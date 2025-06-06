module Generated.De exposing
    ( de, de_AT, de_BE, de_CH, de_IT, de_LI
    , de_LU
    )

{-|

@docs de, de_AT, de_BE, de_CH, de_IT, de_LI
@docs de_LU

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "de"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de : Internal.Locale.Locale
de =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "de||||AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachmittags|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vormittags|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|dd.MM.yy|dd.MM.y|d. MMMM y|EEEE, d. MMMM y|Jan.|Feb.|März|Apr.|Mai|Juni|Juli|Aug.|Sept.|Okt.|Nov.|Dez.|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|1|Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|So.|Mo.|Di.|Mi.|Do.|Fr.|Sa.|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|1|So|Mo|Di|Mi|Do|Fr|Sa|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|v. Chr.|n. Chr.|v. Chr.|n. Chr.|v. Chr.|n. Chr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd.MM.y G|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h 'Uhr' a|H|HH 'Uhr'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMd|d.MM.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|'Woche' W 'im' MMMM|MMMMW-count-other|'Woche' W 'im' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d.M.y|yMEd|E, d.M.y|yMM|MM.y|yMMdd|dd.MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'Woche' w 'des' 'Jahres' Y|yw-count-other|'Woche' w 'des' 'Jahres' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|112|AFN|؋|AMD|֏|AOA|Kz|ARS|$|ATS|öS|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BGM|BGK|BGO|BGJ|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|Cub$|CUP|$|CZK|Kč|DEM|DM|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|Fl£|GBP|£|GEL|₾|GHS|₵|GIP|£|GNF|F.G.|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|F.Rw|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|SYP|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|K|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_AT : Internal.Locale.Locale
de_AT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "de||AT||AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachmittags|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vormittags|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|dd.MM.yy|dd.MM.y|d. MMMM y|EEEE, d. MMMM y|Jän.|Feb.|März|Apr.|Mai|Juni|Juli|Aug.|Sep.|Okt.|Nov.|Dez.|Jänner|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|1|Jän|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez|Jänner|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|So.|Mo.|Di.|Mi.|Do.|Fr.|Sa.|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|1|So|Mo|Di|Mi|Do|Fr|Sa|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|v. Chr.|n. Chr.|v. Chr.|n. Chr.|v. Chr.|n. Chr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd.MM.y G|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h 'Uhr' a|H|HH 'Uhr'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMd|d.MM.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|'Woche' W 'im' MMMM|MMMMW-count-other|'Woche' W 'im' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d.M.y|yMEd|E, d.M.y|yMM|MM.y|yMMdd|dd.MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'Woche' w 'des' 'Jahres' Y|yw-count-other|'Woche' w 'des' 'Jahres' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|112|AFN|؋|AMD|֏|AOA|Kz|ARS|$|ATS|öS|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BGM|BGK|BGO|BGJ|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|Cub$|CUP|$|CZK|Kč|DEM|DM|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|Fl£|GBP|£|GEL|₾|GHS|₵|GIP|£|GNF|F.G.|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|F.Rw|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|SYP|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|K|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_BE : Internal.Locale.Locale
de_BE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "de||BE||AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachmittags|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vormittags|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|dd.MM.yy|dd.MM.y|d. MMMM y|EEEE, d. MMMM y|Jan.|Feb.|März|Apr.|Mai|Juni|Juli|Aug.|Sept.|Okt.|Nov.|Dez.|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|1|Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|So.|Mo.|Di.|Mi.|Do.|Fr.|Sa.|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|1|So|Mo|Di|Mi|Do|Fr|Sa|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|v. Chr.|n. Chr.|v. Chr.|n. Chr.|v. Chr.|n. Chr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd.MM.y G|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h 'Uhr' a|H|HH 'Uhr'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMd|d.MM.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|'Woche' W 'im' MMMM|MMMMW-count-other|'Woche' W 'im' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d.M.y|yMEd|E, d.M.y|yMM|MM.y|yMMdd|dd.MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'Woche' w 'des' 'Jahres' Y|yw-count-other|'Woche' w 'des' 'Jahres' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|112|AFN|؋|AMD|֏|AOA|Kz|ARS|$|ATS|öS|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BGM|BGK|BGO|BGJ|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|Cub$|CUP|$|CZK|Kč|DEM|DM|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|Fl£|GBP|£|GEL|₾|GHS|₵|GIP|£|GNF|F.G.|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|F.Rw|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|SYP|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|K|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_CH : Internal.Locale.Locale
de_CH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "de||CH||AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachmittags|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vormittags|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|dd.MM.yy|dd.MM.y|d. MMMM y|EEEE, d. MMMM y|Jan.|Feb.|März|Apr.|Mai|Juni|Juli|Aug.|Sept.|Okt.|Nov.|Dez.|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|1|Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|So.|Mo.|Di.|Mi.|Do.|Fr.|Sa.|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|1|So|Mo|Di|Mi|Do|Fr|Sa|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|v. Chr.|n. Chr.|v. Chr.|n. Chr.|v. Chr.|n. Chr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd.MM.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h 'Uhr' a|H|HH 'Uhr'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMd|d.MM.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|'Woche' W 'im' MMMM|MMMMW-count-other|'Woche' W 'im' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d.M.y|yMEd|E, d.M.y|yMM|MM.y|yMMdd|dd.MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'Woche' w 'des' 'Jahres' Y|yw-count-other|'Woche' w 'des' 'Jahres' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W’|.|-||||||E2W’|.|¤-||¤\u{00A0}||¤\u{00A0}||E0W’|.|-|%||%||%|112|AFN|؋|AMD|֏|AOA|Kz|ARS|$|ATS|öS|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BGM|BGK|BGO|BGJ|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|Cub$|CUP|$|CZK|Kč|DEM|DM|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|Fl£|GBP|£|GEL|₾|GHS|₵|GIP|£|GNF|F.G.|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|F.Rw|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|SYP|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|K|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_IT : Internal.Locale.Locale
de_IT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "de||IT||AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachmittags|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vormittags|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|dd.MM.yy|dd.MM.y|d. MMMM y|EEEE, d. MMMM y|Jän.|Feb.|März|Apr.|Mai|Juni|Juli|Aug.|Sep.|Okt.|Nov.|Dez.|Jänner|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|1|Jän|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez|Jänner|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|So.|Mo.|Di.|Mi.|Do.|Fr.|Sa.|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|1|So|Mo|Di|Mi|Do|Fr|Sa|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|v. Chr.|n. Chr.|v. Chr.|n. Chr.|v. Chr.|n. Chr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd.MM.y G|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h 'Uhr' a|H|HH 'Uhr'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMd|d.MM.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|'Woche' W 'im' MMMM|MMMMW-count-other|'Woche' W 'im' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d.M.y|yMEd|E, d.M.y|yMM|MM.y|yMMdd|dd.MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'Woche' w 'des' 'Jahres' Y|yw-count-other|'Woche' w 'des' 'Jahres' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|112|AFN|؋|AMD|֏|AOA|Kz|ARS|$|ATS|öS|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BGM|BGK|BGO|BGJ|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|Cub$|CUP|$|CZK|Kč|DEM|DM|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|Fl£|GBP|£|GEL|₾|GHS|₵|GIP|£|GNF|F.G.|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|F.Rw|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|SYP|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|K|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_LI : Internal.Locale.Locale
de_LI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "de||LI||AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachmittags|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vormittags|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|dd.MM.yy|dd.MM.y|d. MMMM y|EEEE, d. MMMM y|Jan.|Feb.|März|Apr.|Mai|Juni|Juli|Aug.|Sept.|Okt.|Nov.|Dez.|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|1|Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|So.|Mo.|Di.|Mi.|Do.|Fr.|Sa.|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|1|So|Mo|Di|Mi|Do|Fr|Sa|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|v. Chr.|n. Chr.|v. Chr.|n. Chr.|v. Chr.|n. Chr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd.MM.y G|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h 'Uhr' a|H|HH 'Uhr'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMd|d.MM.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|'Woche' W 'im' MMMM|MMMMW-count-other|'Woche' W 'im' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d.M.y|yMEd|E, d.M.y|yMM|MM.y|yMMdd|dd.MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'Woche' w 'des' 'Jahres' Y|yw-count-other|'Woche' w 'des' 'Jahres' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W’|.|-||||||E2W’|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W’|.|-|%||%||%|112|AFN|؋|AMD|֏|AOA|Kz|ARS|$|ATS|öS|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BGM|BGK|BGO|BGJ|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|Cub$|CUP|$|CZK|Kč|DEM|DM|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|Fl£|GBP|£|GEL|₾|GHS|₵|GIP|£|GNF|F.G.|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|F.Rw|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|SYP|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|K|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_LU : Internal.Locale.Locale
de_LU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "de||LU||AM|PM|9|afternoon1|mittags|afternoon2|nachm.|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|PM|AM|PM|9|afternoon1|mittags|afternoon2|nachmittags|am|AM|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vormittags|night1|nachts|pm|PM|vorm.|nachm.|9|afternoon1|mittags|afternoon2|nachm.|am|vorm.|evening1|abends|midnight|Mitternacht|morning1|morgens|morning2|vorm.|night1|nachts|pm|nachm.|dd.MM.yy|dd.MM.y|d. MMMM y|EEEE, d. MMMM y|Jan.|Feb.|März|Apr.|Mai|Juni|Juli|Aug.|Sept.|Okt.|Nov.|Dez.|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|1|Jan|Feb|Mär|Apr|Mai|Jun|Jul|Aug|Sep|Okt|Nov|Dez|Januar|Februar|März|April|Mai|Juni|Juli|August|September|Oktober|November|Dezember|J|F|M|A|M|J|J|A|S|O|N|D|So.|Mo.|Di.|Mi.|Do.|Fr.|Sa.|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|1|So|Mo|Di|Mi|Do|Fr|Sa|Sonntag|Montag|Dienstag|Mittwoch|Donnerstag|Freitag|Samstag|S|M|D|M|D|F|S|v. Chr.|n. Chr.|v. Chr.|n. Chr.|v. Chr.|n. Chr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|dd.MM.y G|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h\u{202F}a|H|HH 'Uhr'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMd|d.MM.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|'Woche' W 'im' MMMM|MMMMW-count-other|'Woche' W 'im' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d.M.y|yMEd|E, d.M.y|yMM|MM.y|yMMdd|dd.MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'Woche' w 'des' 'Jahres' Y|yw-count-other|'Woche' w 'des' 'Jahres' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|113|AFN|؋|AMD|֏|AOA|Kz|ARS|$|ATS|öS|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BGM|BGK|BGO|BGJ|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|Cub$|CUP|$|CZK|Kč|DEM|DM|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|Fl£|GBP|£|GEL|₾|GHS|₵|GIP|£|GNF|F.G.|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LUF|F|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|F.Rw|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|SYP|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|K|"
        )
