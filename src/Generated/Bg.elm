module Generated.Bg exposing (bg)

{-|

@docs bg

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
        [ ( "bg"
          , [ Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 11, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 11, 0 ) ( 14, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 4, 0 ) "night1"
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

  - Short : d.MM.yy 'г'.
  - Medium : d.MM.y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss 'ч'. z
  - Full : H:mm:ss 'ч'. zzzz

-}
bg : Internal.Locale.Locale
bg =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "bg||||am|pm|8|afternoon1|следобед|am|am|evening1|вечерта|midnight|полунощ|morning1|сутринта|morning2|на обяд|night1|през нощта|pm|pm|пр.об.|сл.об.|8|afternoon1|следобед|am|пр.об.|evening1|вечерта|midnight|полунощ|morning1|сутринта|morning2|на обяд|night1|през нощта|pm|сл.об.|am|pm|8|afternoon1|следобед|am|am|evening1|вечерта|midnight|полунощ|morning1|сутринта|morning2|на обяд|night1|през нощта|pm|pm|d.MM.yy\u{202F}'г'.|d.MM.y\u{202F}'г'.|d MMMM y\u{202F}'г'.|EEEE, d MMMM y\u{202F}'г'.|яну|фев|март|апр|май|юни|юли|авг|сеп|окт|ное|дек|януари|февруари|март|април|май|юни|юли|август|септември|октомври|ноември|декември|я|ф|м|а|м|ю|ю|а|с|о|н|д|0|нд|пн|вт|ср|чт|пт|сб|неделя|понеделник|вторник|сряда|четвъртък|петък|събота|н|п|в|с|ч|п|с|0|пр.Хр.|сл.Хр.|преди Христа|след Христа|пр.Хр.|сл.Хр.|H:mm|H:mm:ss|H:mm:ss 'ч'. z|H:mm:ss 'ч'. zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h 'ч'. B|Bhm|h:mm 'ч'. B|Bhms|h:mm:ss 'ч'. B|d|d|E|ccc|EBhm|E, h:mm 'ч'. B|EBhms|E, h:mm:ss 'ч'. B|Ed|E, d|Ehm|E, h:mm 'ч'. a|EHm|E, HH:mm 'ч'.|Ehms|E, h:mm:ss 'ч'. a|EHms|E, HH:mm:ss 'ч'.|Gy|y\u{202F}'г'. G|GyMd|dd.MM.y\u{202F}'г'. GGGGG|GyMMM|MM.y\u{202F}'г'. G|GyMMMd|d.MM.y\u{202F}'г'. G|GyMMMEd|E, d.MM.y\u{202F}'г'. G|GyMMMM|MMMM y\u{202F}'г'. G|GyMMMMd|d MMMM y\u{202F}'г'. G|GyMMMMEd|E, d MMMM y\u{202F}'г'. G|h|h 'ч'. a|H|HH 'ч'.|hm|h:mm 'ч'. a|Hm|HH:mm 'ч'.|hms|h:mm:ss 'ч'. a|Hms|HH:mm:ss 'ч'.|hmsv|h:mm:ss 'ч'. a v|Hmsv|HH:mm:ss 'ч'. v|hmv|h:mm 'ч'. a v|Hmv|HH:mm 'ч'. v|M|L|Md|d.MM|MEd|E, d.MM|MMM|MM|MMMd|d.MM|MMMEd|E, d.MM|MMMM|LLLL|MMMMd|d MMMM|MMMMdd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'седмица' W 'от' MMMM|MMMMW-count-other|'седмица' W 'от' MMMM|ms|m:ss|y|y\u{202F}'г'.|yM|MM.y\u{202F}'г'.|yMd|d.MM.y\u{202F}'г'.|yMEd|E, d.MM.y\u{202F}'г'.|yMMM|MM.y\u{202F}'г'.|yMMMd|d.MM.y\u{202F}'г'.|yMMMEd|E, d.MM.y\u{202F}'г'.|yMMMM|MMMM y\u{202F}'г'.|yMMMMd|d MMMM y\u{202F}'г'.|yMMMMEd|E, d MMMM y\u{202F}'г'.|yQQQ|QQQ y\u{202F}'г'.|yQQQQ|QQQQ y\u{202F}'г'.|yw-count-one|'седмица' w 'от' Y 'г'.|yw-count-other|'седмица' w 'от' Y 'г'.|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|107|AFN|Af|AMD|AMD|AOA|Kz|ARS|ARS|AUD|AUD|AZN|AZN|BAM|KM|BBD|BBD|BDT|BDT|BGN|лв.|BMD|BMD|BND|BND|BOB|Bs|BRL|BRL|BSD|BSD|BWP|P|BZD|BZD|CAD|CAD|CLP|CLP|CNY|CNY|COP|COP|CRC|CRC|CUC|$|CUP|CUP|CZK|Kč|DKK|kr|DOP|DOP|EGP|E£|ESP|₧|EUR|€|FJD|FJD|FKP|FKP|GBP|GBP|GEL|₾|GHS|GHS|GIP|GIP|GNF|FG|GTQ|Q|GYD|GYD|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|JMD|JPY|JPY|KGS|⃀|KHR|KHR|KMF|CF|KPW|₩|KRW|KRW|KYD|KYD|KZT|KZT|LAK|LAK|LBP|L£|LKR|Rs|LRD|LRD|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|MNT|MUR|Rs|MXN|MXN|MYR|RM|NAD|NAD|NGN|NGN|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zł|PYG|PYG|RON|RON|RUB|₽|RWF|RF|SBD|SBD|SEK|kr|SGD|SGD|SHP|£|SRD|SRD|SSP|SSP|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|TRY|TTD|TTD|TWD|TWD|UAH|UAH|USD|щ.д.|UYU|UYU|VEF|Bs|VND|VND|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} год.|1|{0} год.|0||0||0||0|||{0} мес.|1|{0} мес.|0||0||0||0|||{0} седм.|1|{0} седм.|0||0||0||0|||{0} д|1|{0} д|0||0||0||0|||{0} ч|1|{0} ч|0||0||0||0|||{0} мин|1|{0} мин|0||0||0||0|||{0} сек|1|{0} сек|0||0||0||0|||{0} мсек|1|{0} мсек|0||0||0||0|||{0} години|1|{0} година|0||0||0||0|||{0} месеца|1|{0} месец|0||0||0||0|||{0} седмици|1|{0} седмица|0||0||0||0|||{0} дни|1|{0} ден|0||0||0||0|||{0} часа|1|{0} час|0||0||0||0|||{0} минути|1|{0} минута|0||0||0||0|||{0} секунди|1|{0} секунда|0||0||0||0|||{0} милисекунди|1|{0} милисекунда|0||0||0||0|||{0} г.|1|{0} г.|0||0||0||0|||{0} мес.|1|{0} мес.|0||0||0||0|||{0} седм.|1|{0} седм.|0||0||0||0|||{0} д|1|{0} д|0||0||0||0|||{0} ч|1|{0} ч|0||0||0||0|||{0} мин|1|{0} мин|0||0||0||0|||{0} с|1|{0} с|0||0||0||0|||{0} мсек|1|{0} мсек|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0} и {1}|{0} и {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} и {1}|"
        )
