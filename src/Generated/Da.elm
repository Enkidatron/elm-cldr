module Generated.Da exposing (da, da_GL)

{-|

@docs da, da_GL

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.PluralRule


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "da"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


pluralRules : Internal.PluralRule.PluralRulesInfo
pluralRules =
    { one =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    []
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.T
                    , modBy = Nothing
                    , operator = Internal.PluralRule.NotEquals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    [ { variable = Internal.PluralRule.I
                      , modBy = Nothing
                      , operator = Internal.PluralRule.Equals
                      , target =
                            ( Internal.PluralRule.Exactly 0
                            , [ Internal.PluralRule.Exactly 1 ]
                            )
                      }
                    ]
                ]
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da : Internal.Locale.Locale
da =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "da||||AM|PM|8|afternoon1|om eftermiddagen|am|AM|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|PM|AM|PM|8|afternoon1|om eftermiddagen|am|AM|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|PM|a|p|8|afternoon1|om eftermiddagen|am|a|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|p|dd.MM.y|d. MMM y|d. MMMM y|EEEE 'den' d. MMMM y|jan.|feb.|mar.|apr.|maj|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januar|februar|marts|april|maj|juni|juli|august|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|søn.|man.|tirs.|ons.|tors.|fre.|lør.|søndag|mandag|tirsdag|onsdag|torsdag|fredag|lørdag|S|M|T|O|T|F|L|0|f.Kr.|e.Kr.|før Kristus|efter Kristus|fKr|eKr|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d.|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|E 'den' d.|Ehm|E h.mm\u{202F}a|EHm|E HH.mm|Ehms|E h.mm.ss\u{202F}a|EHms|E HH.mm.ss|Gy|y G|GyMd|d.M.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E d. MMM y G|h|h\u{202F}a|H|HH|hm|h.mm\u{202F}a|Hm|HH.mm|hms|h.mm.ss\u{202F}a|Hms|HH.mm.ss|hmsv|h.mm.ss\u{202F}a v|Hmsv|HH.mm.ss v|hmv|h.mm\u{202F}a v|Hmv|HH.mm v|M|M|Md|d.M|MEd|E d.M|MMdd|dd.MM|MMM|MMM|MMMd|d. MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E d. MMMM|MMMMW-count-one|W. 'uge' 'i' MMMM|MMMMW-count-other|W. 'uge' 'i' MMMM|ms|mm.ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E d.M.y|yMM|MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'uge' w 'i' Y|yw-count-other|'uge' w 'i' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|Br.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr.|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr.|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr.|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr.|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} år|1|{0} år|0||0||0||0|||{0} mdr.|1|{0} md.|0||0||0||0|||{0} uger|1|{0} uge|0||0||0||0|||{0} dage|1|{0} dag|0||0||0||0|||{0} t.|1|{0} t.|0||0||0||0|||{0} min.|1|{0} min.|0||0||0||0|||{0} sek.|1|{0} sek.|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} år|1|{0} år|0||0||0||0|||{0} måneder|1|{0} måned|0||0||0||0|||{0} uger|1|{0} uge|0||0||0||0|||{0} dage|1|{0} dag|0||0||0||0|||{0} timer|1|{0} time|0||0||0||0|||{0} minutter|1|{0} minut|0||0||0||0|||{0} sekunder|1|{0} sekund|0||0||0||0|||{0} millisekunder|1|{0} millisekund|0||0||0||0|||{0} år|1|{0} år|0||0||0||0|||{0} m|1|{0} m|0||0||0||0|||{0} u|1|{0} u|0||0||0||0|||{0} d|1|{0} d|0||0||0||0|||{0} t|1|{0} t|0||0||0||0|||{0} m|1|{0} m|0||0||0||0|||{0} s|1|{0} s|0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} og {1}|{0} og {1}|{0}, {1}|{0}, {1}|{0} og {1}|{0} og {1}|{0}, {1}|{0}, {1}|{0} og {1}|{0} og {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da_GL : Internal.Locale.Locale
da_GL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "da||GL||AM|PM|8|afternoon1|om eftermiddagen|am|AM|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|PM|AM|PM|8|afternoon1|om eftermiddagen|am|AM|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|PM|a|p|8|afternoon1|om eftermiddagen|am|a|evening1|om aftenen|midnight|midnat|morning1|om morgenen|morning2|om formiddagen|night1|om natten|pm|p|dd.MM.y|d. MMM y|d. MMMM y|EEEE 'den' d. MMMM y|jan.|feb.|mar.|apr.|maj|jun.|jul.|aug.|sep.|okt.|nov.|dec.|januar|februar|marts|april|maj|juni|juli|august|september|oktober|november|december|J|F|M|A|M|J|J|A|S|O|N|D|0|søn.|man.|tirs.|ons.|tors.|fre.|lør.|søndag|mandag|tirsdag|onsdag|torsdag|fredag|lørdag|S|M|T|O|T|F|L|0|f.Kr.|e.Kr.|før Kristus|efter Kristus|fKr|eKr|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d.|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|E 'den' d.|Ehm|E h.mm\u{202F}a|EHm|E HH.mm|Ehms|E h.mm.ss\u{202F}a|EHms|E HH.mm.ss|Gy|y G|GyMd|d.M.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E d. MMM y G|h|h\u{202F}a|H|HH|hm|h.mm\u{202F}a|Hm|HH.mm|hms|h.mm.ss\u{202F}a|Hms|HH.mm.ss|hmsv|h.mm.ss\u{202F}a v|Hmsv|HH.mm.ss v|hmv|h.mm\u{202F}a v|Hmv|HH.mm v|M|M|Md|d.M|MEd|E d.M|MMdd|dd.MM|MMM|MMM|MMMd|d. MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E d. MMMM|MMMMW-count-one|W. 'uge' 'i' MMMM|MMMMW-count-other|W. 'uge' 'i' MMMM|ms|mm.ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E d.M.y|yMM|MM.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'uge' w 'i' Y|yw-count-other|'uge' w 'i' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|Br.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr.|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr.|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr.|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RWF|RF|SBD|$|SEK|kr.|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} år|1|{0} år|0||0||0||0|||{0} mdr.|1|{0} md.|0||0||0||0|||{0} uger|1|{0} uge|0||0||0||0|||{0} dage|1|{0} dag|0||0||0||0|||{0} t.|1|{0} t.|0||0||0||0|||{0} min.|1|{0} min.|0||0||0||0|||{0} sek.|1|{0} sek.|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} år|1|{0} år|0||0||0||0|||{0} måneder|1|{0} måned|0||0||0||0|||{0} uger|1|{0} uge|0||0||0||0|||{0} dage|1|{0} dag|0||0||0||0|||{0} timer|1|{0} time|0||0||0||0|||{0} minutter|1|{0} minut|0||0||0||0|||{0} sekunder|1|{0} sekund|0||0||0||0|||{0} millisekunder|1|{0} millisekund|0||0||0||0|||{0} år|1|{0} år|0||0||0||0|||{0} m|1|{0} m|0||0||0||0|||{0} u|1|{0} u|0||0||0||0|||{0} d|1|{0} d|0||0||0||0|||{0} t|1|{0} t|0||0||0||0|||{0} m|1|{0} m|0||0||0||0|||{0} s|1|{0} s|0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} og {1}|{0} og {1}|{0}, {1}|{0}, {1}|{0} og {1}|{0} og {1}|{0}, {1}|{0}, {1}|{0} og {1}|{0} og {1}|"
        )
