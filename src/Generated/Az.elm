module Generated.Az exposing (az, az_Latn)

{-|

@docs az, az_Latn

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "az"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 17, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 17, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night2"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
az : Internal.Locale.Locale
az =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "az||||AM|PM|10|afternoon1|gündüz|am|AM|evening1|axşamüstü|midnight|gecəyarı|morning1|sübh|morning2|səhər|night1|axşam|night2|gecə|noon|günorta|pm|PM|AM|PM|10|afternoon1|gündüz|am|AM|evening1|axşamüstü|midnight|gecəyarı|morning1|sübh|morning2|səhər|night1|axşam|night2|gecə|noon|günorta|pm|PM|a|p|10|afternoon1|gündüz|am|a|evening1|axşamüstü|midnight|gecəyarı|morning1|sübh|morning2|səhər|night1|axşam|night2|gecə|noon|g|pm|p|dd.MM.yy|d MMM y|d MMMM y|d MMMM y, EEEE|yan|fev|mar|apr|may|iyn|iyl|avq|sen|okt|noy|dek|yanvar|fevral|mart|aprel|may|iyun|iyul|avqust|sentyabr|oktyabr|noyabr|dekabr|1|2|3|4|5|6|7|8|9|10|11|12|0|B.|B.e.|Ç.a.|Ç.|C.a.|C.|Ş.|bazar|bazar ertəsi|çərşənbə axşamı|çərşənbə|cümə axşamı|cümə|şənbə|7|1|2|3|4|5|6|1|B.|B.E.|Ç.A.|Ç.|C.A.|C.|Ş.|bazar|bazar ertəsi|çərşənbə axşamı|çərşənbə|cümə axşamı|cümə|şənbə|7|1|2|3|4|5|6|e.ə.|y.e.|eramızdan əvvəl|yeni era|e.ə.|y.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG d MMM y|GyMMM|G MMM y|GyMMMd|G d MMM y|GyMMMEd|G d MMM y, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|dd.MM, E|MMM|LLL|MMMd|d MMM|MMMEd|d MMM, E|MMMMd|d MMMM|MMMMW-count-one|MMMM, W 'həftə'|MMMMW-count-other|MMMM, W 'həftə'|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|dd.MM.y, E|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|d MMM y, E|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y, w 'həftə'|yw-count-other|Y, w 'həftə'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
az_Latn : Internal.Locale.Locale
az_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "az|Latn|||AM|PM|10|afternoon1|gündüz|am|AM|evening1|axşamüstü|midnight|gecəyarı|morning1|sübh|morning2|səhər|night1|axşam|night2|gecə|noon|günorta|pm|PM|AM|PM|10|afternoon1|gündüz|am|AM|evening1|axşamüstü|midnight|gecəyarı|morning1|sübh|morning2|səhər|night1|axşam|night2|gecə|noon|günorta|pm|PM|a|p|10|afternoon1|gündüz|am|a|evening1|axşamüstü|midnight|gecəyarı|morning1|sübh|morning2|səhər|night1|axşam|night2|gecə|noon|g|pm|p|dd.MM.yy|d MMM y|d MMMM y|d MMMM y, EEEE|yan|fev|mar|apr|may|iyn|iyl|avq|sen|okt|noy|dek|yanvar|fevral|mart|aprel|may|iyun|iyul|avqust|sentyabr|oktyabr|noyabr|dekabr|1|2|3|4|5|6|7|8|9|10|11|12|0|B.|B.e.|Ç.a.|Ç.|C.a.|C.|Ş.|bazar|bazar ertəsi|çərşənbə axşamı|çərşənbə|cümə axşamı|cümə|şənbə|7|1|2|3|4|5|6|1|B.|B.E.|Ç.A.|Ç.|C.A.|C.|Ş.|bazar|bazar ertəsi|çərşənbə axşamı|çərşənbə|cümə axşamı|cümə|şənbə|7|1|2|3|4|5|6|e.ə.|y.e.|eramızdan əvvəl|yeni era|e.ə.|y.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG d MMM y|GyMMM|G MMM y|GyMMMd|G d MMM y|GyMMMEd|G d MMM y, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|dd.MM, E|MMM|LLL|MMMd|d MMM|MMMEd|d MMM, E|MMMMd|d MMMM|MMMMW-count-one|MMMM, W 'həftə'|MMMMW-count-other|MMMM, W 'həftə'|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|dd.MM.y, E|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|d MMM y, E|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y, w 'həftə'|yw-count-other|Y, w 'həftə'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
