module Generated.Uk exposing (uk)

{-|

@docs uk

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
        [ ( "uk"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
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
                      , modBy = Just 10
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
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
                      , target = ( Internal.PluralRule.Range 11 14, [] )
                      }
                    ]
                ]
            )
    }


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y 'р'.
  - Long : d MMMM y 'р'.
  - Full : EEEE, d MMMM y 'р'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
uk : Internal.Locale.Locale
uk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "uk||||дп|пп|8|afternoon1|дня|am|дп|evening1|вечора|midnight|ночі|morning1|ранку|night1|ночі|noon|дня|pm|пп|дп|пп|8|afternoon1|дня|am|дп|evening1|вечора|midnight|ночі|morning1|ранку|night1|ночі|noon|дня|pm|пп|дп|пп|8|afternoon1|дня|am|дп|evening1|вечора|midnight|ночі|morning1|ранку|night1|ночі|noon|дня|pm|пп|dd.MM.yy|d MMM y\u{202F}'р'.|d MMMM y\u{202F}'р'.|EEEE, d MMMM y\u{202F}'р'.|січ.|лют.|бер.|квіт.|трав.|черв.|лип.|серп.|вер.|жовт.|лист.|груд.|січня|лютого|березня|квітня|травня|червня|липня|серпня|вересня|жовтня|листопада|грудня|с|л|б|к|т|ч|л|с|в|ж|л|г|1|січ.|лют.|бер.|квіт.|трав.|черв.|лип.|серп.|вер.|жовт.|лист.|груд.|січень|лютий|березень|квітень|травень|червень|липень|серпень|вересень|жовтень|листопад|грудень|С|Л|Б|К|Т|Ч|Л|С|В|Ж|Л|Г|нд|пн|вт|ср|чт|пт|сб|неділя|понеділок|вівторок|середа|четвер|пʼятниця|субота|Н|П|В|С|Ч|П|С|0|до н. е.|н. е.|до нашої ери|нашої ери|до н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|LLL y\u{202F}'р'. G|GyMMMd|d MMM y\u{202F}'р'. G|GyMMMEd|E, d MMM y\u{202F}'р'. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|LL|Md|dd.MM|MEd|E, dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|W-'й' 'тиж'. MMMM|MMMMW-count-few|W-'й' 'тиж'. MMMM|MMMMW-count-many|W-'й' 'тиж'. MMMM|MMMMW-count-other|W-'й' 'тиж'. MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|E, dd.MM.y|yMMM|LLL y\u{202F}'р'.|yMMMd|d MMM y\u{202F}'р'.|yMMMEd|E, d MMM y\u{202F}'р'.|yMMMM|LLLL y\u{202F}'р'.|yQQQ|QQQ y|yQQQQ|QQQQ y\u{202F}'р'.|yw-count-one|w-'й' 'тиж'. Y 'р'.|yw-count-few|w-'й' 'тиж'. Y 'р'.|yw-count-many|w-'й' 'тиж'. Y 'р'.|yw-count-other|w-'й' 'тиж'. Y 'р'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|EUR|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|UAK|крб.|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} р.|1|{0} р.|0||0||1|{0} р.|1|{0} р.||{0} міс.|1|{0} міс.|0||0||1|{0} міс.|1|{0} міс.||{0} тиж.|1|{0} тиж.|0||0||1|{0} тиж.|1|{0} тиж.||{0} дн.|1|{0} дн.|0||0||1|{0} дн.|1|{0} дн.||{0} год|1|{0} год|0||0||1|{0} год|1|{0} год||{0} хв|1|{0} хв|0||0||1|{0} хв|1|{0} хв||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} року|1|{0} рік|0||0||1|{0} роки|1|{0} років||{0} місяця|1|{0} місяць|0||0||1|{0} місяці|1|{0} місяців||{0} тижня|1|{0} тиждень|0||0||1|{0} тижні|1|{0} тижнів||{0} дня|1|{0} день|0||0||1|{0} дні|1|{0} днів||{0} години|1|{0} година|0||0||1|{0} години|1|{0} годин||{0} хвилини|1|{0} хвилина|0||0||1|{0} хвилини|1|{0} хвилин||{0} секунди|1|{0} секунда|0||0||1|{0} секунди|1|{0} секунд||{0} мілісекунди|1|{0} мілісекунда|0||0||1|{0} мілісекунди|1|{0} мілісекунд||{0}р|1|{0}р|0||0||1|{0}р|1|{0}р||{0}м|1|{0}м|0||0||1|{0}м|1|{0}м||{0}т|1|{0}т|0||0||1|{0}т|1|{0}т||{0}д|1|{0}д|0||0||1|{0}д|1|{0}д||{0}г|1|{0}г|0||0||1|{0}г|1|{0}г||{0}х|1|{0}х|0||0||1|{0}х|1|{0}х||{0}с|1|{0}с|0||0||1|{0}с|1|{0}с||{0}мс|1|{0}мс|0||0||1|{0}мс|1|{0}мс||{0}, {1}|{0}, {1}|{0} і {1}|{0} і {1}|{0}, {1}|{0}, {1}|{0} і {1}|{0} і {1}|{0}, {1}|{0}, {1}|{0} і {1}|{0} і {1}|"
        )
