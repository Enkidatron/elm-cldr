module Generated.Mn exposing (mn)

{-|

@docs mn

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "mn"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : y.MM.dd
  - Medium : y 'оны' MMM'ын' d
  - Long : y 'оны' MMMM'ын' d
  - Full : y 'оны' MMMM'ын' d, EEEE 'гараг'

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss (z)
  - Full : HH:mm:ss (zzzz)

-}
mn : Internal.Locale.Locale
mn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "mn||||ү.ө.|ү.х.|8|afternoon1|өдөр|am|ү.ө.|evening1|орой|midnight|шөнө дунд|morning1|өглөө|night1|шөнө|noon|үд дунд|pm|ү.х.|ү.ө.|ү.х.|8|afternoon1|өдөр|am|ү.ө.|evening1|орой|midnight|шөнө дунд|morning1|өглөө|night1|шөнө|noon|үд дунд|pm|ү.х.|ү.ө.|ү.х.|8|afternoon1|өдөр|am|ү.ө.|evening1|орой|midnight|шөнө дунд|morning1|өглөө|night1|шөнө|noon|үд дунд|pm|ү.х.|y.MM.dd|y\u{202F}'оны' MMM'ын' d|y\u{202F}'оны' MMMM'ын' d|y\u{202F}'оны' MMMM'ын' d, EEEE 'гараг'|1-р сар|2-р сар|3-р сар|4-р сар|5-р сар|6-р сар|7-р сар|8-р сар|9-р сар|10-р сар|11-р сар|12-р сар|нэгдүгээр сар|хоёрдугаар сар|гуравдугаар сар|дөрөвдүгээр сар|тавдугаар сар|зургаадугаар сар|долоодугаар сар|наймдугаар сар|есдүгээр сар|аравдугаар сар|арван нэгдүгээр сар|арван хоёрдугаар сар|I|II|III|IV|V|VI|VII|VIII|IX|X|XI|XII|1|1-р сар|2-р сар|3-р сар|4-р сар|5-р сар|6-р сар|7-р сар|8-р сар|9-р сар|10-р сар|11-р сар|12-р сар|Нэгдүгээр сар|Хоёрдугаар сар|Гуравдугаар сар|Дөрөвдүгээр сар|Тавдугаар сар|Зургаадугаар сар|Долоодугаар сар|Наймдугаар сар|Есдүгээр сар|Аравдугаар сар|Арван нэгдүгээр сар|Арван хоёрдугаар сар|I|II|III|IV|V|VI|VII|VIII|IX|X|XI|XII|Ня|Да|Мя|Лх|Пү|Ба|Бя|ням|даваа|мягмар|лхагва|пүрэв|баасан|бямба|Ня|Да|Мя|Лх|Пү|Ба|Бя|1|Ня|Да|Мя|Лх|Пү|Ба|Бя|Ням|Даваа|Мягмар|Лхагва|Пүрэв|Баасан|Бямба|Ня|Да|Мя|Лх|Пү|Ба|Бя|МЭӨ|МЭ|манай эриний өмнөх|манай эриний|МЭӨ|МЭ|HH:mm|HH:mm:ss|HH:mm:ss (z)|HH:mm:ss (zzzz)|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|B h 'ц'|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E. B h:mm|EBhms|E. B h:mm:ss|Ed|dd. E|Ehm|E. h:mm\u{202F}a|EHm|E. HH:mm|Ehms|E. h:mm:ss\u{202F}a|EHms|E. HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y\u{202F}'оны' MMM|GyMMMd|G y\u{202F}'оны' MMM'ын' d|GyMMMEd|G y\u{202F}'оны' MMM'ын' d. E|h|h 'ц' a|H|HH 'ц'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a (v)|Hmsv|HH:mm:ss (v)|hmv|h:mm\u{202F}a (v)|Hmv|HH:mm (v)|M|LLLLL|Md|MMMMM/dd|MEd|MMMMM/dd. E|MMM|LLL|MMMd|MMM'ын' d|MMMEd|MMM'ын' d. E|MMMMd|MMMM'ын' d|MMMMW-count-one|MMMM'ын' W-'р' 'долоо' 'хоног'|MMMMW-count-other|MMMM'ын' W-'р' 'долоо' 'хоног'|ms|mm:ss|y|y|yM|y MMMMM|yMd|y.MM.dd|yMEd|y.MM.dd. E|yMMM|y\u{202F}'оны' MMM|yMMMd|y\u{202F}'оны' MMM'ын' d|yMMMEd|y\u{202F}'оны' MMM'ын' d. E|yMMMM|y\u{202F}'оны' MMMM|yQQQ|y\u{202F}'оны' QQQ|yQQQQ|y\u{202F}'оны' QQQQ|yw-count-one|Y 'оны' w-'р' 'долоо' 'хоног'|yw-count-other|Y 'оны' w-'р' 'долоо' 'хоног'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|кр|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|"
        )
