module Generated.Kk exposing (kk, kk_Cyrl, kk_KZ)

{-|

@docs kk, kk_Cyrl, kk_KZ

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
        [ ( "kk"
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

  - Short : dd.MM.yy
  - Medium : y 'ж'. dd MMM
  - Long : y 'ж'. d MMMM
  - Full : y 'ж'. d MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
kk : Internal.Locale.Locale
kk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "kk||||AM|PM|8|afternoon1|түстен кейінгі|am|AM|evening1|кешкі|midnight|түн жарымы|morning1|таңғы|night1|түнгі|noon|түскі|pm|PM|AM|PM|8|afternoon1|түстен кейінгі|am|AM|evening1|кешкі|midnight|түн жарымы|morning1|таңғы|night1|түнгі|noon|түскі|pm|PM|AM|PM|8|afternoon1|түстен кейінгі|am|AM|evening1|кешкі|midnight|түнгі|morning1|таңғы|night1|түнгі|noon|түскі|pm|PM|dd.MM.yy|y\u{202F}'ж'. dd MMM|y\u{202F}'ж'. d MMMM|y\u{202F}'ж'. d MMMM, EEEE|қаң.|ақп.|нау.|сәу.|мам.|мау.|шіл.|там.|қыр.|қаз.|қар.|жел.|қаңтар|ақпан|наурыз|сәуір|мамыр|маусым|шілде|тамыз|қыркүйек|қазан|қараша|желтоқсан|Қ|А|Н|С|М|М|Ш|Т|Қ|Қ|Қ|Ж|1|қаң.|ақп.|нау.|сәу.|мам.|мау.|шіл.|там.|қыр.|қаз.|қар.|жел.|Қаңтар|Ақпан|Наурыз|Сәуір|Мамыр|Маусым|Шілде|Тамыз|Қыркүйек|Қазан|Қараша|Желтоқсан|Қ|А|Н|С|М|М|Ш|Т|Қ|Қ|Қ|Ж|жс|дс|сс|ср|бс|жм|сб|жексенбі|дүйсенбі|сейсенбі|сәрсенбі|бейсенбі|жұма|сенбі|Ж|Д|С|С|Б|Ж|С|0|б.з.д.|б.з.|Біздің заманымызға дейін|біздің заманымыз|б.з.д.|б.з.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E, B h:mm|EBhms|E, B h:mm:ss|Ed|d, E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y\u{202F}'ж'.|GyMd|dd-MM-GGGGG y|GyMMM|G y\u{202F}'ж'. MMM|GyMMMd|G y\u{202F}'ж'. d MMM|GyMMMEd|G y\u{202F}'ж'. d MMM, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|dd.MM, E|MMM|LLL|MMMd|d MMM|MMMEd|d MMM, E|MMMMd|d MMMM|MMMMW-count-one|MMMM 'айының' W-'аптасы'|MMMMW-count-other|MMMM 'айының' W-'аптасы'|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|dd.MM.y, E|yMMM|y\u{202F}'ж'. MMM|yMMMd|y\u{202F}'ж'. d MMM|yMMMEd|y\u{202F}'ж'. d MMM, E|yMMMM|y\u{202F}'ж'. MMMM|yQQQ|y\u{202F}'ж'. QQQ|yQQQQ|y\u{202F}'ж'. QQQQ|yw-count-one|Y 'жылдың' w-'аптасы'|yw-count-other|Y 'жылдың' w-'аптасы'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LSL|ЛСЛ|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ж.|1|{0} ж.|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} ап.|1|{0} ап.|0||0||0||0|||{0} күн|1|{0} күн|0||0||0||0|||{0} сағ|1|{0} сағ|0||0||0||0|||{0} мин|1|{0} мин|0||0||0||0|||{0} с|1|{0} с|0||0||0||0|||{0} мс|1|{0} мс|0||0||0||0|||{0} жыл|1|{0} жыл|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} апта|1|{0} апта|0||0||0||0|||{0} күн|1|{0} күн|0||0||0||0|||{0} сағат|1|{0} сағат|0||0||0||0|||{0} минут|1|{0} минут|0||0||0||0|||{0} секунд|1|{0} секунд|0||0||0||0|||{0} миллисекунд|1|{0} миллисекунд|0||0||0||0|||{0} ж.|1|{0} ж.|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} ап.|1|{0} ап.|0||0||0||0|||{0} к.|1|{0} к.|0||0||0||0|||{0} сағ|1|{0} сағ|0||0||0||0|||{0} мин|1|{0} мин|0||0||0||0|||{0} с|1|{0} с|0||0||0||0|||{0} мс|1|{0} мс|0||0||0||0|||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : y 'ж'. dd MMM
  - Long : y 'ж'. d MMMM
  - Full : y 'ж'. d MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
kk_Cyrl : Internal.Locale.Locale
kk_Cyrl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "kk|Cyrl|||AM|PM|8|afternoon1|түстен кейінгі|am|AM|evening1|кешкі|midnight|түн жарымы|morning1|таңғы|night1|түнгі|noon|түскі|pm|PM|AM|PM|8|afternoon1|түстен кейінгі|am|AM|evening1|кешкі|midnight|түн жарымы|morning1|таңғы|night1|түнгі|noon|түскі|pm|PM|AM|PM|8|afternoon1|түстен кейінгі|am|AM|evening1|кешкі|midnight|түнгі|morning1|таңғы|night1|түнгі|noon|түскі|pm|PM|dd.MM.yy|y\u{202F}'ж'. dd MMM|y\u{202F}'ж'. d MMMM|y\u{202F}'ж'. d MMMM, EEEE|қаң.|ақп.|нау.|сәу.|мам.|мау.|шіл.|там.|қыр.|қаз.|қар.|жел.|қаңтар|ақпан|наурыз|сәуір|мамыр|маусым|шілде|тамыз|қыркүйек|қазан|қараша|желтоқсан|Қ|А|Н|С|М|М|Ш|Т|Қ|Қ|Қ|Ж|1|қаң.|ақп.|нау.|сәу.|мам.|мау.|шіл.|там.|қыр.|қаз.|қар.|жел.|Қаңтар|Ақпан|Наурыз|Сәуір|Мамыр|Маусым|Шілде|Тамыз|Қыркүйек|Қазан|Қараша|Желтоқсан|Қ|А|Н|С|М|М|Ш|Т|Қ|Қ|Қ|Ж|жс|дс|сс|ср|бс|жм|сб|жексенбі|дүйсенбі|сейсенбі|сәрсенбі|бейсенбі|жұма|сенбі|Ж|Д|С|С|Б|Ж|С|0|б.з.д.|б.з.|Біздің заманымызға дейін|біздің заманымыз|б.з.д.|б.з.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E, B h:mm|EBhms|E, B h:mm:ss|Ed|d, E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y\u{202F}'ж'.|GyMd|dd-MM-GGGGG y|GyMMM|G y\u{202F}'ж'. MMM|GyMMMd|G y\u{202F}'ж'. d MMM|GyMMMEd|G y\u{202F}'ж'. d MMM, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|dd.MM, E|MMM|LLL|MMMd|d MMM|MMMEd|d MMM, E|MMMMd|d MMMM|MMMMW-count-one|MMMM 'айының' W-'аптасы'|MMMMW-count-other|MMMM 'айының' W-'аптасы'|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|dd.MM.y, E|yMMM|y\u{202F}'ж'. MMM|yMMMd|y\u{202F}'ж'. d MMM|yMMMEd|y\u{202F}'ж'. d MMM, E|yMMMM|y\u{202F}'ж'. MMMM|yQQQ|y\u{202F}'ж'. QQQ|yQQQQ|y\u{202F}'ж'. QQQQ|yw-count-one|Y 'жылдың' w-'аптасы'|yw-count-other|Y 'жылдың' w-'аптасы'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LSL|ЛСЛ|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ж.|1|{0} ж.|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} ап.|1|{0} ап.|0||0||0||0|||{0} күн|1|{0} күн|0||0||0||0|||{0} сағ|1|{0} сағ|0||0||0||0|||{0} мин|1|{0} мин|0||0||0||0|||{0} с|1|{0} с|0||0||0||0|||{0} мс|1|{0} мс|0||0||0||0|||{0} жыл|1|{0} жыл|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} апта|1|{0} апта|0||0||0||0|||{0} күн|1|{0} күн|0||0||0||0|||{0} сағат|1|{0} сағат|0||0||0||0|||{0} минут|1|{0} минут|0||0||0||0|||{0} секунд|1|{0} секунд|0||0||0||0|||{0} миллисекунд|1|{0} миллисекунд|0||0||0||0|||{0} ж.|1|{0} ж.|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} ап.|1|{0} ап.|0||0||0||0|||{0} к.|1|{0} к.|0||0||0||0|||{0} сағ|1|{0} сағ|0||0||0||0|||{0} мин|1|{0} мин|0||0||0||0|||{0} с|1|{0} с|0||0||0||0|||{0} мс|1|{0} мс|0||0||0||0|||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : y 'ж'. dd MMM
  - Long : y 'ж'. d MMMM
  - Full : y 'ж'. d MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
kk_KZ : Internal.Locale.Locale
kk_KZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "kk||KZ||AM|PM|8|afternoon1|түстен кейінгі|am|AM|evening1|кешкі|midnight|түн жарымы|morning1|таңғы|night1|түнгі|noon|түскі|pm|PM|AM|PM|8|afternoon1|түстен кейінгі|am|AM|evening1|кешкі|midnight|түн жарымы|morning1|таңғы|night1|түнгі|noon|түскі|pm|PM|AM|PM|8|afternoon1|түстен кейінгі|am|AM|evening1|кешкі|midnight|түнгі|morning1|таңғы|night1|түнгі|noon|түскі|pm|PM|dd.MM.yy|y\u{202F}'ж'. dd MMM|y\u{202F}'ж'. d MMMM|y\u{202F}'ж'. d MMMM, EEEE|қаң.|ақп.|нау.|сәу.|мам.|мау.|шіл.|там.|қыр.|қаз.|қар.|жел.|қаңтар|ақпан|наурыз|сәуір|мамыр|маусым|шілде|тамыз|қыркүйек|қазан|қараша|желтоқсан|Қ|А|Н|С|М|М|Ш|Т|Қ|Қ|Қ|Ж|1|қаң.|ақп.|нау.|сәу.|мам.|мау.|шіл.|там.|қыр.|қаз.|қар.|жел.|Қаңтар|Ақпан|Наурыз|Сәуір|Мамыр|Маусым|Шілде|Тамыз|Қыркүйек|Қазан|Қараша|Желтоқсан|Қ|А|Н|С|М|М|Ш|Т|Қ|Қ|Қ|Ж|жс|дс|сс|ср|бс|жм|сб|жексенбі|дүйсенбі|сейсенбі|сәрсенбі|бейсенбі|жұма|сенбі|Ж|Д|С|С|Б|Ж|С|0|б.з.д.|б.з.|Біздің заманымызға дейін|біздің заманымыз|б.з.д.|б.з.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E, B h:mm|EBhms|E, B h:mm:ss|Ed|d, E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y\u{202F}'ж'.|GyMd|dd-MM-GGGGG y|GyMMM|G y\u{202F}'ж'. MMM|GyMMMd|G y\u{202F}'ж'. d MMM|GyMMMEd|G y\u{202F}'ж'. d MMM, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|dd.MM, E|MMM|LLL|MMMd|d MMM|MMMEd|d MMM, E|MMMMd|d MMMM|MMMMW-count-one|MMMM 'айының' W-'аптасы'|MMMMW-count-other|MMMM 'айының' W-'аптасы'|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|dd.MM.y, E|yMMM|y\u{202F}'ж'. MMM|yMMMd|y\u{202F}'ж'. d MMM|yMMMEd|y\u{202F}'ж'. d MMM, E|yMMMM|y\u{202F}'ж'. MMMM|yQQQ|y\u{202F}'ж'. QQQ|yQQQQ|y\u{202F}'ж'. QQQQ|yw-count-one|Y 'жылдың' w-'аптасы'|yw-count-other|Y 'жылдың' w-'аптасы'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LSL|ЛСЛ|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ж.|1|{0} ж.|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} ап.|1|{0} ап.|0||0||0||0|||{0} күн|1|{0} күн|0||0||0||0|||{0} сағ|1|{0} сағ|0||0||0||0|||{0} мин|1|{0} мин|0||0||0||0|||{0} с|1|{0} с|0||0||0||0|||{0} мс|1|{0} мс|0||0||0||0|||{0} жыл|1|{0} жыл|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} апта|1|{0} апта|0||0||0||0|||{0} күн|1|{0} күн|0||0||0||0|||{0} сағат|1|{0} сағат|0||0||0||0|||{0} минут|1|{0} минут|0||0||0||0|||{0} секунд|1|{0} секунд|0||0||0||0|||{0} миллисекунд|1|{0} миллисекунд|0||0||0||0|||{0} ж.|1|{0} ж.|0||0||0||0|||{0} ай|1|{0} ай|0||0||0||0|||{0} ап.|1|{0} ап.|0||0||0||0|||{0} к.|1|{0} к.|0||0||0||0|||{0} сағ|1|{0} сағ|0||0||0||0|||{0} мин|1|{0} мин|0||0||0||0|||{0} с|1|{0} с|0||0||0||0|||{0} мс|1|{0} мс|0||0||0||0|||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
