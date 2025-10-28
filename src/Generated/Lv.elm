module Generated.Lv exposing (lv)

{-|

@docs lv

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
        [ ( "lv"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 23, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 6, 0 ) "night1"
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
                    { variable = Internal.PluralRule.N
                    , modBy = Just 10
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    [ { variable = Internal.PluralRule.N
                      , modBy = Just 100
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Exactly 11, [] )
                      }
                    ]
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 2, [] )
                    }
                    [ { variable = Internal.PluralRule.F
                      , modBy = Just 10
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 1, [] )
                      }
                    , { variable = Internal.PluralRule.F
                      , modBy = Just 100
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Exactly 11, [] )
                      }
                    ]
                , Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.NotEquals
                    , target = ( Internal.PluralRule.Exactly 2, [] )
                    }
                    [ { variable = Internal.PluralRule.F
                      , modBy = Just 10
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 1, [] )
                      }
                    ]
                ]
            )
    , two = Nothing
    , zero =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Just 10
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    []
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Just 100
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Range 11 19, [] )
                    }
                    []
                , Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 2, [] )
                    }
                    [ { variable = Internal.PluralRule.F
                      , modBy = Just 100
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Range 11 19, [] )
                      }
                    ]
                ]
            )
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : y. 'gada' d. MMM
  - Long : y. 'gada' d. MMMM
  - Full : EEEE, y. 'gada' d. MMMM

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lv : Internal.Locale.Locale
lv =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "lv||||priekšp.|pēcp.|8|afternoon1|pēcpusd.|am|priekšp.|evening1|vakarā|midnight|pusnaktī|morning1|no rīta|night1|naktī|noon|pusd.|pm|pēcp.|priekšpusdienā|pēcpusdienā|8|afternoon1|pēcpusdienā|am|priekšpusdienā|evening1|vakarā|midnight|pusnaktī|morning1|no rīta|night1|naktī|noon|pusdienlaikā|pm|pēcpusdienā|priekšp.|pēcp.|8|afternoon1|pēcpusd.|am|priekšp.|evening1|vakarā|midnight|pusnaktī|morning1|no rīta|night1|naktī|noon|pusd.|pm|pēcp.|dd.MM.yy|y. 'gada' d. MMM|y. 'gada' d. MMMM|EEEE, y. 'gada' d. MMMM|janv.|febr.|marts|apr.|maijs|jūn.|jūl.|aug.|sept.|okt.|nov.|dec.|janvāris|februāris|marts|aprīlis|maijs|jūnijs|jūlijs|augusts|septembris|oktobris|novembris|decembris|J|F|M|A|M|J|J|A|S|O|N|D|0|svētd.|pirmd.|otrd.|trešd.|ceturtd.|piektd.|sestd.|svētdiena|pirmdiena|otrdiena|trešdiena|ceturtdiena|piektdiena|sestdiena|S|P|O|T|C|P|S|1|Svētd.|Pirmd.|Otrd.|Trešd.|Ceturtd.|Piektd.|Sestd.|Svētdiena|Pirmdiena|Otrdiena|Trešdiena|Ceturtdiena|Piektdiena|Sestdiena|S|P|O|T|C|P|S|p.m.ē.|m.ē.|pirms mūsu ēras|mūsu ērā|p.m.ē.|m.ē.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|53|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E, d.|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|G y. 'g'.|GyMd|GGGGG dd-MM-y|GyMMM|G y. 'g'. MMM|GyMMMd|G y. 'g'. d. MMM|GyMMMEd|E, G y. 'g'. d. MMM|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM.|MEd|E, dd.MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-zero|MMMM, W. 'nedēļa'|MMMMW-count-one|MMMM, W. 'nedēļa'|MMMMW-count-other|MMMM, W. 'nedēļa'|mmss|mm:ss|ms|mm:ss|y|y. 'g'.|yM|MM.y.|yMd|d.MM.y.|yMEd|E, d.MM.y.|yMMM|y. 'g'. MMM|yMMMd|y. 'g'. d. MMM|yMMMEd|E, y. 'g'. d. MMM|yMMMM|y. 'g'. MMMM|yQQQ|y. 'g'. QQQ|yQQQQ|y. 'g'. QQQQ|yw-count-zero|Y. 'g'. w. 'nedēļa'|yw-count-one|Y. 'g'. w. 'nedēļa'|yw-count-other|Y. 'g'. w. 'nedēļa'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GHS|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} g.|1|{0} g.|0||1|{0} g.|0||0|||{0} mēn.|1|{0} mēn.|0||1|{0} mēn.|0||0|||{0} ned.|1|{0} ned.|0||1|{0} ned.|0||0|||{0} d.|1|{0} d.|0||1|{0} d.|0||0|||{0} st.|1|{0} st.|0||1|{0} st.|0||0|||{0} min|0||0||0||0||0|||{0} sek.|1|{0} sek.|0||1|{0} sek.|0||0|||{0} ms|0||0||0||0||0|||{0} gadi|1|{0} gads|0||1|{0} gadu|0||0|||{0} mēneši|1|{0} mēnesis|0||1|{0} mēnešu|0||0|||{0} nedēļas|1|{0} nedēļa|0||1|{0} nedēļu|0||0|||{0} dienas|1|{0} diena|0||1|{0} dienu|0||0|||{0} stundas|1|{0} stunda|0||1|{0} stundu|0||0|||{0} minūtes|1|{0} minūte|0||1|{0} minūšu|0||0|||{0} sekundes|1|{0} sekunde|0||1|{0} sekunžu|0||0|||{0} milisekundes|1|{0} milisekunde|0||1|{0} milisekunžu|0||0|||{0} g.|1|{0} g.|0||1|{0} g.|0||0|||{0} m.|1|{0} m.|0||1|{0} m.|0||0|||{0} n.|1|{0} n.|0||1|{0} n.|0||0|||{0} d.|1|{0} d.|0||1|{0} d.|0||0|||{0} h|1|{0} h|0||1|{0} h|0||0|||{0} min|0||0||0||0||0|||{0} s|1|{0} s|0||1|{0} s|0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} un {1}|{0} un {1}|{0}, {1}|{0}, {1}|{0} un {1}|{0} un {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
