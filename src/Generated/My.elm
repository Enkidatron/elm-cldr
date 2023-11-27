module Generated.My exposing (my)

{-|

@docs my

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "my"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 19, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y၊ MMM d
  - Long : y၊ MMMM d
  - Full : y၊ MMMM d၊ EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
my : Internal.Locale.Locale
my =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "my||||နံနက်|ညနေ|8|afternoon1|နေ့လယ်|am|နံနက်|evening1|ညနေ|midnight|သန်းခေါင်ယံ|morning1|နံနက်|night1|ည|noon|မွန်းတည့်|pm|ညနေ|နံနက်|ညနေ|8|afternoon1|နေ့လယ်|am|နံနက်|evening1|ညနေ|midnight|သန်းခေါင်ယံ|morning1|နံနက်|night1|ည|noon|မွန်းတည့်|pm|ညနေ|နံနက်|ညနေ|8|afternoon1|နေ့လယ်|am|နံနက်|evening1|ညနေ|midnight|သန်းခေါင်ယံ|morning1|နံနက်|night1|ည|noon|မွန်းတည့်|pm|ညနေ|d/M/yy|y၊ MMM d|y၊ MMMM d|y၊ MMMM d၊ EEEE|ဇန်|ဖေ|မတ်|ဧ|မေ|ဇွန်|ဇူ|ဩ|စက်|အောက်|နို|ဒီ|ဇန်နဝါရီ|ဖေဖော်ဝါရီ|မတ်|ဧပြီ|မေ|ဇွန်|ဇူလိုင်|ဩဂုတ်|စက်တင်ဘာ|အောက်တိုဘာ|နိုဝင်ဘာ|ဒီဇင်ဘာ|ဇ|ဖ|မ|ဧ|မ|ဇ|ဇ|ဩ|စ|အ|န|ဒ|0|တနင်္ဂနွေ|တနင်္လာ|အင်္ဂါ|ဗုဒ္ဓဟူး|ကြာသပတေး|သောကြာ|စနေ|တနင်္ဂနွေ|တနင်္လာ|အင်္ဂါ|ဗုဒ္ဓဟူး|ကြာသပတေး|သောကြာ|စနေ|တ|တ|အ|ဗ|က|သ|စ|0|ဘီစီ|အဒေီ|ခရစ်တော် မပေါ်မီနှစ်|ခရစ်နှစ်|ဘီစီ|အဒေီ|H:mm|H:mm:ss|z HH:mm:ss|zzzz HH:mm:ss|{1} {0}|{1} {0}|{1} {0}|{1} {0}|48|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d ရက် E|Ehm|E B h:mm|EHm|E HH:mm|Ehms|E B h:mm:ss|EHms|E HH:mm:ss|Gy|G y|GyMd|G y/M/d|GyMMM|G y MMM|GyMMMd|G y၊ MMM d|GyMMMEd|G y၊ MMM d၊ E|h|B h|H|HH|hm|B h:mm|Hm|HH:mm|hms|B h:mm:ss|Hms|HH:mm:ss|hmsv|v a h:mm:ss|Hmsv|v HH:mm:ss|hmv|v a h:mm|Hmv|v HH:mm|M|L|Md|d/M|MEd|d/M၊ E|MMM|LLL|MMMd|d MMM|MMMEd|MMM d၊ E|MMMMd|MMMM d|MMMMEd|MMMM d ရက် E|MMMMW-count-other|MMMM လ W ပတ်မြောက်|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|d/M/y၊ E|yMMM|MMM y|yMMMd|y၊ MMM d|yMMMEd|y၊ MMM d၊ E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-other|Y ခု w ပတ်မြောက်|Hmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
