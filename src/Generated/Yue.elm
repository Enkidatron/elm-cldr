module Generated.Yue exposing (yue, yue_Hans, yue_Hant)

{-|

@docs yue, yue_Hans, yue_Hant

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "yue"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 8, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 8, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 5, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日 EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
yue : Internal.Locale.Locale
yue =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "yue||||上午|下午|9|afternoon1|中午|afternoon2|下晝|am|上午|evening1|夜晚|midnight|午夜|morning1|清晨|morning2|朝早|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下晝|am|上午|evening1|夜晚|midnight|午夜|morning1|清晨|morning2|朝早|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下晝|am|上午|evening1|夜晚|midnight|午夜|morning1|清晨|morning2|朝早|night1|凌晨|pm|下午|y/M/d|y年M月d日|y年M月d日|y年M月d日 EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1|2|3|4|5|6|7|8|9|10|11|12|0|星期日|星期一|星期二|星期三|星期四|星期五|星期六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|西元前|西元|西元前|西元|西元前|西元|ah:mm|ah:mm:ss|ah:mm:ss [z]|ah:mm:ss [zzzz]|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|Bh時|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|E Bh:mm|EBhms|E Bh:mm:ss|Ed|d E|Ehm|E ah:mm|EHm|E HH:mm|Ehms|E ah:mm:ss|EHms|E HH:mm:ss|Gy|Gy年|GyMd|GGGGG y-MM-dd|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日 E|h|ah時|H|H時|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|ah:mm:ss [v]|Hmsv|HH:mm:ss [v]|hmv|ah:mm [v]|Hmv|HH:mm [v]|M|M月|Md|M/d|MEd|M/d（E）|MMdd|MM/dd|MMM|LLL|MMMd|M月d日|MMMEd|M月d日 E|MMMMd|M月d日|MMMMW-count-other|M月第W個星期|ms|mm:ss|y|y年|yM|y/M|yMd|y/M/d|yMEd|y/M/d（E）|yMM|y/MM|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日 E|yMMMM|y年M月|yQQQ|y年QQQ|yQQQQ|y年QQQQ|yw-count-other|Y年第w個星期|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|￦|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
yue_Hans : Internal.Locale.Locale
yue_Hans =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "yue|Hans|||上午|下午|9|afternoon1|中午|afternoon2|下昼|am|上午|evening1|夜晚|midnight|午夜|morning1|清晨|morning2|朝早|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下昼|am|上午|evening1|夜晚|midnight|午夜|morning1|清晨|morning2|朝早|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下昼|am|上午|evening1|夜晚|midnight|午夜|morning1|清晨|morning2|朝早|night1|凌晨|pm|下午|y/M/d|y年M月d日|y年M月d日|y年M月d日EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|一月|二月|三月|四月|五月|六月|七月|八月|九月|十月|十一月|十二月|1|2|3|4|5|6|7|8|9|10|11|12|0|周日|周一|周二|周三|周四|周五|周六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|西元前|西元|西元前|西元|西元前|西元|HH:mm|HH:mm:ss|z HH:mm:ss|zzzz HH:mm:ss|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|Bh时|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|E Bh:mm|EBhms|E Bh:mm:ss|Ed|d日E|Ehm|Eah:mm|EHm|EHH:mm|Ehms|Eah:mm:ss|EHms|EHH:mm:ss|Gy|Gy年|GyMd|GGGGG y-MM-dd|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日E|h|ah时|H|H时|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|v ah:mm:ss|Hmsv|v HH:mm:ss|hmv|v ah:mm|Hmv|v HH:mm|M|M月|Md|M/d|MEd|M/dE|MMdd|MM/dd|MMM|LLL|MMMd|M月d日|MMMEd|M月d日E|MMMMd|M月d日|MMMMW-count-other|M月第W个星期|ms|mm:ss|y|y年|yM|y年M月|yMd|y/M/d|yMEd|y/M/dE|yMM|y年M月|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日E|yMMMM|y年M月|yQQQ|y年QQQ|yQQQQ|y年QQQQ|yw-count-other|Y年第w个星期|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|￥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|￦|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日 EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
yue_Hant : Internal.Locale.Locale
yue_Hant =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "yue|Hant|||上午|下午|9|afternoon1|中午|afternoon2|下晝|am|上午|evening1|夜晚|midnight|午夜|morning1|清晨|morning2|朝早|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下晝|am|上午|evening1|夜晚|midnight|午夜|morning1|清晨|morning2|朝早|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下晝|am|上午|evening1|夜晚|midnight|午夜|morning1|清晨|morning2|朝早|night1|凌晨|pm|下午|y/M/d|y年M月d日|y年M月d日|y年M月d日 EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1|2|3|4|5|6|7|8|9|10|11|12|0|星期日|星期一|星期二|星期三|星期四|星期五|星期六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|西元前|西元|西元前|西元|西元前|西元|ah:mm|ah:mm:ss|ah:mm:ss [z]|ah:mm:ss [zzzz]|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|Bh時|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|E Bh:mm|EBhms|E Bh:mm:ss|Ed|d E|Ehm|E ah:mm|EHm|E HH:mm|Ehms|E ah:mm:ss|EHms|E HH:mm:ss|Gy|Gy年|GyMd|GGGGG y-MM-dd|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日 E|h|ah時|H|H時|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|ah:mm:ss [v]|Hmsv|HH:mm:ss [v]|hmv|ah:mm [v]|Hmv|HH:mm [v]|M|M月|Md|M/d|MEd|M/d（E）|MMdd|MM/dd|MMM|LLL|MMMd|M月d日|MMMEd|M月d日 E|MMMMd|M月d日|MMMMW-count-other|M月第W個星期|ms|mm:ss|y|y年|yM|y/M|yMd|y/M/d|yMEd|y/M/d（E）|yMM|y/MM|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日 E|yMMMM|y年M月|yQQQ|y年QQQ|yQQQQ|y年QQQQ|yw-count-other|Y年第w個星期|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|￦|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|XXX|ZAR|R|ZMW|ZK|"
        )
