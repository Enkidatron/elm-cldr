module Generated.Lt exposing (lt)

{-|

@docs lt

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "lt"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y-MM-dd
  - Long : y 'm'. MMMM d 'd'.
  - Full : y 'm'. MMMM d 'd'., EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lt : Internal.Locale.Locale
lt =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "lt||||priešpiet|popiet|8|afternoon1|popietė|am|priešpiet|evening1|vakaras|midnight|vidurnaktis|morning1|rytas|night1|naktis|noon|perpiet|pm|popiet|priešpiet|popiet|8|afternoon1|popietė|am|priešpiet|evening1|vakaras|midnight|vidurnaktis|morning1|rytas|night1|naktis|noon|perpiet|pm|popiet|pr.\u{00A0}p.|pop.|8|afternoon1|popietė|am|pr.\u{00A0}p.|evening1|vakaras|midnight|vidurnaktis|morning1|rytas|night1|naktis|noon|perpiet|pm|pop.|y-MM-dd|y-MM-dd|y 'm'. MMMM d 'd'.|y 'm'. MMMM d 'd'., EEEE|saus.|vas.|kov.|bal.|geg.|birž.|liep.|rugp.|rugs.|spal.|lapkr.|gruod.|sausio|vasario|kovo|balandžio|gegužės|birželio|liepos|rugpjūčio|rugsėjo|spalio|lapkričio|gruodžio|S|V|K|B|G|B|L|R|R|S|L|G|1|saus.|vas.|kov.|bal.|geg.|birž.|liep.|rugp.|rugs.|spal.|lapkr.|gruod.|sausis|vasaris|kovas|balandis|gegužė|birželis|liepa|rugpjūtis|rugsėjis|spalis|lapkritis|gruodis|S|V|K|B|G|B|L|R|R|S|L|G|sk|pr|an|tr|kt|pn|št|sekmadienis|pirmadienis|antradienis|trečiadienis|ketvirtadienis|penktadienis|šeštadienis|S|P|A|T|K|P|Š|0|pr. Kr.|po Kr.|prieš Kristų|po Kristaus|pr. Kr.|po Kr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|dd|E|ccc|EBhm|h:mm B, E|EBhms|h:mm:ss B, E|Ed|d, E|Ehm|hh:mm a, E|EHm|HH:mm, E|Ehms|hh:mm:ss a, E|EHms|HH:mm:ss, E|Gy|y 'm'. G|GyMd|GGGGG y-MM-dd|GyMMM|y-MM G|GyMMMd|y-MM-dd G|GyMMMEd|y-MM-dd G, E|GyMMMM|y 'm'. G, LLLL|GyMMMMd|y 'm'. G MMMM d 'd'.|GyMMMMEd|y 'm'. G MMMM d 'd'., E|h|hh a|H|HH|hm|hh:mm a|Hm|HH:mm|hms|hh:mm:ss a|Hms|HH:mm:ss|hmsv|hh:mm:ss a; v|Hmsv|HH:mm:ss; v|hmv|hh:mm a; v|Hmv|HH:mm; v|M|MM|Md|MM-d|MEd|MM-dd, E|MMdd|MM-dd|MMM|MM|MMMd|MM-dd|MMMEd|MM-dd, E|MMMM|LLLL|MMMMd|MMMM d 'd'.|MMMMEd|MMMM d 'd'., E|MMMMW-count-one|MMMM W 'sav'.|MMMMW-count-few|MMMM W 'sav'.|MMMMW-count-many|MMMM W 'sav'.|MMMMW-count-other|MMMM W 'sav'.|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y-MM|yMMMd|y-MM-dd|yMMMEd|y-MM-dd, E|yMMMM|y 'm'. LLLL|yMMMMd|y 'm'. MMMM d 'd'.|yMMMMEd|y 'm'. MMMM d 'd'., E|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y w 'sav'.|yw-count-few|Y w 'sav'.|yw-count-many|Y w 'sav'.|yw-count-other|Y w 'sav'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
