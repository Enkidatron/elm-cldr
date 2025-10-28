module Generated.Dsb exposing (dsb)

{-|

@docs dsb

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.PluralRule


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


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
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.F
                    , modBy = Just 100
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    []
                ]
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
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.F
                    , modBy = Just 100
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 2, [] )
                    }
                    []
                ]
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
                    { variable = Internal.PluralRule.F
                    , modBy = Just 100
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Range 3 4, [] )
                    }
                    []
                ]
            )
    , many = Nothing
    }


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d.M.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
dsb : Internal.Locale.Locale
dsb =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "dsb||||dop.|wótp.|2|am|dop.|pm|wótp.|dopołdnja|wótpołdnja|2|am|dopołdnja|pm|wótpołdnja|dop.|wótp.|2|am|dop.|pm|wótp.|d.M.yy|d.M.y|d. MMMM y|EEEE, d. MMMM y|jan.|feb.|měr.|apr.|maj.|jun.|jul.|awg.|sep.|okt.|now.|dec.|januara|februara|měrca|apryla|maja|junija|julija|awgusta|septembra|oktobra|nowembra|decembra|j|f|m|a|m|j|j|a|s|o|n|d|1|jan|feb|měr|apr|maj|jun|jul|awg|sep|okt|now|dec|januar|februar|měrc|apryl|maj|junij|julij|awgust|september|oktober|nowember|december|j|f|m|a|m|j|j|a|s|o|n|d|nje|pón|wał|srj|stw|pět|sob|njeźela|pónjeźele|wałtora|srjoda|stwórtk|pětk|sobota|n|p|w|s|s|p|s|0|pś.Chr.n.|pó Chr.n.|pśed Kristusowym naroźenim|pó Kristusowem naroźenju|pś.Chr.n.|pó Chr.n.|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|53|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E, h:mm\u{202F}a|EHm|E, 'zeg'. H:mm|Ehms|E, h:mm:ss\u{202F}a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d.M.y GGGGG|GyMMM|MMM y G|GyMMMd|d. MMM y G|GyMMMEd|E, d. MMM y G|h|h\u{202F}a|H|'zeg'. H|hm|h:mm\u{202F}a|Hm|'zeg'. H:mm|hms|h:mm:ss\u{202F}a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmv|h:mm a v|Hmv|H:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMW-count-one|W. 'tyźeń' MMMM|MMMMW-count-two|W. 'tyźeń' MMMM|MMMMW-count-few|W. 'tyźeń' MMMM|MMMMW-count-other|W. 'tyźeń' MMMM|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|MMM y|yMMMd|d. MMM y|yMMMEd|E, d. MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w. 'tyźeń' 'lěta' Y|yw-count-two|w. 'tyźeń' 'lěta' Y|yw-count-few|w. 'tyźeń' 'lěta' Y|yw-count-other|w. 'tyźeń' 'lěta' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|106|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|₱|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} l.|1|{0} l.|1|{0} l.|0||1|{0} l.|0|||{0} mjas.|1|{0} mjas.|1|{0} mjas.|0||1|{0} mjas.|0|||{0} tyź.|1|{0} tyź.|1|{0} tyź.|0||1|{0} tyź.|0|||{0} dn.|1|{0} ź.|1|{0} dn.|0||1|{0} dn.|0|||{0} góź.|1|{0} góź.|1|{0} góź.|0||1|{0} góź.|0|||{0} min.|1|{0} min.|1|{0} min.|0||1|{0} min.|0|||{0} sek.|1|{0} sek.|1|{0} sek.|0||1|{0} sek.|0|||{0} ms|0||0||0||0||0|||{0} lět|1|{0} lěto|1|{0} lěśe|0||1|{0} lěta|0|||{0} mjasecow|1|{0} mjasec|1|{0} mjaseca|0||1|{0} mjasecy|0|||{0} tyźenjow|1|{0} tyźeń|1|{0} tyźenja|0||1|{0} tyźenje|0|||{0} dnjow|1|{0} źeń|1|{0} dnja|0||1|{0} dny|0|||{0} góźinow|1|{0} góźina|1|{0} góźinje|0||1|{0} góźiny|0|||{0} minutow|1|{0} minuta|1|{0} minuśe|0||1|{0} minuty|0|||{0} sekundow|1|{0} sekunda|1|{0} sekunźe|0||1|{0} sekundy|0|||{0} milisekundow|1|{0} milisekunda|1|{0} milisekunźe|0||1|{0} milisekundy|0|||{0} l.|1|{0} l.|1|{0} l.|0||1|{0} l.|0|||{0} mjas.|1|{0} mjas.|1|{0} mjas.|0||1|{0} mjas.|0|||{0} tyź.|1|{0} tyź.|1|{0} tyź.|0||1|{0} tyź.|0|||{0} d|1|{0} ź|1|{0} d|0||1|{0} d|0|||{0} g|1|{0} g|1|{0} g|0||1|{0} g|0|||{0} min|1|{0} min|1|{0} min|0||1|{0} min|0|||{0} s|1|{0} s|1|{0} s|0||1|{0} s|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} a {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} a {1}|{0} a {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )
