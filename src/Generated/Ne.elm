module Generated.Ne exposing (ne, ne_IN)

{-|

@docs ne, ne_IN

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ne"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : yy/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ne : Internal.Locale.Locale
ne =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ne||||पूर्वाह्न|अपराह्न|9|afternoon1|अपरान्ह|afternoon2|साँझ|am|पूर्वाह्न|evening1|बेलुकी|midnight|मध्यरात|morning1|बिहान|night1|रात|noon|मध्यान्ह|pm|अपराह्न|पूर्वाह्न|अपराह्न|9|afternoon1|अपरान्ह|afternoon2|साँझ|am|पूर्वाह्न|evening1|बेलुकी|midnight|मध्यरात|morning1|बिहान|night1|रात|noon|मध्यान्ह|pm|अपराह्न|पूर्वाह्न|अपराह्न|9|afternoon1|अपरान्ह|afternoon2|साँझ|am|पूर्वाह्न|evening1|बेलुकी|midnight|मध्यरात|morning1|बिहान|night1|रात|noon|मध्यान्ह|pm|अपराह्न|yy/M/d|y MMM d|y MMMM d|y MMMM d, EEEE|जनवरी|फेब्रुअरी|मार्च|अप्रिल|मे|जुन|जुलाई|अगस्ट|सेप्टेम्बर|अक्टोबर|नोभेम्बर|डिसेम्बर|जनवरी|फेब्रुअरी|मार्च|अप्रिल|मे|जुन|जुलाई|अगस्ट|सेप्टेम्बर|अक्टोबर|नोभेम्बर|डिसेम्बर|जन|फेब|मार्च|अप्र|मे|जुन|जुल|अग|सेप|अक्टो|नोभे|डिसे|1|जनवरी|फेब्रुअरी|मार्च|अप्रिल|मे|जुन|जुलाई|अगस्ट|सेप्टेम्बर|अक्टोबर|नोभेम्बर|डिसेम्बर|जनवरी|फेब्रुअरी|मार्च|अप्रिल|मे|जुन|जुलाई|अगस्ट|सेप्टेम्बर|अक्टोबर|नोभेम्बर|डिसेम्बर|जन|फेेब|मार्च|अप्र|मे|जुन|जुल|अग|सेप|अक्टो|नोभे|डिसे|आइत|सोम|मङ्गल|बुध|बिहि|शुक्र|शनि|आइतबार|सोमबार|मङ्गलबार|बुधबार|बिहिबार|शुक्रबार|शनिबार|आ|सो|म|बु|बि|शु|श|0|ईसा पूर्व|सन्|ईसा पूर्व|सन्|ईसा पूर्व|सन्|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|MMMM d|MMMMW-count-one|MMMM को W हप्ता|MMMMW-count-other|MMMM को W हप्ता|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y को w हप्ता|yw-count-other|Y को w हप्ता|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : yy/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ne_IN : Internal.Locale.Locale
ne_IN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ne||IN||पूर्वाह्न|अपराह्न|9|afternoon1|अपरान्ह|afternoon2|साँझ|am|पूर्वाह्न|evening1|बेलुकी|midnight|मध्यरात|morning1|बिहान|night1|रात|noon|मध्यान्ह|pm|अपराह्न|पूर्वाह्न|अपराह्न|9|afternoon1|अपरान्ह|afternoon2|साँझ|am|पूर्वाह्न|evening1|बेलुकी|midnight|मध्यरात|morning1|बिहान|night1|रात|noon|मध्यान्ह|pm|अपराह्न|पूर्वाह्न|अपराह्न|9|afternoon1|अपरान्ह|afternoon2|साँझ|am|पूर्वाह्न|evening1|बेलुकी|midnight|मध्यरात|morning1|बिहान|night1|रात|noon|मध्यान्ह|pm|अपराह्न|yy/M/d|y MMM d|y MMMM d|y MMMM d, EEEE|जनवरी|फेब्रुअरी|मार्च|अप्रिल|मे|जुन|जुलाई|अगस्ट|सेप्टेम्बर|अक्टोबर|नोभेम्बर|डिसेम्बर|जनवरी|फेब्रुअरी|मार्च|अप्रिल|मे|जुन|जुलाई|अगस्ट|सेप्टेम्बर|अक्टोबर|नोभेम्बर|डिसेम्बर|जन|फेब|मार्च|अप्र|मे|जुन|जुल|अग|सेप|अक्टो|नोभे|डिसे|1|जनवरी|फेब्रुअरी|मार्च|अप्रिल|मे|जुन|जुलाई|अगस्ट|सेप्टेम्बर|अक्टोबर|नोभेम्बर|डिसेम्बर|जनवरी|फेब्रुअरी|मार्च|अप्रिल|मे|जुन|जुलाई|अगस्ट|सेप्टेम्बर|अक्टोबर|नोभेम्बर|डिसेम्बर|जन|फेेब|मार्च|अप्र|मे|जुन|जुल|अग|सेप|अक्टो|नोभे|डिसे|आइत|सोम|मङ्गल|बुध|बिहि|शुक्र|शनि|आइतबार|सोमबार|मङ्गलबार|बुधबार|बिहिबार|शुक्रबार|शनिबार|आ|सो|म|बु|बि|शु|श|0|ईसा पूर्व|सन्|ईसा पूर्व|सन्|ईसा पूर्व|सन्|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y G|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|MMMM d|MMMMW-count-one|MMMM को W हप्ता|MMMMW-count-other|MMMM को W हप्ता|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y को w हप्ता|yw-count-other|Y को w हप्ता|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
