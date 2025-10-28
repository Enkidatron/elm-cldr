module Generated.Ru exposing (ru, ru_BY, ru_KG, ru_KZ, ru_MD, ru_UA)

{-|

@docs ru, ru_BY, ru_KG, ru_KZ, ru_MD, ru_UA

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
        [ ( "ru"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 4, 0 ) "night1"
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

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru : Internal.Locale.Locale
ru =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ru||||AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полночь|morning1|утра|night1|ночи|noon|полдень|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|веч.|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|dd.MM.y|d MMM y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|янв.|февр.|мар.|апр.|мая|июн.|июл.|авг.|сент.|окт.|нояб.|дек.|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|1|янв.|февр.|март|апр.|май|июнь|июль|авг.|сент.|окт.|нояб.|дек.|январь|февраль|март|апрель|май|июнь|июль|август|сентябрь|октябрь|ноябрь|декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|вс|пн|вт|ср|чт|пт|сб|воскресенье|понедельник|вторник|среда|четверг|пятница|суббота|В|П|В|С|Ч|П|С|0|до н. э.|н. э.|до Рождества Христова|от Рождества Христова|до н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|ccc, h:mm B|EBhms|ccc, h:mm:ss B|Ed|ccc, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y\u{202F}'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y\u{202F}'г'. G|GyMMMd|d MMM y\u{202F}'г'. G|GyMMMEd|E, d MMM y\u{202F}'г'. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|E, dd.MM|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|ccc, d MMM|MMMMd|d MMMM|MMMMW-count-one|W-'я' 'неделя' MMMM|MMMMW-count-few|W-'я' 'неделя' MMMM|MMMMW-count-many|W-'я' 'неделя' MMMM|MMMMW-count-other|W-'я' 'неделя' MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|ccc, dd.MM.y\u{202F}'г'.|yMM|MM.y|yMMM|LLL y\u{202F}'г'.|yMMMd|d MMM y\u{202F}'г'.|yMMMEd|E, d MMM y\u{202F}'г'.|yMMMM|LLLL y\u{202F}'г'.|yQQQ|QQQ y\u{202F}'г'.|yQQQQ|QQQQ y\u{202F}'г'.|yw-count-one|w-'я' 'неделя' Y 'г'.|yw-count-few|w-'я' 'неделя' Y 'г'.|yw-count-many|w-'я' 'неделя' Y 'г'.|yw-count-other|w-'я' 'неделя' Y 'г'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TMT|ТМТ|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXXX|ZAR|R|ZMW|ZK|{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|1|{0} мес.||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|1|{0} нед.||{0} дн.|1|{0} дн.|0||0||1|{0} дн.|1|{0} дн.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} года|1|{0} год|0||0||1|{0} года|1|{0} лет||{0} месяца|1|{0} месяц|0||0||1|{0} месяца|1|{0} месяцев||{0} недели|1|{0} неделя|0||0||1|{0} недели|1|{0} недель||{0} дня|1|{0} день|0||0||1|{0} дня|1|{0} дней||{0} часа|1|{0} час|0||0||1|{0} часа|1|{0} часов||{0} минуты|1|{0} минута|0||0||1|{0} минуты|1|{0} минут||{0} секунды|1|{0} секунда|0||0||1|{0} секунды|1|{0} секунд||{0} миллисекунды|1|{0} миллисекунда|0||0||1|{0} миллисекунды|1|{0} миллисекунд||{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} м.|1|{0} м.|0||0||1|{0} м.|1|{0} м.||{0} н.|1|{0} н.|0||0||1|{0} н.|1|{0} н.||{0} д.|1|{0} д.|0||0||1|{0} д.|1|{0} д.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_BY : Internal.Locale.Locale
ru_BY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ru||BY||AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полночь|morning1|утра|night1|ночи|noon|полдень|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|веч.|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|dd.MM.y|d MMM y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|янв.|февр.|мар.|апр.|мая|июн.|июл.|авг.|сент.|окт.|нояб.|дек.|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|1|янв.|февр.|март|апр.|май|июнь|июль|авг.|сент.|окт.|нояб.|дек.|январь|февраль|март|апрель|май|июнь|июль|август|сентябрь|октябрь|ноябрь|декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|вс|пн|вт|ср|чт|пт|сб|воскресенье|понедельник|вторник|среда|четверг|пятница|суббота|В|П|В|С|Ч|П|С|0|до н. э.|н. э.|до Рождества Христова|от Рождества Христова|до н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|ccc, h:mm B|EBhms|ccc, h:mm:ss B|Ed|ccc, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y\u{202F}'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y\u{202F}'г'. G|GyMMMd|d MMM y\u{202F}'г'. G|GyMMMEd|E, d MMM y\u{202F}'г'. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|E, dd.MM|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|ccc, d MMM|MMMMd|d MMMM|MMMMW-count-one|W-'я' 'неделя' MMMM|MMMMW-count-few|W-'я' 'неделя' MMMM|MMMMW-count-many|W-'я' 'неделя' MMMM|MMMMW-count-other|W-'я' 'неделя' MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|ccc, dd.MM.y\u{202F}'г'.|yMM|MM.y|yMMM|LLL y\u{202F}'г'.|yMMMd|d MMM y\u{202F}'г'.|yMMMEd|E, d MMM y\u{202F}'г'.|yMMMM|LLLL y\u{202F}'г'.|yQQQ|QQQ y\u{202F}'г'.|yQQQQ|QQQQ y\u{202F}'г'.|yw-count-one|w-'я' 'неделя' Y 'г'.|yw-count-few|w-'я' 'неделя' Y 'г'.|yw-count-many|w-'я' 'неделя' Y 'г'.|yw-count-other|w-'я' 'неделя' Y 'г'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|Br|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|RUR|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TMT|ТМТ|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXXX|ZAR|R|ZMW|ZK|{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|1|{0} мес.||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|1|{0} нед.||{0} дн.|1|{0} дн.|0||0||1|{0} дн.|1|{0} дн.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} года|1|{0} год|0||0||1|{0} года|1|{0} лет||{0} месяца|1|{0} месяц|0||0||1|{0} месяца|1|{0} месяцев||{0} недели|1|{0} неделя|0||0||1|{0} недели|1|{0} недель||{0} дня|1|{0} день|0||0||1|{0} дня|1|{0} дней||{0} часа|1|{0} час|0||0||1|{0} часа|1|{0} часов||{0} минуты|1|{0} минута|0||0||1|{0} минуты|1|{0} минут||{0} секунды|1|{0} секунда|0||0||1|{0} секунды|1|{0} секунд||{0} миллисекунды|1|{0} миллисекунда|0||0||1|{0} миллисекунды|1|{0} миллисекунд||{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} м.|1|{0} м.|0||0||1|{0} м.|1|{0} м.||{0} н.|1|{0} н.|0||0||1|{0} н.|1|{0} н.||{0} д.|1|{0} д.|0||0||1|{0} д.|1|{0} д.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_KG : Internal.Locale.Locale
ru_KG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ru||KG||AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полночь|morning1|утра|night1|ночи|noon|полдень|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|веч.|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|dd.MM.y|d MMM y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|янв.|февр.|мар.|апр.|мая|июн.|июл.|авг.|сент.|окт.|нояб.|дек.|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|1|янв.|февр.|март|апр.|май|июнь|июль|авг.|сент.|окт.|нояб.|дек.|январь|февраль|март|апрель|май|июнь|июль|август|сентябрь|октябрь|ноябрь|декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|вс|пн|вт|ср|чт|пт|сб|воскресенье|понедельник|вторник|среда|четверг|пятница|суббота|В|П|В|С|Ч|П|С|0|до н. э.|н. э.|до Рождества Христова|от Рождества Христова|до н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|ccc, h:mm B|EBhms|ccc, h:mm:ss B|Ed|ccc, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y\u{202F}'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y\u{202F}'г'. G|GyMMMd|d MMM y\u{202F}'г'. G|GyMMMEd|E, d MMM y\u{202F}'г'. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|E, dd.MM|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|ccc, d MMM|MMMMd|d MMMM|MMMMW-count-one|W-'я' 'неделя' MMMM|MMMMW-count-few|W-'я' 'неделя' MMMM|MMMMW-count-many|W-'я' 'неделя' MMMM|MMMMW-count-other|W-'я' 'неделя' MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|ccc, dd.MM.y\u{202F}'г'.|yMM|MM.y|yMMM|LLL y\u{202F}'г'.|yMMMd|d MMM y\u{202F}'г'.|yMMMEd|E, d MMM y\u{202F}'г'.|yMMMM|LLLL y\u{202F}'г'.|yQQQ|QQQ y\u{202F}'г'.|yQQQQ|QQQQ y\u{202F}'г'.|yw-count-one|w-'я' 'неделя' Y 'г'.|yw-count-few|w-'я' 'неделя' Y 'г'.|yw-count-many|w-'я' 'неделя' Y 'г'.|yw-count-other|w-'я' 'неделя' Y 'г'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|сом|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TMT|ТМТ|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXXX|ZAR|R|ZMW|ZK|{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|1|{0} мес.||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|1|{0} нед.||{0} дн.|1|{0} дн.|0||0||1|{0} дн.|1|{0} дн.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} года|1|{0} год|0||0||1|{0} года|1|{0} лет||{0} месяца|1|{0} месяц|0||0||1|{0} месяца|1|{0} месяцев||{0} недели|1|{0} неделя|0||0||1|{0} недели|1|{0} недель||{0} дня|1|{0} день|0||0||1|{0} дня|1|{0} дней||{0} часа|1|{0} час|0||0||1|{0} часа|1|{0} часов||{0} минуты|1|{0} минута|0||0||1|{0} минуты|1|{0} минут||{0} секунды|1|{0} секунда|0||0||1|{0} секунды|1|{0} секунд||{0} миллисекунды|1|{0} миллисекунда|0||0||1|{0} миллисекунды|1|{0} миллисекунд||{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} м.|1|{0} м.|0||0||1|{0} м.|1|{0} м.||{0} н.|1|{0} н.|0||0||1|{0} н.|1|{0} н.||{0} д.|1|{0} д.|0||0||1|{0} д.|1|{0} д.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_KZ : Internal.Locale.Locale
ru_KZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ru||KZ||AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полночь|morning1|утра|night1|ночи|noon|полдень|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|веч.|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|dd.MM.y|d MMM y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|янв.|февр.|мар.|апр.|мая|июн.|июл.|авг.|сент.|окт.|нояб.|дек.|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|1|янв.|февр.|март|апр.|май|июнь|июль|авг.|сент.|окт.|нояб.|дек.|январь|февраль|март|апрель|май|июнь|июль|август|сентябрь|октябрь|ноябрь|декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|вс|пн|вт|ср|чт|пт|сб|воскресенье|понедельник|вторник|среда|четверг|пятница|суббота|В|П|В|С|Ч|П|С|0|до н. э.|н. э.|до Рождества Христова|от Рождества Христова|до н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|ccc, h:mm B|EBhms|ccc, h:mm:ss B|Ed|ccc, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y\u{202F}'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y\u{202F}'г'. G|GyMMMd|d MMM y\u{202F}'г'. G|GyMMMEd|E, d MMM y\u{202F}'г'. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|E, dd.MM|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|ccc, d MMM|MMMMd|d MMMM|MMMMW-count-one|W-'я' 'неделя' MMMM|MMMMW-count-few|W-'я' 'неделя' MMMM|MMMMW-count-many|W-'я' 'неделя' MMMM|MMMMW-count-other|W-'я' 'неделя' MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|ccc, dd.MM.y\u{202F}'г'.|yMM|MM.y|yMMM|LLL y\u{202F}'г'.|yMMMd|d MMM y\u{202F}'г'.|yMMMEd|E, d MMM y\u{202F}'г'.|yMMMM|LLLL y\u{202F}'г'.|yQQQ|QQQ y\u{202F}'г'.|yQQQQ|QQQQ y\u{202F}'г'.|yw-count-one|w-'я' 'неделя' Y 'г'.|yw-count-few|w-'я' 'неделя' Y 'г'.|yw-count-many|w-'я' 'неделя' Y 'г'.|yw-count-other|w-'я' 'неделя' Y 'г'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TMT|ТМТ|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXXX|ZAR|R|ZMW|ZK|{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|1|{0} мес.||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|1|{0} нед.||{0} дн.|1|{0} дн.|0||0||1|{0} дн.|1|{0} дн.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} года|1|{0} год|0||0||1|{0} года|1|{0} лет||{0} месяца|1|{0} месяц|0||0||1|{0} месяца|1|{0} месяцев||{0} недели|1|{0} неделя|0||0||1|{0} недели|1|{0} недель||{0} дня|1|{0} день|0||0||1|{0} дня|1|{0} дней||{0} часа|1|{0} час|0||0||1|{0} часа|1|{0} часов||{0} минуты|1|{0} минута|0||0||1|{0} минуты|1|{0} минут||{0} секунды|1|{0} секунда|0||0||1|{0} секунды|1|{0} секунд||{0} миллисекунды|1|{0} миллисекунда|0||0||1|{0} миллисекунды|1|{0} миллисекунд||{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} м.|1|{0} м.|0||0||1|{0} м.|1|{0} м.||{0} н.|1|{0} н.|0||0||1|{0} н.|1|{0} н.||{0} д.|1|{0} д.|0||0||1|{0} д.|1|{0} д.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_MD : Internal.Locale.Locale
ru_MD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ru||MD||AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полночь|morning1|утра|night1|ночи|noon|полдень|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|веч.|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|dd.MM.y|d MMM y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|янв.|февр.|мар.|апр.|мая|июн.|июл.|авг.|сент.|окт.|нояб.|дек.|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|1|янв.|февр.|март|апр.|май|июнь|июль|авг.|сент.|окт.|нояб.|дек.|январь|февраль|март|апрель|май|июнь|июль|август|сентябрь|октябрь|ноябрь|декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|вс|пн|вт|ср|чт|пт|сб|воскресенье|понедельник|вторник|среда|четверг|пятница|суббота|В|П|В|С|Ч|П|С|0|до н. э.|н. э.|до Рождества Христова|от Рождества Христова|до н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|ccc, h:mm B|EBhms|ccc, h:mm:ss B|Ed|ccc, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y\u{202F}'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y\u{202F}'г'. G|GyMMMd|d MMM y\u{202F}'г'. G|GyMMMEd|E, d MMM y\u{202F}'г'. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|E, dd.MM|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|ccc, d MMM|MMMMd|d MMMM|MMMMW-count-one|W-'я' 'неделя' MMMM|MMMMW-count-few|W-'я' 'неделя' MMMM|MMMMW-count-many|W-'я' 'неделя' MMMM|MMMMW-count-other|W-'я' 'неделя' MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|ccc, dd.MM.y\u{202F}'г'.|yMM|MM.y|yMMM|LLL y\u{202F}'г'.|yMMMd|d MMM y\u{202F}'г'.|yMMMEd|E, d MMM y\u{202F}'г'.|yMMMM|LLLL y\u{202F}'г'.|yQQQ|QQQ y\u{202F}'г'.|yQQQQ|QQQQ y\u{202F}'г'.|yw-count-one|w-'я' 'неделя' Y 'г'.|yw-count-few|w-'я' 'неделя' Y 'г'.|yw-count-many|w-'я' 'неделя' Y 'г'.|yw-count-other|w-'я' 'неделя' Y 'г'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|110|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MDL|L|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TMT|ТМТ|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXXX|ZAR|R|ZMW|ZK|{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|1|{0} мес.||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|1|{0} нед.||{0} дн.|1|{0} дн.|0||0||1|{0} дн.|1|{0} дн.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} года|1|{0} год|0||0||1|{0} года|1|{0} лет||{0} месяца|1|{0} месяц|0||0||1|{0} месяца|1|{0} месяцев||{0} недели|1|{0} неделя|0||0||1|{0} недели|1|{0} недель||{0} дня|1|{0} день|0||0||1|{0} дня|1|{0} дней||{0} часа|1|{0} час|0||0||1|{0} часа|1|{0} часов||{0} минуты|1|{0} минута|0||0||1|{0} минуты|1|{0} минут||{0} секунды|1|{0} секунда|0||0||1|{0} секунды|1|{0} секунд||{0} миллисекунды|1|{0} миллисекунда|0||0||1|{0} миллисекунды|1|{0} миллисекунд||{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} м.|1|{0} м.|0||0||1|{0} м.|1|{0} м.||{0} н.|1|{0} н.|0||0||1|{0} н.|1|{0} н.||{0} д.|1|{0} д.|0||0||1|{0} д.|1|{0} д.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_UA : Internal.Locale.Locale
ru_UA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ru||UA||AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|вечера|midnight|полночь|morning1|утра|night1|ночи|noon|полдень|pm|PM|AM|PM|8|afternoon1|дня|am|AM|evening1|веч.|midnight|полн.|morning1|утра|night1|ночи|noon|полд.|pm|PM|dd.MM.y|d MMM y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|янв.|февр.|мар.|апр.|мая|июн.|июл.|авг.|сент.|окт.|нояб.|дек.|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|1|янв.|февр.|март|апр.|май|июнь|июль|авг.|сент.|окт.|нояб.|дек.|январь|февраль|март|апрель|май|июнь|июль|август|сентябрь|октябрь|ноябрь|декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|вс|пн|вт|ср|чт|пт|сб|воскресенье|понедельник|вторник|среда|четверг|пятница|суббота|В|П|В|С|Ч|П|С|0|до н. э.|н. э.|до Рождества Христова|от Рождества Христова|до н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|ccc, h:mm B|EBhms|ccc, h:mm:ss B|Ed|ccc, d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y\u{202F}'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y\u{202F}'г'. G|GyMMMd|d MMM y\u{202F}'г'. G|GyMMMEd|E, d MMM y\u{202F}'г'. G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|E, dd.MM|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|ccc, d MMM|MMMMd|d MMMM|MMMMW-count-one|W-'я' 'неделя' MMMM|MMMMW-count-few|W-'я' 'неделя' MMMM|MMMMW-count-many|W-'я' 'неделя' MMMM|MMMMW-count-other|W-'я' 'неделя' MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|ccc, d.MM.y|yMM|MM.y|yMMM|LLL y\u{202F}'г'.|yMMMd|d MMM y\u{202F}'г'.|yMMMEd|E, d MMM y\u{202F}'г'.|yMMMM|LLLL y\u{202F}'г'.|yQQQ|QQQ y\u{202F}'г'.|yQQQQ|QQQQ y\u{202F}'г'.|yw-count-one|w-'я' 'неделя' Y 'г'.|yw-count-few|w-'я' 'неделя' Y 'г'.|yw-count-many|w-'я' 'неделя' Y 'г'.|yw-count-other|w-'я' 'неделя' Y 'г'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|109|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|ლ|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TMT|ТМТ|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXXX|ZAR|R|ZMW|ZK|{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} мес.|1|{0} мес.|0||0||1|{0} мес.|1|{0} мес.||{0} нед.|1|{0} нед.|0||0||1|{0} нед.|1|{0} нед.||{0} дн.|1|{0} дн.|0||0||1|{0} дн.|1|{0} дн.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} года|1|{0} год|0||0||1|{0} года|1|{0} лет||{0} месяца|1|{0} месяц|0||0||1|{0} месяца|1|{0} месяцев||{0} недели|1|{0} неделя|0||0||1|{0} недели|1|{0} недель||{0} дня|1|{0} день|0||0||1|{0} дня|1|{0} дней||{0} часа|1|{0} час|0||0||1|{0} часа|1|{0} часов||{0} минуты|1|{0} минута|0||0||1|{0} минуты|1|{0} минут||{0} секунды|1|{0} секунда|0||0||1|{0} секунды|1|{0} секунд||{0} миллисекунды|1|{0} миллисекунда|0||0||1|{0} миллисекунды|1|{0} миллисекунд||{0} г.|1|{0} г.|0||0||1|{0} г.|1|{0} л.||{0} м.|1|{0} м.|0||0||1|{0} м.|1|{0} м.||{0} н.|1|{0} н.|0||0||1|{0} н.|1|{0} н.||{0} д.|1|{0} д.|0||0||1|{0} д.|1|{0} д.||{0} ч|1|{0} ч|0||0||1|{0} ч|1|{0} ч||{0} мин|1|{0} мин|0||0||1|{0} мин|1|{0} мин||{0} с|1|{0} с|0||0||1|{0} с|1|{0} с||{0} мс|1|{0} мс|0||0||1|{0} мс|1|{0} мс||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
