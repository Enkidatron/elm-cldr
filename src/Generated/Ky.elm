module Generated.Ky exposing (ky)

{-|

@docs ky

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
        [ ( "ky"
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
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    []
                )
                []
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y-'ж'., d-MMM
  - Long : y-'ж'., d-MMMM
  - Full : y-'ж'., d-MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ky : Internal.Locale.Locale
ky =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "ky||||тң|тк|8|afternoon1|түштөн кийин|am|тң|evening1|кечинде|midnight|түн ортосу|morning1|эртең менен|night1|түн ичинде|noon|чак түш|pm|тк|таңкы|түштөн кийинки|8|afternoon1|түштөн кийин|am|таңкы|evening1|кечинде|midnight|түн ортосу|morning1|эртең менен|night1|түн ичинде|noon|чак түш|pm|түштөн кийинки|тң|тк|8|afternoon1|түшт кйн|am|тң|evening1|кечк|midnight|түн орт|morning1|эртң мн|night1|түн|noon|чт|pm|тк|d/M/yy|y-'ж'., d-MMM|y-'ж'., d-MMMM|y-'ж'., d-MMMM, EEEE|янв.|фев.|мар.|апр.|май|июн.|июл.|авг.|сен.|окт.|ноя.|дек.|январь|февраль|март|апрель|май|июнь|июль|август|сентябрь|октябрь|ноябрь|декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|1|Янв|Фев|Мар|Апр|Май|Июн|Июл|Авг|Сен|Окт|Ноя|Дек|Январь|Февраль|Март|Апрель|Май|Июнь|Июль|Август|Сентябрь|Октябрь|Ноябрь|Декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|жек.|дүй.|шейш.|шарш.|бейш.|жума|ишм.|жекшемби|дүйшөмбү|шейшемби|шаршемби|бейшемби|жума|ишемби|Ж|Д|Ш|Ш|Б|Ж|И|0|б.з.ч.|б.з.|биздин заманга чейин|биздин заман|б.з.ч.|б.з.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y-'ж'.|GyMd|GGGGG y-MM-dd|GyMMM|G y-'ж'. MMM|GyMMMd|G y-'ж'. d-MMM|GyMMMEd|G y-'ж'. d-MMM, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd-MM|MEd|dd-MM, E|MMM|LLL|MMMd|d-MMM|MMMEd|d-MMM, E|MMMMd|d-MMMM|MMMMW-count-one|MMMM 'айынын' W-'аптасы'|MMMMW-count-other|MMMM 'айынын' W-'аптасы'|ms|mm:ss|y|y|yM|y-MM|yMd|y-dd-MM|yMEd|y-dd-MM, E|yMMM|y-'ж'. MMM|yMMMd|y-'ж'. d-MMM|yMMMEd|y-'ж'. d-MMM, E|yMMMM|y-'ж'., MMMM|yQQQ|y-'ж'., QQQ|yQQQQ|y-'ж'., QQQQ|yw-count-one|Y-'жылдын' w-'аптасы'|yw-count-other|Y-'жылдын' w-'аптасы'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|BD$|BND|$|BOB|Bs|BRL|BRL|BSD|B$|BWP|P|BYN|р.|BZD|BZ$|CAD|CAD|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|RD$|EGP|LE|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|Kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|J$|JPY|JP¥|KGS|сом|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|TT$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ж.|1|{0}-ж.|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} апт|1|{0} апт|0||0||0||0|||{0} күн|1|{0} күн|0||0||0||0|||{0} ст|1|{0} ст|0||0||0||0|||{0} мүн|1|{0} мүн|0||0||0||0|||{0} сек|1|{0} сек|0||0||0||0|||{0} мсек|1|{0} мсек|0||0||0||0|||{0} жыл|1|{0} жыл|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} апта|1|{0} апта|0||0||0||0|||{0} күн|1|{0} күн|0||0||0||0|||{0} саат|1|{0} саат|0||0||0||0|||{0} мүнөт|1|{0} мүнөт|0||0||0||0|||{0} секунд|1|{0} секунд|0||0||0||0|||{0} миллисекунд|1|{0} миллисекунд|0||0||0||0|||{0} ж.|1|{0} ж.|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} ап|1|{0} ап|0||0||0||0|||{0} кн|1|{0} кн|0||0||0||0|||{0} ст|1|{0} ст|0||0||0||0|||{0} мүн|1|{0} мүн|0||0||0||0|||{0} сек|1|{0} сек|0||0||0||0|||{0} мсек|1|{0} мсек|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
