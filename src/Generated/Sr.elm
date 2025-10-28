module Generated.Sr exposing
    ( sr, sr_Cyrl, sr_Cyrl_BA, sr_Cyrl_ME, sr_Cyrl_XK, sr_Latn
    , sr_Latn_BA, sr_Latn_ME, sr_Latn_XK
    )

{-|

@docs sr, sr_Cyrl, sr_Cyrl_BA, sr_Cyrl_ME, sr_Cyrl_XK, sr_Latn
@docs sr_Latn_BA, sr_Latn_ME, sr_Latn_XK

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
        [ ( "sr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
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
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr : Internal.Locale.Locale
sr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sr||||AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|PM|d. M. y.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|мар|апр|мај|јун|јул|авг|сеп|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сре|чет|пет|суб|недеља|понедељак|уторак|среда|четвртак|петак|субота|н|п|у|с|ч|п|с|0|п. н. е.|н. е.|пре нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E, hh:mm:ss B|Ed|E d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM: W. 'недеља'|MMMMW-count-few|MMMM: W. 'недеља'|MMMMW-count-other|MMMM: W. 'недеља'|ms|mm:ss|y|y.|yM|M. y.|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'недеља' 'у' Y.|yw-count-few|w. 'недеља' 'у' Y.|yw-count-other|w. 'недеља' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|КМ|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} год.|1|{0} год|0||0||1|{0} год.|0|||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|0|||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} мин|1|{0} мин|0||0||1|{0} мин|0|||{0} сек|1|{0} сек|0||0||1|{0} сек|0|||{0} ms|0||0||0||0||0|||{0} година|1|{0} година|0||0||1|{0} године|0|||{0} месеци|1|{0} месец|0||0||1|{0} месеца|0|||{0} недеља|1|{0} недеља|0||0||1|{0} недеље|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} минута|1|{0} минут|0||0||1|{0} минута|0|||{0} секунди|1|{0} секунда|0||0||1|{0} секунде|0|||{0} милисекунди|1|{0} милисекунда|0||0||1|{0} милисекунде|0|||{0} г|1|{0} г|0||0||1|{0} г|0|||{0} м|1|{0} м|0||0||1|{0} м|0|||{0} н|1|{0} н|0||0||1|{0} н|0|||{0} д|1|{0} д|0||0||1|{0} д|0|||{0} ч|1|{0} ч|0||0||1|{0} ч|0|||{0} м|1|{0} м|0||0||1|{0} м|0|||{0} с|1|{0} с|0||0||1|{0} с|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl : Internal.Locale.Locale
sr_Cyrl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sr|Cyrl|||AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|PM|d. M. y.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|мар|апр|мај|јун|јул|авг|сеп|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сре|чет|пет|суб|недеља|понедељак|уторак|среда|четвртак|петак|субота|н|п|у|с|ч|п|с|0|п. н. е.|н. е.|пре нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E, hh:mm:ss B|Ed|E d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM: W. 'недеља'|MMMMW-count-few|MMMM: W. 'недеља'|MMMMW-count-other|MMMM: W. 'недеља'|ms|mm:ss|y|y.|yM|M. y.|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'недеља' 'у' Y.|yw-count-few|w. 'недеља' 'у' Y.|yw-count-other|w. 'недеља' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|КМ|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} год.|1|{0} год|0||0||1|{0} год.|0|||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|0|||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} мин|1|{0} мин|0||0||1|{0} мин|0|||{0} сек|1|{0} сек|0||0||1|{0} сек|0|||{0} ms|0||0||0||0||0|||{0} година|1|{0} година|0||0||1|{0} године|0|||{0} месеци|1|{0} месец|0||0||1|{0} месеца|0|||{0} недеља|1|{0} недеља|0||0||1|{0} недеље|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} минута|1|{0} минут|0||0||1|{0} минута|0|||{0} секунди|1|{0} секунда|0||0||1|{0} секунде|0|||{0} милисекунди|1|{0} милисекунда|0||0||1|{0} милисекунде|0|||{0} г|1|{0} г|0||0||1|{0} г|0|||{0} м|1|{0} м|0||0||1|{0} м|0|||{0} н|1|{0} н|0||0||1|{0} н|0|||{0} д|1|{0} д|0||0||1|{0} д|0|||{0} ч|1|{0} ч|0||0||1|{0} ч|0|||{0} м|1|{0} м|0||0||1|{0} м|0|||{0} с|1|{0} с|0||0||1|{0} с|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_BA : Internal.Locale.Locale
sr_Cyrl_BA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sr|Cyrl|BA||прије\u{202F}подне|по\u{202F}подне|8|afternoon1|по подне|am|прије\u{202F}подне|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|по\u{202F}подне|прије подне|по подне|8|afternoon1|по подне|am|прије подне|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|по подне|прије\u{202F}подне|по\u{202F}подне|8|afternoon1|по подне|am|прије\u{202F}подне|evening1|увече|midnight|поноћ|morning1|ујутро|night1|ноћу|noon|подне|pm|по\u{202F}подне|d. M. y.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|мар|апр|мај|јун|јул|авг|сеп|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сри|чет|пет|суб|недјеља|понедјељак|уторак|сриједа|четвртак|петак|субота|н|п|у|с|ч|п|с|0|п. н. е.|н. е.|прије нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E, hh:mm:ss B|Ed|E d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM: W. 'недеља'|MMMMW-count-few|MMMM: W. 'недеља'|MMMMW-count-other|MMMM: W. 'недеља'|ms|mm:ss|y|y.|yM|M. y.|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'недеља' 'у' Y.|yw-count-few|w. 'недеља' 'у' Y.|yw-count-other|w. 'недеља' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|КМ|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} год.|1|{0} год|0||0||1|{0} год.|0|||{0} мјес.|1|{0} мјес.|0||0||1|{0} мјес.|0|||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} мин|1|{0} мин|0||0||1|{0} мин|0|||{0} сек|1|{0} сек|0||0||1|{0} сек|0|||{0} ms|0||0||0||0||0|||{0} година|1|{0} година|0||0||1|{0} године|0|||{0} мјесеци|1|{0} мјесец|0||0||1|{0} мјесеца|0|||{0} недјеља|1|{0} недјеља|0||0||1|{0} недјеље|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} минута|1|{0} минут|0||0||1|{0} минута|0|||{0} секунди|1|{0} секунда|0||0||1|{0} секунде|0|||{0} милисекунди|1|{0} милисекунда|0||0||1|{0} милисекунде|0|||{0} г|1|{0} г|0||0||1|{0} год.|0|||{0} м|1|{0} м|0||0||1|{0} мјес.|0|||{0} н|1|{0} нед.|0||0||1|{0} н|0|||{0} д|1|{0} д|0||0||1|{0} д|0|||{0} ч|1|{0} ч|0||0||1|{0} ч|0|||{0} м|1|{0} м|0||0||1|{0} м|0|||{0} с|1|{0} сек|0||0||1|{0} с|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_ME : Internal.Locale.Locale
sr_Cyrl_ME =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sr|Cyrl|ME||прије\u{202F}подне|по\u{202F}подне|8|afternoon1|по под.|am|прије\u{202F}подне|evening1|вече|midnight|поноћ|morning1|јутро|night1|ноћу|noon|подне|pm|по\u{202F}подне|прије подне|по подне|8|afternoon1|по подне|am|прије подне|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|по подне|прије\u{202F}подне|по\u{202F}подне|8|afternoon1|по под.|am|прије\u{202F}подне|evening1|вече|midnight|поноћ|morning1|јутро|night1|ноћ|noon|подне|pm|по\u{202F}подне|d. M. y.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|март|апр|мај|јун|јул|авг|септ|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сре|чет|пет|суб|недјеља|понедељак|уторак|сриједа|четвртак|петак|субота|н|п|у|с|ч|п|с|0|п. н. е.|н. е.|прије нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E, hh:mm:ss B|Ed|E d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM: W. 'недеља'|MMMMW-count-few|MMMM: W. 'недеља'|MMMMW-count-other|W. 'сједмица' 'у' MMMM|ms|mm:ss|y|y.|yM|M. y.|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'недеља' 'у' Y.|yw-count-few|w. 'недеља' 'у' Y.|yw-count-other|w. 'сједмица' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|КМ|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} год.|1|{0} год|0||0||1|{0} год.|0|||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|0|||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} мин|1|{0} мин|0||0||1|{0} мин|0|||{0} сек|1|{0} сек|0||0||1|{0} сек|0|||{0} ms|0||0||0||0||0|||{0} година|1|{0} година|0||0||1|{0} године|0|||{0} месеци|1|{0} месец|0||0||1|{0} месеца|0|||{0} недеља|1|{0} недеља|0||0||1|{0} недеље|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} минута|1|{0} минут|0||0||1|{0} минута|0|||{0} секунди|1|{0} секунда|0||0||1|{0} секунде|0|||{0} милисекунди|1|{0} милисекунда|0||0||1|{0} милисекунде|0|||{0} г|1|{0} г|0||0||1|{0} г|0|||{0} м|1|{0} м|0||0||1|{0} м|0|||{0} н|1|{0} н|0||0||1|{0} н|0|||{0} д|1|{0} д|0||0||1|{0} д|0|||{0} ч|1|{0} ч|0||0||1|{0} ч|0|||{0} м|1|{0} м|0||0||1|{0} м|0|||{0} с|1|{0} с|0||0||1|{0} с|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_XK : Internal.Locale.Locale
sr_Cyrl_XK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sr|Cyrl|XK||AM|PM|8|afternoon1|по под.|am|AM|evening1|увече|midnight|поноћ|morning1|јутро|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по под.|am|AM|evening1|вече|midnight|поноћ|morning1|јутро|night1|ноћ|noon|подне|pm|PM|d. M. y.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|март|апр|мај|јун|јул|авг|септ|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сре|чет|пет|суб|недеља|понедељак|уторак|среда|четвртак|петак|субота|н|п|у|с|ч|п|с|0|п. н. е.|н. е.|пре нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E, hh:mm:ss B|Ed|E d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM: W. 'недеља'|MMMMW-count-few|MMMM: W. 'недеља'|MMMMW-count-other|MMMM: W. 'недеља'|ms|mm:ss|y|y.|yM|M. y.|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'недеља' 'у' Y.|yw-count-few|w. 'недеља' 'у' Y.|yw-count-other|w. 'недеља' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|КМ|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} год.|1|{0} год|0||0||1|{0} год.|0|||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|0|||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} мин|1|{0} мин|0||0||1|{0} мин|0|||{0} сек|1|{0} сек|0||0||1|{0} сек|0|||{0} ms|0||0||0||0||0|||{0} година|1|{0} година|0||0||1|{0} године|0|||{0} месеци|1|{0} месец|0||0||1|{0} месеца|0|||{0} недеља|1|{0} недеља|0||0||1|{0} недеље|0|||{0} дана|1|{0} дан|0||0||1|{0} дана|0|||{0} сати|1|{0} сат|0||0||1|{0} сата|0|||{0} минута|1|{0} минут|0||0||1|{0} минута|0|||{0} секунди|1|{0} секунда|0||0||1|{0} секунде|0|||{0} милисекунди|1|{0} милисекунда|0||0||1|{0} милисекунде|0|||{0} г|1|{0} г|0||0||1|{0} г|0|||{0} м|1|{0} м|0||0||1|{0} м|0|||{0} н|1|{0} н|0||0||1|{0} н|0|||{0} д|1|{0} д|0||0||1|{0} д|0|||{0} ч|1|{0} ч|0||0||1|{0} ч|0|||{0} м|1|{0} м|0||0||1|{0} м|0|||{0} с|1|{0} с|0||0||1|{0} с|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn : Internal.Locale.Locale
sr_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sr|Latn|||AM|PM|8|afternoon1|po podne|am|AM|evening1|uveče|midnight|ponoć|morning1|ujutru|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|po podne|am|AM|evening1|uveče|midnight|ponoć|morning1|ujutru|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|po podne|am|AM|evening1|uveče|midnight|ponoć|morning1|ujutru|night1|noću|noon|podne|pm|PM|d. M. y.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mar|apr|maj|jun|jul|avg|sep|okt|nov|dec|januar|februar|mart|april|maj|jun|jul|avgust|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sre|čet|pet|sub|nedelja|ponedeljak|utorak|sreda|četvrtak|petak|subota|n|p|u|s|č|p|s|0|p. n. e.|n. e.|pre nove ere|nove ere|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E, hh:mm:ss B|Ed|E d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM: W. 'nedelja'|MMMMW-count-few|MMMM: W. 'nedelja'|MMMMW-count-other|MMMM: W. 'nedelja'|ms|mm:ss|y|y.|yM|M. y.|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'nedelja' 'u' Y.|yw-count-few|w. 'nedelja' 'u' Y.|yw-count-other|w. 'nedelja' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|r.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} god.|1|{0} god|0||0||1|{0} god.|0|||{0} mes.|1|{0} mes.|0||0||1|{0} mes.|0|||{0} ned.|1|{0} ned.|0||0||1|{0} ned.|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} min|1|{0} min|0||0||1|{0} min|0|||{0} sek|1|{0} sek|0||0||1|{0} sek|0|||{0} ms|0||0||0||0||0|||{0} godina|1|{0} godina|0||0||1|{0} godine|0|||{0} meseci|1|{0} mesec|0||0||1|{0} meseca|0|||{0} nedelja|1|{0} nedelja|0||0||1|{0} nedelje|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} minuta|1|{0} minut|0||0||1|{0} minuta|0|||{0} sekundi|1|{0} sekunda|0||0||1|{0} sekunde|0|||{0} milisekundi|1|{0} milisekunda|0||0||1|{0} milisekunde|0|||{0} g|1|{0} g|0||0||1|{0} g|0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} n|1|{0} n|0||0||1|{0} n|0|||{0} d|1|{0} d|0||0||1|{0} d|0|||{0} č|1|{0} č|0||0||1|{0} č|0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} s|1|{0} s|0||0||1|{0} s|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_BA : Internal.Locale.Locale
sr_Latn_BA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sr|Latn|BA||prije\u{202F}podne|po\u{202F}podne|8|afternoon1|po podne|am|prije\u{202F}podne|evening1|uveče|midnight|ponoć|morning1|ujutru|night1|noću|noon|podne|pm|po\u{202F}podne|prije podne|po podne|8|afternoon1|po podne|am|prije podne|evening1|uveče|midnight|ponoć|morning1|ujutru|night1|noću|noon|podne|pm|po podne|prije\u{202F}podne|po\u{202F}podne|8|afternoon1|po podne|am|prije\u{202F}podne|evening1|uveče|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|po\u{202F}podne|d. M. y.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mar|apr|maj|jun|jul|avg|sep|okt|nov|dec|januar|februar|mart|april|maj|jun|jul|avgust|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|0|p. n. e.|n. e.|prije nove ere|nove ere|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E, hh:mm:ss B|Ed|E d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM: W. 'nedelja'|MMMMW-count-few|MMMM: W. 'nedelja'|MMMMW-count-other|MMMM: W. 'nedelja'|ms|mm:ss|y|y.|yM|M. y.|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'nedelja' 'u' Y.|yw-count-few|w. 'nedelja' 'u' Y.|yw-count-other|w. 'nedelja' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|r.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} god.|1|{0} god|0||0||1|{0} god.|0|||{0} mjes.|1|{0} mjes.|0||0||1|{0} mjes.|0|||{0} ned.|1|{0} ned.|0||0||1|{0} ned.|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} min|1|{0} min|0||0||1|{0} min|0|||{0} sek|1|{0} sek|0||0||1|{0} sek|0|||{0} ms|0||0||0||0||0|||{0} godina|1|{0} godina|0||0||1|{0} godine|0|||{0} mjeseci|1|{0} mjesec|0||0||1|{0} mjeseca|0|||{0} nedjelja|1|{0} nedjelja|0||0||1|{0} nedjelje|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} minuta|1|{0} minut|0||0||1|{0} minuta|0|||{0} sekundi|1|{0} sekunda|0||0||1|{0} sekunde|0|||{0} milisekundi|1|{0} milisekunda|0||0||1|{0} milisekunde|0|||{0} g|1|{0} g|0||0||1|{0} god.|0|||{0} m|1|{0} m|0||0||1|{0} mjes.|0|||{0} n|1|{0} ned.|0||0||1|{0} n|0|||{0} d|1|{0} d|0||0||1|{0} d|0|||{0} č|1|{0} č|0||0||1|{0} č|0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} s|1|{0} sek|0||0||1|{0} s|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_ME : Internal.Locale.Locale
sr_Latn_ME =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sr|Latn|ME||prije\u{202F}podne|po\u{202F}podne|8|afternoon1|po pod.|am|prije\u{202F}podne|evening1|veče|midnight|ponoć|morning1|jutro|night1|noću|noon|podne|pm|po\u{202F}podne|prije podne|po podne|8|afternoon1|po podne|am|prije podne|evening1|uveče|midnight|ponoć|morning1|ujutru|night1|noću|noon|podne|pm|po podne|prije\u{202F}podne|po\u{202F}podne|8|afternoon1|po pod.|am|prije\u{202F}podne|evening1|veče|midnight|ponoć|morning1|jutro|night1|noć|noon|podne|pm|po\u{202F}podne|d. M. y.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mart|apr|maj|jun|jul|avg|sept|okt|nov|dec|januar|februar|mart|april|maj|jun|jul|avgust|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sre|čet|pet|sub|nedjelja|ponedeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|0|p. n. e.|n. e.|prije nove ere|nove ere|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E, hh:mm:ss B|Ed|E d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM: W. 'nedelja'|MMMMW-count-few|MMMM: W. 'nedelja'|MMMMW-count-other|W. 'sjedmica' 'u' MMMM|ms|mm:ss|y|y.|yM|M. y.|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'nedelja' 'u' Y.|yw-count-few|w. 'nedelja' 'u' Y.|yw-count-other|w. 'sjedmica' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|r.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} god.|1|{0} god|0||0||1|{0} god.|0|||{0} mes.|1|{0} mes.|0||0||1|{0} mes.|0|||{0} ned.|1|{0} ned.|0||0||1|{0} ned.|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} min|1|{0} min|0||0||1|{0} min|0|||{0} sek|1|{0} sek|0||0||1|{0} sek|0|||{0} ms|0||0||0||0||0|||{0} godina|1|{0} godina|0||0||1|{0} godine|0|||{0} meseci|1|{0} mesec|0||0||1|{0} meseca|0|||{0} nedelja|1|{0} nedelja|0||0||1|{0} nedelje|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} minuta|1|{0} minut|0||0||1|{0} minuta|0|||{0} sekundi|1|{0} sekunda|0||0||1|{0} sekunde|0|||{0} milisekundi|1|{0} milisekunda|0||0||1|{0} milisekunde|0|||{0} g|1|{0} g|0||0||1|{0} g|0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} n|1|{0} n|0||0||1|{0} n|0|||{0} d|1|{0} d|0||0||1|{0} d|0|||{0} č|1|{0} č|0||0||1|{0} č|0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} s|1|{0} s|0||0||1|{0} s|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|"
        )


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_XK : Internal.Locale.Locale
sr_Latn_XK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "sr|Latn|XK||AM|PM|8|afternoon1|po pod.|am|AM|evening1|uveče|midnight|ponoć|morning1|jutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|po podne|am|AM|evening1|uveče|midnight|ponoć|morning1|ujutru|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|po pod.|am|AM|evening1|veče|midnight|ponoć|morning1|jutro|night1|noć|noon|podne|pm|PM|d. M. y.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mart|apr|maj|jun|jul|avg|sept|okt|nov|dec|januar|februar|mart|april|maj|jun|jul|avgust|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sre|čet|pet|sub|nedelja|ponedeljak|utorak|sreda|četvrtak|petak|subota|n|p|u|s|č|p|s|0|p. n. e.|n. e.|pre nove ere|nove ere|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E, hh:mm:ss B|Ed|E d.|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d. M.|MEd|E, d. M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|MMMM: W. 'nedelja'|MMMMW-count-few|MMMM: W. 'nedelja'|MMMMW-count-other|MMMM: W. 'nedelja'|ms|mm:ss|y|y.|yM|M. y.|yMd|d. M. y.|yMEd|E, d. M. y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'nedelja' 'u' Y.|yw-count-few|w. 'nedelja' 'u' Y.|yw-count-other|w. 'nedelja' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|r.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} god.|1|{0} god|0||0||1|{0} god.|0|||{0} mes.|1|{0} mes.|0||0||1|{0} mes.|0|||{0} ned.|1|{0} ned.|0||0||1|{0} ned.|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} min|1|{0} min|0||0||1|{0} min|0|||{0} sek|1|{0} sek|0||0||1|{0} sek|0|||{0} ms|0||0||0||0||0|||{0} godina|1|{0} godina|0||0||1|{0} godine|0|||{0} meseci|1|{0} mesec|0||0||1|{0} meseca|0|||{0} nedelja|1|{0} nedelja|0||0||1|{0} nedelje|0|||{0} dana|1|{0} dan|0||0||1|{0} dana|0|||{0} sati|1|{0} sat|0||0||1|{0} sata|0|||{0} minuta|1|{0} minut|0||0||1|{0} minuta|0|||{0} sekundi|1|{0} sekunda|0||0||1|{0} sekunde|0|||{0} milisekundi|1|{0} milisekunda|0||0||1|{0} milisekunde|0|||{0} g|1|{0} g|0||0||1|{0} g|0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} n|1|{0} n|0||0||1|{0} n|0|||{0} d|1|{0} d|0||0||1|{0} d|0|||{0} č|1|{0} č|0||0||1|{0} č|0|||{0} m|1|{0} m|0||0||1|{0} m|0|||{0} s|1|{0} s|0||0||1|{0} s|0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|{0}, {1}|{0}, {1}|{0} i {1}|{0} i {1}|"
        )
