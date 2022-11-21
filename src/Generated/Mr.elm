module Generated.Mr exposing (mr)

{-|

@docs mr

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "mr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening2"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
mr : Internal.Locale.Locale
mr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "mr||||AM|PM|10|afternoon1|दुपार|am|AM|evening1|संध्याकाळ|evening2|सायंकाळ|midnight|मध्यरात्र|morning1|पहाट|morning2|सकाळ|night1|रात्र|noon|मध्यान्ह|pm|PM|AM|PM|10|afternoon1|दुपार|am|AM|evening1|संध्याकाळ|evening2|सायंकाळ|midnight|मध्यरात्र|morning1|पहाट|morning2|सकाळ|night1|रात्र|noon|मध्यान्ह|pm|PM|a|p|10|afternoon1|दु|am|a|evening1|सं|evening2|सा|midnight|म.रा.|morning1|प|morning2|स|night1|रा|noon|दु|pm|p|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|जाने|फेब्रु|मार्च|एप्रि|मे|जून|जुलै|ऑग|सप्टें|ऑक्टो|नोव्हें|डिसें|जानेवारी|फेब्रुवारी|मार्च|एप्रिल|मे|जून|जुलै|ऑगस्ट|सप्टेंबर|ऑक्टोबर|नोव्हेंबर|डिसेंबर|जा|फे|मा|ए|मे|जू|जु|ऑ|स|ऑ|नो|डि|0|रवि|सोम|मंगळ|बुध|गुरु|शुक्र|शनि|रविवार|सोमवार|मंगळवार|बुधवार|गुरुवार|शुक्रवार|शनिवार|र|सो|मं|बु|गु|शु|श|0|इ. स. पू.|इ. स.|ईसवीसनपूर्व|ईसवीसन|इ. स. पू.|इ. स.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} रोजी {0}|{1} रोजी {0}|51|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y GGGGG|GyMMM|MMM G y|GyMMMd|d MMM, G y|GyMMMEd|E, d MMM, G y|h|h a|H|HH|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|MMMM चा W रा आठवडा|MMMMW-count-other|MMMM चा W रा आठवडा|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d, MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y चा w रा आठवडा|yw-count-other|Y चा w रा आठवडा|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
