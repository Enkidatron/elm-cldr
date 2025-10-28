module Generated.Pl exposing (pl)

{-|

@docs pl

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
        [ ( "pl"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
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
                    { variable = Internal.PluralRule.I
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    [ { variable = Internal.PluralRule.V
                      , modBy = Nothing
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
                      }
                    ]
                )
                []
            )
    , two = Nothing
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
                      , modBy = Just 10
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Range 2 4, [] )
                      }
                    , { variable = Internal.PluralRule.I
                      , modBy = Just 100
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Range 12 14, [] )
                      }
                    ]
                )
                []
            )
    , many =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    [ { variable = Internal.PluralRule.I
                      , modBy = Nothing
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Exactly 1, [] )
                      }
                    , { variable = Internal.PluralRule.I
                      , modBy = Just 10
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Range 0 1, [] )
                      }
                    ]
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    [ { variable = Internal.PluralRule.I
                      , modBy = Just 10
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Range 5 9, [] )
                      }
                    ]
                , Internal.PluralRule.And
                    { variable = Internal.PluralRule.V
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    [ { variable = Internal.PluralRule.I
                      , modBy = Just 100
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Range 12 14, [] )
                      }
                    ]
                ]
            )
    }


{-| Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pl : Internal.Locale.Locale
pl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pl||||AM|PM|9|afternoon1|po południu|am|AM|evening1|wieczorem|midnight|o północy|morning1|rano|morning2|przed południem|night1|w nocy|noon|w południe|pm|PM|AM|PM|9|afternoon1|po południu|am|AM|evening1|wieczorem|midnight|o północy|morning1|rano|morning2|przed południem|night1|w nocy|noon|w południe|pm|PM|a|p|9|afternoon1|po poł.|am|a|evening1|wiecz.|midnight|o półn.|morning1|rano|morning2|przed poł.|night1|w nocy|noon|w poł.|pm|p|d.MM.y|d MMM y|d MMMM y|EEEE, d MMMM y|sty|lut|mar|kwi|maj|cze|lip|sie|wrz|paź|lis|gru|stycznia|lutego|marca|kwietnia|maja|czerwca|lipca|sierpnia|września|października|listopada|grudnia|s|l|m|k|m|c|l|s|w|p|l|g|1|sty|lut|mar|kwi|maj|cze|lip|sie|wrz|paź|lis|gru|styczeń|luty|marzec|kwiecień|maj|czerwiec|lipiec|sierpień|wrzesień|październik|listopad|grudzień|S|L|M|K|M|C|L|S|W|P|L|G|niedz.|pon.|wt.|śr.|czw.|pt.|sob.|niedziela|poniedziałek|wtorek|środa|czwartek|piątek|sobota|n|p|w|ś|c|p|s|1|niedz.|pon.|wt.|śr.|czw.|pt.|sob.|niedziela|poniedziałek|wtorek|środa|czwartek|piątek|sobota|N|P|W|Ś|C|P|S|p.n.e.|n.e.|przed naszą erą|naszej ery|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|59|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E, h:mm\u{202F}a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d.MM.y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMM|LLLL y G|GyMMMMd|d MMMM y G|GyMMMMEd|E, d MMMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.MM|MEd|E, d.MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|LLLL, 'tydz'. W|MMMMW-count-few|LLLL, 'tydz'. W|MMMMW-count-many|LLLL, 'tydz'. W|MMMMW-count-other|LLLL, 'tydz'. W|ms|mm:ss|y|y|yM|MM.y|yMd|d.MM.y|yMEd|E, d.MM.y|yMMM|LLL y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|LLLL y|yMMMMd|d MMMM y|yMMMMEd|E, d MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y, 'tydz'. w|yw-count-few|Y, 'tydz'. w|yw-count-many|Y, 'tydz'. w|yw-count-other|Y, 'tydz'. w|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lej|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} roku|1|{0} rok|0||0||1|{0} lata|1|{0} lat||{0} mies.|1|{0} mies.|0||0||1|{0} mies.|1|{0} mies.||{0} tyg.|1|{0} tydz.|0||0||1|{0} tyg.|1|{0} tyg.||{0} dnia|1|{0} dzień|0||0||1|{0} dni|1|{0} dni||{0} godz.|1|{0} godz.|0||0||1|{0} godz.|1|{0} godz.||{0} min|0||0||0||0||0|||{0} sek.|1|{0} sek.|0||0||1|{0} sek.|1|{0} sek.||{0} ms|0||0||0||0||0|||{0} roku|1|{0} rok|0||0||1|{0} lata|1|{0} lat||{0} miesiąca|1|{0} miesiąc|0||0||1|{0} miesiące|1|{0} miesięcy||{0} tygodnia|1|{0} tydzień|0||0||1|{0} tygodnie|1|{0} tygodni||{0} dnia|1|{0} dzień|0||0||1|{0} dni|1|{0} dni||{0} godziny|1|{0} godzina|0||0||1|{0} godziny|1|{0} godzin||{0} minuty|1|{0} minuta|0||0||1|{0} minuty|1|{0} minut||{0} sekundy|1|{0} sekunda|0||0||1|{0} sekundy|1|{0} sekund||{0} milisekundy|1|{0} milisekunda|0||0||1|{0} milisekundy|1|{0} milisekund||{0} r.|1|{0} r.|0||0||1|{0} l.|1|{0} l.||{0} m-ca|1|{0} m-c|0||0||1|{0} m-ce|1|{0} m-cy||{0} t.|1|{0} t.|0||0||1|{0} t.|1|{0} t.||{0} d.|1|{0} d.|0||0||1|{0} d.|1|{0} d.||{0} h|1|{0} h|0||0||1|{0} h|1|{0} h||{0} min|0||0||0||0||0|||{0} s|1|{0} s|0||0||1|{0} s|1|{0} s||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|"
        )
