module Generated.Pa exposing (pa, pa_Guru)

{-|

@docs pa, pa_Guru

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "pa"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa : Internal.Locale.Locale
pa =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "pa||||ਪੂ.ਦੁ.|ਬਾ.ਦੁ.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਪੂ.ਦੁ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਬਾ.ਦੁ.|ਪੂ.ਦੁ.|ਬਾ.ਦੁ.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਪੂ.ਦੁ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਬਾ.ਦੁ.|ਸ.|ਸ਼.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਸ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਸ਼.|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|ਜਨ|ਫ਼ਰ|ਮਾਰਚ|ਅਪ੍ਰੈ|ਮਈ|ਜੂਨ|ਜੁਲਾ|ਅਗ|ਸਤੰ|ਅਕਤੂ|ਨਵੰ|ਦਸੰ|ਜਨਵਰੀ|ਫ਼ਰਵਰੀ|ਮਾਰਚ|ਅਪ੍ਰੈਲ|ਮਈ|ਜੂਨ|ਜੁਲਾਈ|ਅਗਸਤ|ਸਤੰਬਰ|ਅਕਤੂਬਰ|ਨਵੰਬਰ|ਦਸੰਬਰ|ਜ|ਫ਼|ਮਾ|ਅ|ਮ|ਜੂ|ਜੁ|ਅ|ਸ|ਅ|ਨ|ਦ|0|ਐਤ|ਸੋਮ|ਮੰਗਲ|ਬੁੱਧ|ਵੀਰ|ਸ਼ੁੱਕਰ|ਸ਼ਨਿੱਚਰ|ਐਤਵਾਰ|ਸੋਮਵਾਰ|ਮੰਗਲਵਾਰ|ਬੁੱਧਵਾਰ|ਵੀਰਵਾਰ|ਸ਼ੁੱਕਰਵਾਰ|ਸ਼ਨਿੱਚਰਵਾਰ|ਐ|ਸੋ|ਮੰ|ਬੁੱ|ਵੀ|ਸ਼ੁੱ|ਸ਼|0|ਈ. ਪੂ.|ਸੰਨ|ਈਸਵੀ ਪੂਰਵ|ਈਸਵੀ ਸੰਨ|ਈ.ਪੂ.|ਸੰਨ|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/GGGGG y|GyMMM|MMM, G y|GyMMMd|d MMM, G y|GyMMMEd|E d MMM, G y|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, dd-MM.|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|MMMM d|MMMMW-count-one|MMMM ਦਾ W ਹਫ਼ਤਾ|MMMMW-count-other|MMMM ਦਾ W ਹਫ਼ਤਾ|mmss|mm:ss|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ਦਾ w ਹਫ਼ਤਾ|yw-count-other|Y ਦਾ w ਹਫ਼ਤਾ|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa_Guru : Internal.Locale.Locale
pa_Guru =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "pa|Guru|||ਪੂ.ਦੁ.|ਬਾ.ਦੁ.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਪੂ.ਦੁ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਬਾ.ਦੁ.|ਪੂ.ਦੁ.|ਬਾ.ਦੁ.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਪੂ.ਦੁ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਬਾ.ਦੁ.|ਸ.|ਸ਼.|7|afternoon1|ਦੁਪਹਿਰੇ|am|ਸ.|evening1|ਸ਼ਾਮੀਂ|midnight|ਅੱਧੀ ਰਾਤ|morning1|ਸਵੇਰੇ|night1|ਰਾਤੀਂ|pm|ਸ਼.|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|ਜਨ|ਫ਼ਰ|ਮਾਰਚ|ਅਪ੍ਰੈ|ਮਈ|ਜੂਨ|ਜੁਲਾ|ਅਗ|ਸਤੰ|ਅਕਤੂ|ਨਵੰ|ਦਸੰ|ਜਨਵਰੀ|ਫ਼ਰਵਰੀ|ਮਾਰਚ|ਅਪ੍ਰੈਲ|ਮਈ|ਜੂਨ|ਜੁਲਾਈ|ਅਗਸਤ|ਸਤੰਬਰ|ਅਕਤੂਬਰ|ਨਵੰਬਰ|ਦਸੰਬਰ|ਜ|ਫ਼|ਮਾ|ਅ|ਮ|ਜੂ|ਜੁ|ਅ|ਸ|ਅ|ਨ|ਦ|0|ਐਤ|ਸੋਮ|ਮੰਗਲ|ਬੁੱਧ|ਵੀਰ|ਸ਼ੁੱਕਰ|ਸ਼ਨਿੱਚਰ|ਐਤਵਾਰ|ਸੋਮਵਾਰ|ਮੰਗਲਵਾਰ|ਬੁੱਧਵਾਰ|ਵੀਰਵਾਰ|ਸ਼ੁੱਕਰਵਾਰ|ਸ਼ਨਿੱਚਰਵਾਰ|ਐ|ਸੋ|ਮੰ|ਬੁੱ|ਵੀ|ਸ਼ੁੱ|ਸ਼|0|ਈ. ਪੂ.|ਸੰਨ|ਈਸਵੀ ਪੂਰਵ|ਈਸਵੀ ਸੰਨ|ਈ.ਪੂ.|ਸੰਨ|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/GGGGG y|GyMMM|MMM, G y|GyMMMd|d MMM, G y|GyMMMEd|E d MMM, G y|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, dd-MM.|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|MMMM d|MMMMW-count-one|MMMM ਦਾ W ਹਫ਼ਤਾ|MMMMW-count-other|MMMM ਦਾ W ਹਫ਼ਤਾ|mmss|mm:ss|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y ਦਾ w ਹਫ਼ਤਾ|yw-count-other|Y ਦਾ w ਹਫ਼ਤਾ|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
