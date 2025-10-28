module Generated.Ro exposing (ro, ro_MD)

{-|

@docs ro, ro_MD

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
        [ ( "ro"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 5, 0 ) "night1"
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
                    , operator = Internal.PluralRule.NotEquals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    []
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    []
                , Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.NotEquals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    [ { variable = Internal.PluralRule.N
                      , modBy = Just 100
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Range 1 19, [] )
                      }
                    ]
                ]
            )
    , many = Nothing
    }


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ro : Internal.Locale.Locale
ro =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ro||||a.m.|p.m.|8|afternoon1|după-amiaza|am|a.m.|evening1|seara|midnight|miezul nopții|morning1|dimineața|night1|noaptea|noon|amiază|pm|p.m.|a.m.|p.m.|8|afternoon1|după-amiaza|am|a.m.|evening1|seara|midnight|la miezul nopții|morning1|dimineața|night1|noaptea|noon|la amiază|pm|p.m.|a.m.|p.m.|8|afternoon1|după-amiaza|am|a.m.|evening1|seara|midnight|miezul nopții|morning1|dimineața|night1|noaptea|noon|amiază|pm|p.m.|dd.MM.y|d MMM y|d MMMM y|EEEE, d MMMM y|ian.|feb.|mar.|apr.|mai|iun.|iul.|aug.|sept.|oct.|nov.|dec.|ianuarie|februarie|martie|aprilie|mai|iunie|iulie|august|septembrie|octombrie|noiembrie|decembrie|I|F|M|A|M|I|I|A|S|O|N|D|0|dum.|lun.|mar.|mie.|joi|vin.|sâm.|duminică|luni|marți|miercuri|joi|vineri|sâmbătă|D|L|M|M|J|V|S|0|î.Hr.|d.Hr.|înainte de Hristos|după Hristos|î.Hr.|d.Hr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd.MM.y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|E, dd.MM|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'săptămâna' W 'din' MMMM|MMMMW-count-few|'săptămâna' W 'din' MMMM|MMMMW-count-other|'săptămâna' W 'din' MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|E, dd.MM.y|yMM|MM.y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'săptămâna' w 'din' Y|yw-count-few|'săptămâna' w 'din' Y|yw-count-other|'săptămâna' w 'din' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ani|1|{0} an|0||0||1|{0} ani|0|||{0} luni|1|{0} lună|0||0||1|{0} luni|0|||{0} săpt.|1|{0} săpt.|0||0||1|{0} săpt.|0|||{0} zile|1|{0} zi|0||0||1|{0} zile|0|||{0} ore|1|{0} oră|0||0||1|{0} ore|0|||{0} min.|1|{0} min.|0||0||1|{0} min.|0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} de ani|1|{0} an|0||0||1|{0} ani|0|||{0} de luni|1|{0} lună|0||0||1|{0} luni|0|||{0} de săptămâni|1|{0} săptămână|0||0||1|{0} săptămâni|0|||{0} de zile|1|{0} zi|0||0||1|{0} zile|0|||{0} de ore|1|{0} oră|0||0||1|{0} ore|0|||{0} de minute|1|{0} minut|0||0||1|{0} minute|0|||{0} de secunde|1|{0} secundă|0||0||1|{0} secunde|0|||{0} de milisecunde|1|{0} milisecundă|0||0||1|{0} milisecunde|0|||{0} a|1|{0} a|0||0||1|{0} a|0|||{0} l|1|{0} l|0||0||1|{0} l|0|||{0} săpt.|1|{0} săpt.|0||0||1|{0} săpt.|0|||{0} z|1|{0} z|0||0||1|{0} z|0|||{0} h|1|{0} h|0||0||1|{0} h|0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} și {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ro_MD : Internal.Locale.Locale
ro_MD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ro||MD||a.m.|p.m.|8|afternoon1|după-amiaza|am|a.m.|evening1|seara|midnight|miezul nopții|morning1|dimineața|night1|noaptea|noon|amiază|pm|p.m.|a.m.|p.m.|8|afternoon1|după-amiaza|am|a.m.|evening1|seara|midnight|miezul nopții|morning1|dimineața|night1|noaptea|noon|amiază|pm|p.m.|a.m.|p.m.|8|afternoon1|după-amiază|am|a.m.|evening1|seară|midnight|miezul nopții|morning1|dimineață|night1|noapte|noon|amiază|pm|p.m.|dd.MM.y|d MMM y|d MMMM y|EEEE, d MMMM y|ian.|feb.|mar.|apr.|mai|iun.|iul.|aug.|sept.|oct.|nov.|dec.|ianuarie|februarie|martie|aprilie|mai|iunie|iulie|august|septembrie|octombrie|noiembrie|decembrie|I|F|M|A|M|I|I|A|S|O|N|D|0|Dum|Lun|Mar|Mie|Joi|Vin|Sâm|duminică|luni|marți|miercuri|joi|vineri|sâmbătă|D|L|Ma|Mi|J|V|S|0|î.Hr.|d.Hr.|înainte de Hristos|după Hristos|î.Hr.|d.Hr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd.MM.y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|E, dd.MM|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'săptămâna' W 'din' MMMM|MMMMW-count-few|'săptămâna' W 'din' MMMM|MMMMW-count-other|'săptămâna' W 'din' MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|E, dd.MM.y|yMM|MM.y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'săptămâna' w 'din' Y|yw-count-few|'săptămâna' w 'din' Y|yw-count-other|'săptămâna' w 'din' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MDL|L|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ani|1|{0} an|0||0||1|{0} ani|0|||{0} luni|1|{0} lună|0||0||1|{0} luni|0|||{0} săpt.|1|{0} săpt.|0||0||1|{0} săpt.|0|||{0} zile|1|{0} zi|0||0||1|{0} zile|0|||{0} ore|1|{0} oră|0||0||1|{0} ore|0|||{0} min.|1|{0} min.|0||0||1|{0} min.|0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} de ani|1|{0} an|0||0||1|{0} ani|0|||{0} de luni|1|{0} lună|0||0||1|{0} luni|0|||{0} de săptămâni|1|{0} săptămână|0||0||1|{0} săptămâni|0|||{0} de zile|1|{0} zi|0||0||1|{0} zile|0|||{0} de ore|1|{0} oră|0||0||1|{0} ore|0|||{0} de minute|1|{0} minut|0||0||1|{0} minute|0|||{0} de secunde|1|{0} secundă|0||0||1|{0} secunde|0|||{0} de milisecunde|1|{0} milisecundă|0||0||1|{0} milisecunde|0|||{0} ani|1|{0} an|0||0||1|{0} ani|0|||{0} luni|1|{0} lună|0||0||1|{0} luni|0|||{0} săpt.|1|{0} săpt.|0||0||1|{0} săpt.|0|||{0} zile|1|{0} zi|0||0||1|{0} zile|0|||{0} h|1|{0} h|0||0||1|{0} h|0|||{0} min.|1|{0} min.|0||0||1|{0} min.|0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} și {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )
