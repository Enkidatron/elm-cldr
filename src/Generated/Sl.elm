module Generated.Sl exposing (sl)

{-|

@docs sl

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
        [ ( "sl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


pluralRules : Internal.PluralRule.PluralRulesInfo
pluralRules =
    { one =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    [ { variable = Internal.PluralRule.I
                      , modBy = Just 100
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 1, [] )
                      }
                    ]
                )
                []
            )
    , two =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    [ { variable = Internal.PluralRule.I
                      , modBy = Just 100
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 2, [] )
                      }
                    ]
                )
                []
            )
    , zero = Nothing
    , few =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    [ { variable = Internal.PluralRule.I
                      , modBy = Just 100
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Range 3 4, [] )
                      }
                    ]
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.NotEquals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    []
                ]
            )
    , many = Nothing
    }


{-| Date format strings:

  - Short : d. M. yy
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sl : Internal.Locale.Locale
sl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sl||||dop.|pop.|9|afternoon1|pop.|am|dop.|evening1|zveč.|midnight|opoln.|morning1|zjut.|morning2|dop.|night1|ponoči|noon|opold.|pm|pop.|dop.|pop.|9|afternoon1|popoldan|am|dop.|evening1|zvečer|midnight|opolnoči|morning1|zjutraj|morning2|dopoldan|night1|ponoči|noon|opoldne|pm|pop.|d|p|9|afternoon1|p|am|d|evening1|zv|midnight|24.00|morning1|zj|morning2|d|night1|po|noon|12.00|pm|p|d. M. yy|d. MMM y|d. MMMM y|EEEE, d. MMMM y|jan.|feb.|mar.|apr.|maj|jun.|jul.|avg.|sep.|okt.|nov.|dec.|januar|februar|marec|april|maj|junij|julij|avgust|september|oktober|november|december|j|f|m|a|m|j|j|a|s|o|n|d|0|ned.|pon.|tor.|sre.|čet.|pet.|sob.|nedelja|ponedeljek|torek|sreda|četrtek|petek|sobota|n|p|t|s|č|p|s|0|pr. Kr.|po Kr.|pred Kristusom|po Kristusu|pr. Kr.|po Kr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyM|MMM y G|GyMd|d. M. y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h\u{202F}a|H|HH'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMW-count-one|MMMM: W. 'teden'|MMMMW-count-two|MMMM: W. 'teden'|MMMMW-count-few|MMMM: W. 'teden'|MMMMW-count-other|MMMM: W. 'teden'|ms|mm:ss|y|y|yM|M/y|yMd|d. M. y|yMEd|E, d. M. y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w. 'teden' 'leta' Y|yw-count-two|w. 'teden' 'leta' Y|yw-count-few|w. 'teden' 'leta' Y|yw-count-other|w. 'teden' 'leta' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|−||||||E2W.|,|−|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|−|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} l|1|{0} l|1|{0} l|0||1|{0} l|0|||{0} m|0||0||0||0||0|||{0} t|1|{0} t|1|{0} t|0||1|{0} t|0|||{0} d|0||0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} sek.|1|{0} sek.|1|{0} sek.|0||1|{0} sek.|0|||{0} ms|0||0||0||0||0|||{0} let|1|{0} leto|1|{0} leti|0||1|{0} let|0|||{0} mesecev|1|{0} mesec|1|{0} meseca|0||1|{0} meseci|0|||{0} tednov|1|{0} teden|1|{0} tedna|0||1|{0} tedni|0|||{0} dni|1|{0} dan|1|{0} dneva|0||1|{0} dni|0|||{0} ur|1|{0} ura|1|{0} uri|0||1|{0} ure|0|||{0} minut|1|{0} minuta|1|{0} minuti|0||1|{0} minute|0|||{0} sekund|1|{0} sekunda|1|{0} sekundi|0||1|{0} sekunde|0|||{0} milisekund|1|{0} milisekunda|1|{0} millisekundi|0||1|{0} milisekunde|0|||{0} l|1|{0} l|1|{0} l|0||1|{0} l|0|||{0} m|0||0||0||0||0|||{0} t|1|{0} t|1|{0} t|0||1|{0} t|0|||{0} d|0||0||0||0||0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|1|{0} s|1|{0} s|0||1|{0} s|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} in {1}|{0} in {1}|{0}, {1}|{0}, {1}|{0} in {1}|{0} in {1}|{0}, {1}|{0}, {1}|{0} in {1}|{0} in {1}|"
        )
