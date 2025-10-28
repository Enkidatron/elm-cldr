module Generated.Hr exposing (hr, hr_BA)

{-|

@docs hr, hr_BA

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
        [ ( "hr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
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
                      , modBy = Just 10
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 1, [] )
                      }
                    , { variable = Internal.PluralRule.I
                      , modBy = Just 100
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Exactly 11, [] )
                      }
                    ]
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.F
                    , modBy = Just 10
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    [ { variable = Internal.PluralRule.F
                      , modBy = Just 100
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Exactly 11, [] )
                      }
                    ]
                ]
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
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.F
                    , modBy = Just 10
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Range 2 4, [] )
                    }
                    [ { variable = Internal.PluralRule.F
                      , modBy = Just 100
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Range 12 14, [] )
                      }
                    ]
                ]
            )
    , many = Nothing
    }


{-| Date format strings:

  - Short : dd. MM. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr : Internal.Locale.Locale
hr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "hr||||AM|PM|8|afternoon1|popodne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|poslije podne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|popodne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|dd. MM. y.|d. MMM y.|d. MMMM y.|EEEE, d. MMMM y.|sij|velj|ožu|tra|svi|lip|srp|kol|ruj|lis|stu|pro|siječnja|veljače|ožujka|travnja|svibnja|lipnja|srpnja|kolovoza|rujna|listopada|studenoga|prosinca|1.|2.|3.|4.|5.|6.|7.|8.|9.|10.|11.|12.|1|sij|velj|ožu|tra|svi|lip|srp|kol|ruj|lis|stu|pro|siječanj|veljača|ožujak|travanj|svibanj|lipanj|srpanj|kolovoz|rujan|listopad|studeni|prosinac|1.|2.|3.|4.|5.|6.|7.|8.|9.|10.|11.|12.|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|N|P|U|S|Č|P|S|1|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|pr. Kr.|po. Kr.|prije Krista|poslije Krista|pr.n.e.|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss (zzzz)|{1} {0}|{1} {0}|{1} {0}|{1} {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d. M. y. GGGGG|GyMMM|LLL y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|hh:mm\u{202F}a|Hm|HH:mm|hms|hh:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L.|Md|dd. MM.|MEd|E, dd. MM.|MMdd|dd. MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'tjedan' MMMM|MMMMW-count-few|W. 'tjedan' MMMM|MMMMW-count-other|W. 'tjedan' MMMM|ms|mm:ss|y|y.|yM|MM. y.|yMd|dd. MM. y.|yMEd|E, dd. MM. y.|yMM|MM. y.|yMMM|LLL y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|LLLL y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'tjedan' 'u' Y.|yw-count-few|w. 'tjedan' 'u' Y.|yw-count-other|w. 'tjedan' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|−||||||E2W.|,|−|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|−|\u{00A0}%||\u{00A0}%||\u{00A0}%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|XPF|XXX|XXX|ZAR|R|ZMW|ZK|{0} g.|1|{0} g.|0||0||1|{0} g.|0|||{0} mj.|1|{0} mj.|0||0||1|{0} mj.|0|||{0} tj.|1|{0} tj.|0||0||1|{0} tj.|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} godina|1|{0} godina|0||0||1|{0} godine|0|||{0} mjeseci|1|{0} mjesec|0||0||1|{0} mjeseca|0|||{0} tjedana|1|{0} tjedan|0||0||1|{0} tjedna|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} minuta|1|{0} minuta|0||0||1|{0} minute|0|||{0} sekundi|1|{0} sekunda|0||0||1|{0} sekunde|0|||{0} milisekundi|1|{0} milisekunda|0||0||1|{0} milisekunde|0|||{0} g.|1|{0} g.|0||0||1|{0} g.|0|||{0} mj.|1|{0} mj.|0||0||1|{0} mj.|0|||{0} tj.|1|{0} tj.|0||0||1|{0} tj.|0|||{0} d.|1|{0} d.|0||0||1|{0} d.|0|||{0} h|0||0||0||0||0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d. M. yy.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr_BA : Internal.Locale.Locale
hr_BA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "hr||BA||AM|PM|8|afternoon1|popodne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|poslije podne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|popodne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|d. M. yy.|d. MMM y.|d. MMMM y.|EEEE, d. MMMM y.|sij|velj|ožu|tra|svi|lip|srp|kol|ruj|lis|stu|pro|siječnja|veljače|ožujka|travnja|svibnja|lipnja|srpnja|kolovoza|rujna|listopada|studenoga|prosinca|1.|2.|3.|4.|5.|6.|7.|8.|9.|10.|11.|12.|1|sij|velj|ožu|tra|svi|lip|srp|kol|ruj|lis|stu|pro|siječanj|veljača|ožujak|travanj|svibanj|lipanj|srpanj|kolovoz|rujan|listopad|studeni|prosinac|1.|2.|3.|4.|5.|6.|7.|8.|9.|10.|11.|12.|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|N|P|U|S|Č|P|S|0|pr. Kr.|po. Kr.|prije Krista|poslije Krista|pr.n.e.|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss (zzzz)|{1} {0}|{1} {0}|{1} {0}|{1} {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d. M. y. GGGGG|GyMMM|LLL y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|hh:mm\u{202F}a|Hm|HH:mm|hms|hh:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L.|Md|dd. MM.|MEd|E, dd. MM.|MMdd|dd. MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'tjedan' MMMM|MMMMW-count-few|W. 'tjedan' MMMM|MMMMW-count-other|W. 'tjedan' MMMM|ms|mm:ss|y|y.|yM|MM. y.|yMd|dd. MM. y.|yMEd|E, dd. MM. y.|yMM|MM. y.|yMMM|LLL y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|LLLL y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'tjedan' 'u' Y.|yw-count-few|w. 'tjedan' 'u' Y.|yw-count-other|w. 'tjedan' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|−||||||E2W.|,|−|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|−|\u{00A0}%||\u{00A0}%||\u{00A0}%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|XPF|XXX|XXX|ZAR|R|ZMW|ZK|{0} g.|1|{0} g.|0||0||1|{0} g.|0|||{0} mj.|1|{0} mj.|0||0||1|{0} mj.|0|||{0} tj.|1|{0} tj.|0||0||1|{0} tj.|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} h|0||0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} godina|1|{0} godina|0||0||1|{0} godine|0|||{0} mjeseci|1|{0} mjesec|0||0||1|{0} mjeseca|0|||{0} tjedana|1|{0} tjedan|0||0||1|{0} tjedna|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} minuta|1|{0} minuta|0||0||1|{0} minute|0|||{0} sekundi|1|{0} sekunda|0||0||1|{0} sekunde|0|||{0} milisekundi|1|{0} milisekunda|0||0||1|{0} milisekunde|0|||{0} g.|1|{0} g.|0||0||1|{0} g.|0|||{0} mj.|1|{0} mj.|0||0||1|{0} mj.|0|||{0} tj.|1|{0} tj.|0||0||1|{0} tj.|0|||{0} d.|1|{0} d.|0||0||1|{0} d.|0|||{0} h|0||0||0||0||0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
