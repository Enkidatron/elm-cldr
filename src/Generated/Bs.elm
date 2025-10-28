module Generated.Bs exposing (bs, bs_Latn)

{-|

@docs bs, bs_Latn

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
        [ ( "bs"
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

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs : Internal.Locale.Locale
bs =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "bs||||a.\u{202F}m.|p.\u{202F}m.|8|afternoon1|poslijepodne|am|a.\u{202F}m.|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|p.\u{202F}m.|prijepodne|popodne|8|afternoon1|poslijepodne|am|prijepodne|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|popodne|a.\u{202F}m.|p.\u{202F}m.|8|afternoon1|poslijepodne|am|a.\u{202F}m.|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|p.\u{202F}m.|d. M. y.|d. MMM y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mar|apr|maj|jun|jul|aug|sep|okt|nov|dec|januar|februar|mart|april|maj|juni|juli|august|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|N|P|U|S|Č|P|S|1|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|p. n. e.|n. e.|prije nove ere|nove ere|p.n.e.|n. e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d. M. y. G|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|hh:mm\u{202F}a|Hm|HH:mm|hms|hh:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a (v)|Hmsv|HH:mm:ss (v)|hmv|h:mm\u{202F}a (v)|Hmv|HH:mm (v)|M|L|Md|d. M.|MEd|E, d. M.|MMdd|d. M.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'sedmica' 'mjesec' MMMM|MMMMW-count-few|W. 'sedmica' 'mjesec' MMMM|MMMMW-count-other|W. 'sedmica' 'mjesec' MMMM|ms|mm:ss|y|y.|yM|MM/y|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|M. y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|LLLL y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'sedmica' 'u' Y.|yw-count-few|w. 'sedmica' 'u' Y.|yw-count-other|w. 'sedmica' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RSD|din.|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|XPF|XXX|¤|ZAR|R|ZMW|ZK|{0} god.|1|{0} god.|0||0||1|{0} god.|0|||{0} mj.|1|{0} mj.|0||0||1|{0} mj.|0|||{0} sedm.|1|{0} sedm.|0||0||1|{0} sedm.|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} h|0||0||0||0||0|||{0} min.|1|{0} min.|0||0||1|{0} min.|0|||{0} sek.|1|{0} sek.|0||0||1|{0} sek.|0|||{0} ms|0||0||0||0||0|||{0} godina|1|{0} godina|0||0||1|{0} godine|0|||{0} mjeseci|1|{0} mjesec|0||0||1|{0} mjeseca|0|||{0} sedmica|1|{0} sedmica|0||0||1|{0} sedmice|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} minuta|1|{0} minuta|0||0||1|{0} minute|0|||{0} sekundi|1|{0} sekunda|0||0||1|{0} sekunde|0|||{0} milisekundi|1|{0} milisekunda|0||0||1|{0} milisekunde|0|||{0} god.|1|{0} god.|0||0||1|{0} god.|0|||{0} mj.|1|{0} mj.|0||0||1|{0} mj.|0|||{0} sedm.|1|{0} sedm.|0||0||1|{0} sedm.|0|||{0} d.|1|{0} d.|0||0||1|{0} d.|0|||{0} h|0||0||0||0||0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} s|1|{0} s|0||0||1|{0} s|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs_Latn : Internal.Locale.Locale
bs_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "bs|Latn|||a.\u{202F}m.|p.\u{202F}m.|8|afternoon1|poslijepodne|am|a.\u{202F}m.|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|p.\u{202F}m.|prijepodne|popodne|8|afternoon1|poslijepodne|am|prijepodne|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|popodne|a.\u{202F}m.|p.\u{202F}m.|8|afternoon1|poslijepodne|am|a.\u{202F}m.|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|po noći|noon|podne|pm|p.\u{202F}m.|d. M. y.|d. MMM y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mar|apr|maj|jun|jul|aug|sep|okt|nov|dec|januar|februar|mart|april|maj|juni|juli|august|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|N|P|U|S|Č|P|S|1|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|p. n. e.|n. e.|prije nove ere|nove ere|p.n.e.|n. e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d. M. y. G|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|hh:mm\u{202F}a|Hm|HH:mm|hms|hh:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a (v)|Hmsv|HH:mm:ss (v)|hmv|h:mm\u{202F}a (v)|Hmv|HH:mm (v)|M|L|Md|d. M.|MEd|E, d. M.|MMdd|d. M.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'sedmica' 'mjesec' MMMM|MMMMW-count-few|W. 'sedmica' 'mjesec' MMMM|MMMMW-count-other|W. 'sedmica' 'mjesec' MMMM|ms|mm:ss|y|y.|yM|MM/y|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|M. y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|LLLL y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'sedmica' 'u' Y.|yw-count-few|w. 'sedmica' 'u' Y.|yw-count-other|w. 'sedmica' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RSD|din.|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|XPF|XXX|¤|ZAR|R|ZMW|ZK|{0} god.|1|{0} god.|0||0||1|{0} god.|0|||{0} mj.|1|{0} mj.|0||0||1|{0} mj.|0|||{0} sedm.|1|{0} sedm.|0||0||1|{0} sedm.|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} h|0||0||0||0||0|||{0} min.|1|{0} min.|0||0||1|{0} min.|0|||{0} sek.|1|{0} sek.|0||0||1|{0} sek.|0|||{0} ms|0||0||0||0||0|||{0} godina|1|{0} godina|0||0||1|{0} godine|0|||{0} mjeseci|1|{0} mjesec|0||0||1|{0} mjeseca|0|||{0} sedmica|1|{0} sedmica|0||0||1|{0} sedmice|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} minuta|1|{0} minuta|0||0||1|{0} minute|0|||{0} sekundi|1|{0} sekunda|0||0||1|{0} sekunde|0|||{0} milisekundi|1|{0} milisekunda|0||0||1|{0} milisekunde|0|||{0} god.|1|{0} god.|0||0||1|{0} god.|0|||{0} mj.|1|{0} mj.|0||0||1|{0} mj.|0|||{0} sedm.|1|{0} sedm.|0||0||1|{0} sedm.|0|||{0} d.|1|{0} d.|0||0||1|{0} d.|0|||{0} h|0||0||0||0||0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} s|1|{0} s|0||0||1|{0} s|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|"
        )
