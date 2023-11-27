module Generated.Zh exposing (zh, zh_Hans, zh_Hans_HK, zh_Hans_MO, zh_Hans_SG, zh_Hant, zh_Hant_HK, zh_Hant_MO)

{-|

@docs zh, zh_Hans, zh_Hans_HK, zh_Hans_MO, zh_Hans_SG, zh_Hant, zh_Hant_HK, zh_Hant_MO

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "zh"
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
  - Full : y年M月d日EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
zh : Internal.Locale.Locale
zh =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "zh||||上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|清晨|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|y/M/d|y年M月d日|y年M月d日|y年M月d日EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|一月|二月|三月|四月|五月|六月|七月|八月|九月|十月|十一月|十二月|1|2|3|4|5|6|7|8|9|10|11|12|0|周日|周一|周二|周三|周四|周五|周六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|公元前|公元|公元前|公元|公元前|公元|HH:mm|HH:mm:ss|z HH:mm:ss|zzzz HH:mm:ss|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|Bh时|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|EBh:mm|EBhms|EBh:mm:ss|Ed|d日E|Ehm|Eah:mm|EHm|EHH:mm|Ehms|Eah:mm:ss|EHms|EHH:mm:ss|Gy|Gy年|GyMd|GGGGG y-MM-dd|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日E|h|ah时|H|H时|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|v ah:mm:ss|Hmsv|v HH:mm:ss|hmv|v ah:mm|Hmv|v HH:mm|M|M月|Md|M/d|MEd|M/dE|MMdd|MM/dd|MMM|LLL|MMMd|M月d日|MMMEd|M月d日E|MMMMd|M月d日|MMMMW-count-other|MMMM第W周|ms|mm:ss|y|y年|yM|y/M|yMd|y/M/d|yMEd|y/M/dE|yMEEEEd|y年M月d日EEEE|yMM|y年M月|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日E|yMMMM|y年M月|yQQQ|y年第Q季度|yQQQQ|y年第Q季度|yw-count-other|Y年第w周|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
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
zh_Hans : Internal.Locale.Locale
zh_Hans =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "zh|Hans|||上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|清晨|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|y/M/d|y年M月d日|y年M月d日|y年M月d日EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|一月|二月|三月|四月|五月|六月|七月|八月|九月|十月|十一月|十二月|1|2|3|4|5|6|7|8|9|10|11|12|0|周日|周一|周二|周三|周四|周五|周六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|公元前|公元|公元前|公元|公元前|公元|HH:mm|HH:mm:ss|z HH:mm:ss|zzzz HH:mm:ss|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|Bh时|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|EBh:mm|EBhms|EBh:mm:ss|Ed|d日E|Ehm|Eah:mm|EHm|EHH:mm|Ehms|Eah:mm:ss|EHms|EHH:mm:ss|Gy|Gy年|GyMd|GGGGG y-MM-dd|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日E|h|ah时|H|H时|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|v ah:mm:ss|Hmsv|v HH:mm:ss|hmv|v ah:mm|Hmv|v HH:mm|M|M月|Md|M/d|MEd|M/dE|MMdd|MM/dd|MMM|LLL|MMMd|M月d日|MMMEd|M月d日E|MMMMd|M月d日|MMMMW-count-other|MMMM第W周|ms|mm:ss|y|y年|yM|y/M|yMd|y/M/d|yMEd|y/M/dE|yMEEEEd|y年M月d日EEEE|yMM|y年M月|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日E|yMMMM|y年M月|yQQQ|y年第Q季度|yQQQQ|y年第Q季度|yw-count-other|Y年第w周|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : z ah:mm:ss
  - Full : zzzz ah:mm:ss

-}
zh_Hans_HK : Internal.Locale.Locale
zh_Hans_HK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "zh|Hans|HK||上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|清晨|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|d/M/yy|y年M月d日|y年M月d日|y年M月d日EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|一月|二月|三月|四月|五月|六月|七月|八月|九月|十月|十一月|十二月|1|2|3|4|5|6|7|8|9|10|11|12|0|周日|周一|周二|周三|周四|周五|周六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|公元前|公元|公元前|公元|公元前|公元|ah:mm|ah:mm:ss|z ah:mm:ss|zzzz ah:mm:ss|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|Bh时|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|EBh:mm|EBhms|EBh:mm:ss|Ed|d日E|Ehm|Eah:mm|EHm|EHH:mm|Ehms|Eah:mm:ss|EHms|EHH:mm:ss|Gy|Gy年|GyMd|GGGGG y-MM-dd|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日E|h|ah时|H|H时|HHmm|HH:mm|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|v ah:mm:ss|Hmsv|v HH:mm:ss|hmv|v ah:mm|Hmv|v HH:mm|M|M月|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|M月d日|MMMEd|M月d日E|MMMMd|M月d日|MMMMdd|M月d日|MMMMW-count-other|MMMM第W周|ms|mm:ss|y|y年|yM|M/y|yMd|d/M/y|yMEd|d/M/y（E）|yMEEEEd|y年M月d日EEEE|yMM|MM/y|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日E|yMMMM|y年M月|yQQQ|y年第Q季度|yQQQQ|y年第Q季度|yw-count-other|Y年第w周|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : z ah:mm:ss
  - Full : zzzz ah:mm:ss

-}
zh_Hans_MO : Internal.Locale.Locale
zh_Hans_MO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "zh|Hans|MO||上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|清晨|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|d/M/yy|y年M月d日|y年M月d日|y年M月d日EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|一月|二月|三月|四月|五月|六月|七月|八月|九月|十月|十一月|十二月|1|2|3|4|5|6|7|8|9|10|11|12|0|周日|周一|周二|周三|周四|周五|周六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|公元前|公元|公元前|公元|公元前|公元|ah:mm|ah:mm:ss|z ah:mm:ss|zzzz ah:mm:ss|{1} {0}|{1} {0}|{1} {0}|{1} {0}|51|Bh|Bh时|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|EBh:mm|EBhms|EBh:mm:ss|Ed|d日E|Ehm|Eah:mm|EHm|EHH:mm|Ehms|Eah:mm:ss|EHms|EHH:mm:ss|Gy|Gy年|GyMd|GGGGG y-MM-dd|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日E|h|ah时|H|H时|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|v ah:mm:ss|Hmsv|v HH:mm:ss|hmv|v ah:mm|Hmv|v HH:mm|M|M月|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|M月d日|MMMEd|M月d日E|MMMMd|M月d日|MMMMdd|M月d日|MMMMW-count-other|MMMM第W周|ms|mm:ss|y|y年|yM|y/M|yMd|y年M月d日|yMEd|y年M月d日，E|yMEEEEd|y年M月d日EEEE|yMM|y年M月|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日E|yMMMM|y年M月|yQQQ|y年第Q季度|yQQQQ|y年第Q季度|yw-count-other|Y年第w周|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : z ah:mm:ss
  - Full : zzzz ah:mm:ss

-}
zh_Hans_SG : Internal.Locale.Locale
zh_Hans_SG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "zh|Hans|SG||上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|清晨|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|dd/MM/yy|y年M月d日|y年M月d日|y年M月d日EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|一月|二月|三月|四月|五月|六月|七月|八月|九月|十月|十一月|十二月|1|2|3|4|5|6|7|8|9|10|11|12|0|周日|周一|周二|周三|周四|周五|周六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|公元前|公元|公元前|公元|公元前|公元|ah:mm|ah:mm:ss|z ah:mm:ss|zzzz ah:mm:ss|{1} {0}|{1} {0}|{1} {0}|{1} {0}|51|Bh|Bh时|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|EBh:mm|EBhms|EBh:mm:ss|Ed|d日E|Ehm|Eah:mm|EHm|EHH:mm|Ehms|Eah:mm:ss|EHms|EHH:mm:ss|Gy|Gy年|GyMd|GGGGG y-MM-dd|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日E|h|ah时|H|H时|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|v ah:mm:ss|Hmsv|v HH:mm:ss|hmv|v ah:mm|Hmv|v HH:mm|M|M月|Md|M-d|MEd|M-dE|MMdd|MM-dd|MMM|M月|MMMd|M月d日|MMMEd|M月d日E|MMMMd|M月d日|MMMMdd|M月d日|MMMMW-count-other|MMMM第W周|ms|mm:ss|y|y年|yM|y/M|yMd|y年M月d日|yMEd|y年M月d日，E|yMEEEEd|y年M月d日EEEE|yMM|y年M月|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日E|yMMMM|y年M月|yQQQ|y年第Q季度|yQQQQ|y年第Q季度|yw-count-other|Y年第w周|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日 EEEE

Time format strings:

  - Short : Bh:mm
  - Medium : Bh:mm:ss
  - Long : Bh:mm:ss [z]
  - Full : Bh:mm:ss [zzzz]

-}
zh_Hant : Internal.Locale.Locale
zh_Hant =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "zh|Hant|||上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|清晨|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|清晨|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|清晨|morning2|上午|night1|凌晨|pm|下午|y/M/d|y年M月d日|y年M月d日|y年M月d日 EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1|2|3|4|5|6|7|8|9|10|11|12|0|週日|週一|週二|週三|週四|週五|週六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|西元前|西元|西元前|西元|西元前|西元|Bh:mm|Bh:mm:ss|Bh:mm:ss [z]|Bh:mm:ss [zzzz]|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|Bh時|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|E Bh:mm|EBhms|E Bh:mm:ss|Ed|d E|Ehm|E Bh:mm|EHm|E HH:mm|Ehms|E Bh:mm:ss|EHms|E HH:mm:ss|Gy|Gy年|GyMd|G y/M/d|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日 E|h|Bh時|H|H時|hm|Bh:mm|Hm|HH:mm|hms|Bh:mm:ss|Hms|HH:mm:ss|hmsv|Bh:mm:ss [v]|Hmsv|HH:mm:ss [v]|hmv|Bh:mm [v]|Hmv|HH:mm [v]|M|M月|Md|M/d|MEd|M/d（E）|MMdd|MM/dd|MMM|LLL|MMMd|M月d日|MMMEd|M月d日 E|MMMMd|M月d日|MMMMW-count-other|MMMM的第W週|ms|mm:ss|y|y年|yM|y/M|yMd|y/M/d|yMEd|y/M/d（E）|yMEEEEd|y年M月d日 EEEE|yMM|y/MM|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日 E|yMMMM|y年M月|yQQQ|y年QQQ|yQQQQ|y年QQQQ|yw-count-other|Y年的第w週|Bhmm|Bhmmss|Bhmmssz|Bhmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
zh_Hant_HK : Internal.Locale.Locale
zh_Hant_HK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "zh|Hant|HK||上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|d/M/y|y年M月d日|y年M月d日|y年M月d日EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1|2|3|4|5|6|7|8|9|10|11|12|0|週日|週一|週二|週三|週四|週五|週六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|公元前|公元|公元前|公元|公元前|公元|ah:mm|ah:mm:ss|ah:mm:ss [z]|ah:mm:ss [zzzz]|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|Bh時|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|E Bh:mm|EBhms|E Bh:mm:ss|Ed|d E|Ehm|E ah:mm|EHm|E HH:mm|Ehms|E ah:mm:ss|EHms|E HH:mm:ss|Gy|Gy年|GyMd|G y/M/d|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日E|h|ah時|H|H時|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|ah:mm:ss [v]|Hmsv|HH:mm:ss [v]|hmv|ah:mm [v]|Hmv|HH:mm [v]|M|M月|Md|d/M|MEd|d/M（E）|MMdd|dd/MM|MMM|LLL|MMMd|M月d日|MMMEd|M月d日E|MMMMd|M月d日|MMMMW-count-other|M月第W週|ms|mm:ss|y|y年|yM|M/y|yMd|d/M/y|yMEd|d/M/y（E）|yMEEEEd|y年M月d日 EEEE|yMM|MM/y|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日E|yMMMM|y年M月|yQQQ|y年QQQ|yQQQQ|y年QQQQ|yw-count-other|Y年第w週|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
zh_Hant_MO : Internal.Locale.Locale
zh_Hant_MO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "zh|Hant|MO||上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|上午|下午|9|afternoon1|中午|afternoon2|下午|am|上午|evening1|晚上|midnight|午夜|morning1|早上|morning2|上午|night1|凌晨|pm|下午|d/M/y|y年M月d日|y年M月d日|y年M月d日EEEE|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1月|2月|3月|4月|5月|6月|7月|8月|9月|10月|11月|12月|1|2|3|4|5|6|7|8|9|10|11|12|0|週日|週一|週二|週三|週四|週五|週六|星期日|星期一|星期二|星期三|星期四|星期五|星期六|日|一|二|三|四|五|六|0|公元前|公元|公元前|公元|公元前|公元|ah:mm|ah:mm:ss|ah:mm:ss [z]|ah:mm:ss [zzzz]|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|Bh時|Bhm|Bh:mm|Bhms|Bh:mm:ss|d|d日|E|ccc|EBhm|E Bh:mm|EBhms|E Bh:mm:ss|Ed|d E|Ehm|E ah:mm|EHm|E HH:mm|Ehms|E ah:mm:ss|EHms|E HH:mm:ss|Gy|Gy年|GyMd|G y/M/d|GyMMM|Gy年M月|GyMMMd|Gy年M月d日|GyMMMEd|Gy年M月d日E|h|ah時|H|H時|hm|ah:mm|Hm|HH:mm|hms|ah:mm:ss|Hms|HH:mm:ss|hmsv|ah:mm:ss [v]|Hmsv|HH:mm:ss [v]|hmv|ah:mm [v]|Hmv|HH:mm [v]|M|M月|Md|d/M|MEd|d/M（E）|MMdd|dd/MM|MMM|LLL|MMMd|M月d日|MMMEd|M月d日E|MMMMd|M月d日|MMMMW-count-other|M月第W週|ms|mm:ss|y|y年|yM|M/y|yMd|d/M/y|yMEd|d/M/y（E）|yMEEEEd|y年M月d日 EEEE|yMM|MM/y|yMMM|y年M月|yMMMd|y年M月d日|yMMMEd|y年M月d日E|yMMMM|y年M月|yQQQ|y年QQQ|yQQQQ|y年QQQQ|yw-count-other|Y年第w週|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
