module Generated.Ky exposing (ky)

{-|

@docs ky

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


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
            "ky||||тң|тк|8|afternoon1|түштөн кийин|am|тң|evening1|кечинде|midnight|түн ортосу|morning1|эртең менен|night1|түн ичинде|noon|чак түш|pm|тк|таңкы|түштөн кийинки|8|afternoon1|түштөн кийин|am|таңкы|evening1|кечинде|midnight|түн ортосу|morning1|эртең менен|night1|түн ичинде|noon|чак түш|pm|түштөн кийинки|тң|тк|8|afternoon1|түшт кйн|am|тң|evening1|кечк|midnight|түн орт|morning1|эртң мн|night1|түн|noon|чт|pm|тк|d/M/yy|y-'ж'., d-MMM|y-'ж'., d-MMMM|y-'ж'., d-MMMM, EEEE|янв.|фев.|мар.|апр.|май|июн.|июл.|авг.|сен.|окт.|ноя.|дек.|январь|февраль|март|апрель|май|июнь|июль|август|сентябрь|октябрь|ноябрь|декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|1|Янв|Фев|Мар|Апр|Май|Июн|Июл|Авг|Сен|Окт|Ноя|Дек|Январь|Февраль|Март|Апрель|Май|Июнь|Июль|Август|Сентябрь|Октябрь|Ноябрь|Декабрь|Я|Ф|М|А|М|И|И|А|С|О|Н|Д|жек.|дүй.|шейш.|шарш.|бейш.|жума|ишм.|жекшемби|дүйшөмбү|шейшемби|шаршемби|бейшемби|жума|ишемби|Ж|Д|Ш|Ш|Б|Ж|И|0|б.з.ч.|б.з.|биздин заманга чейин|биздин заман|б.з.ч.|б.з.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y-'ж'.|GyMd|GGGGG y-MM-dd|GyMMM|G y-'ж'. MMM|GyMMMd|G y-'ж'. d-MMM|GyMMMEd|G y-'ж'. d-MMM, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd-MM|MEd|dd-MM, E|MMM|LLL|MMMd|d-MMM|MMMEd|d-MMM, E|MMMMd|d-MMMM|MMMMW-count-one|MMMM 'айынын' W-'аптасы'|MMMMW-count-other|MMMM 'айынын' W-'аптасы'|ms|mm:ss|y|y|yM|y-MM|yMd|y-dd-MM|yMEd|y-dd-MM, E|yMMM|y-'ж'. MMM|yMMMd|y-'ж'. d-MMM|yMMMEd|y-'ж'. d-MMM, E|yMMMM|y-'ж'., MMMM|yQQQ|y-'ж'., QQQ|yQQQQ|y-'ж'., QQQQ|yw-count-one|Y-'жылдын' w-'аптасы'|yw-count-other|Y-'жылдын' w-'аптасы'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
