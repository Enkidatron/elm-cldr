module Generated.Mk exposing (mk)

{-|

@docs mk

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
        [ ( "mk"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night1"
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
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d.M.y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
mk : Internal.Locale.Locale
mk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "mk||||претпл.|попл.|9|afternoon1|попладне|am|претпл.|evening1|навечер|midnight|полноќ|morning1|наутро|morning2|претпладне|night1|ноќе|noon|напладне|pm|попл.|претпл.|попл.|9|afternoon1|попладне|am|претпл.|evening1|навечер|midnight|полноќ|morning1|наутро|morning2|претпладне|night1|ноќе|noon|напладне|pm|попл.|претпл.|попл.|9|afternoon1|попл.|am|претпл.|evening1|навечер|midnight|полн.|morning1|наутро|morning2|претпл.|night1|ноќе|noon|напл.|pm|попл.|d.M.yy|d.M.y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|јан.|фев.|мар.|апр.|мај|јун.|јул.|авг.|сеп.|окт.|ное.|дек.|јануари|февруари|март|април|мај|јуни|јули|август|септември|октомври|ноември|декември|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед.|пон.|вто.|сре.|чет.|пет.|саб.|недела|понеделник|вторник|среда|четврток|петок|сабота|н|п|в|с|ч|п|с|0|пр. н. е.|н. е.|пред нашата ера|од нашата ера|пр. н. е.|н. е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y\u{202F}'г'. G|GyMd|d.M.y\u{202F}'г'. G|GyMMM|MMM y\u{202F}'г'. G|GyMMMd|d MMM y\u{202F}'г'. G|GyMMMEd|E, d MMM y\u{202F}'г'. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d.M|Mdd|d.M|MEd|E, d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|W. 'седмица' 'од' MMMM|MMMMW-count-other|W. 'седмица' 'од' MMMM|ms|mm:ss|y|y\u{202F}'г'.|yM|M.y\u{202F}'г'.|yMd|d.M.y\u{202F}'г'.|yMEd|E, d.M.y\u{202F}'г'.|yMMM|MMM y\u{202F}'г'.|yMMMd|d MMM y\u{202F}'г'.|yMMMEd|E, d MMM y\u{202F}'г'.|yMMMM|MMMM y\u{202F}'г'.|yQQQ|QQQ y\u{202F}'г'.|yQQQQ|QQQQ y\u{202F}'г'.|yw-count-one|w. 'седмица' 'од' Y|yw-count-other|w. 'седмица' 'од' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MKD|ден.|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} год.|1|{0} год.|0||0||0||0|||{0} мес.|1|{0} мес.|0||0||0||0|||{0} сед.|1|{0} сед.|0||0||0||0|||{0} дена|1|{0} ден|0||0||0||0|||{0} ч.|1|{0} ч.|0||0||0||0|||{0} мин.|1|{0} мин.|0||0||0||0|||{0} сек.|1|{0} сек.|0||0||0||0|||{0} мс|1|{0} мс|0||0||0||0|||{0} години|1|{0} година|0||0||0||0|||{0} месеци|1|{0} месец|0||0||0||0|||{0} седмици|1|{0} седмица|0||0||0||0|||{0} дена|1|{0} ден|0||0||0||0|||{0} часа|1|{0} час|0||0||0||0|||{0} минути|1|{0} минута|0||0||0||0|||{0} секунди|1|{0} секунда|0||0||0||0|||{0} милисекунди|1|{0} милисекунда|0||0||0||0|||{0} г.|1|{0} г.|0||0||0||0|||{0} м.|1|{0} м.|0||0||0||0|||{0} с.|1|{0} с.|0||0||0||0|||{0} д.|1|{0} д.|0||0||0||0|||{0} ч.|1|{0} ч.|0||0||0||0|||{0} м.|1|{0} м.|0||0||0||0|||{0} с.|1|{0} с.|0||0||0||0|||{0} мс|1|{0} мс|0||0||0||0|||{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|"
        )
