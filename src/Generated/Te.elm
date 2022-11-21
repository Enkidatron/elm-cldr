module Generated.Te exposing (te)

{-|

@docs te

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "te"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd-MM-yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : d, MMMM y, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
te : Internal.Locale.Locale
te =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "te||||AM|PM|7|afternoon1|మధ్యాహ్నం|am|AM|evening1|సాయంత్రం|midnight|అర్ధరాత్రి|morning1|ఉదయం|night1|రాత్రి|pm|PM|AM|PM|7|afternoon1|మధ్యాహ్నం|am|AM|evening1|సాయంత్రం|midnight|అర్ధరాత్రి|morning1|ఉదయం|night1|రాత్రి|pm|PM|ఉ|సా|7|afternoon1|మధ్యాహ్నం|am|ఉ|evening1|సాయంత్రం|midnight|అర్ధరాత్రి|morning1|ఉదయం|night1|రాత్రి|pm|సా|dd-MM-yy|d MMM, y|d MMMM, y|d, MMMM y, EEEE|జన|ఫిబ్ర|మార్చి|ఏప్రి|మే|జూన్|జులై|ఆగ|సెప్టెం|అక్టో|నవం|డిసెం|జనవరి|ఫిబ్రవరి|మార్చి|ఏప్రిల్|మే|జూన్|జులై|ఆగస్టు|సెప్టెంబర్|అక్టోబర్|నవంబర్|డిసెంబర్|జ|ఫి|మా|ఏ|మే|జూ|జు|ఆ|సె|అ|న|డి|0|ఆది|సోమ|మంగళ|బుధ|గురు|శుక్ర|శని|ఆదివారం|సోమవారం|మంగళవారం|బుధవారం|గురువారం|శుక్రవారం|శనివారం|ఆ|సో|మ|బు|గు|శు|శ|0|క్రీపూ|క్రీశ|క్రీస్తు పూర్వం|క్రీస్తు శకం|క్రీపూ|క్రీశ|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}కి|{1} {0}కి|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G MMM y|GyMMMd|G d, MMM y|GyMMMEd|G, d MMM, y, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|d/M, E|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|d MMM, E|MMMMd|d MMMM|MMMMW-count-one|MMMMలో Wవ వారం|MMMMW-count-other|MMMMలో Wవ వారం|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|d/M/y, E|yMM|MM-y|yMMM|MMM y|yMMMd|d, MMM y|yMMMEd|d MMM, y, E|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Yలో wవ వారం|yw-count-other|Yలో wవ వారం|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
