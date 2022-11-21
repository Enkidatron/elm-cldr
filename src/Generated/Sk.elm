module Generated.Sk exposing (sk)

{-|

@docs sk

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "sk"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 9, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 9, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d. M. y
  - Medium : d. M. y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
sk : Internal.Locale.Locale
sk =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sk||||AM|PM|9|afternoon1|popol.|am|AM|evening1|večer|midnight|o poln.|morning1|ráno|morning2|dopol.|night1|v noci|noon|napol.|pm|PM|AM|PM|9|afternoon1|popoludní|am|AM|evening1|večer|midnight|o polnoci|morning1|ráno|morning2|dopoludnia|night1|v noci|noon|napoludnie|pm|PM|AM|PM|9|afternoon1|pop.|am|AM|evening1|več.|midnight|o poln.|morning1|ráno|morning2|dop.|night1|v n.|noon|nap.|pm|PM|d. M. y|d. M. y|d. MMMM y|EEEE d. MMMM y|jan|feb|mar|apr|máj|jún|júl|aug|sep|okt|nov|dec|januára|februára|marca|apríla|mája|júna|júla|augusta|septembra|októbra|novembra|decembra|j|f|m|a|m|j|j|a|s|o|n|d|1|jan|feb|mar|apr|máj|jún|júl|aug|sep|okt|nov|dec|január|február|marec|apríl|máj|jún|júl|august|september|október|november|december|j|f|m|a|m|j|j|a|s|o|n|d|ne|po|ut|st|št|pi|so|nedeľa|pondelok|utorok|streda|štvrtok|piatok|sobota|n|p|u|s|š|p|s|0|pred Kr.|po Kr.|pred Kristom|po Kristovi|pred Kr.|po Kr.|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d. M. y GGGGG|GyMMM|LLLL y G|GyMMMd|d. M. y G|GyMMMEd|E d. M. y G|GyMMMMd|d. M. y G|h|h a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmv|h:mm a v|Hmv|H:mm v|M|L.|Md|d. M.|MEd|E d. M.|MMM|LLL|MMMd|d. M.|MMMEd|E d. M.|MMMMd|d. MMMM|MMMMEd|E d. MMMM|MMMMW-count-one|W. 'týždeň' MMMM|MMMMW-count-few|W. 'týždeň' MMMM|MMMMW-count-many|W. 'týždeň' MMMM|MMMMW-count-other|W. 'týždeň' MMMM|mmss|mm:ss|ms|mm:ss|y|y|yM|M/y|yMd|d. M. y|yMEd|E d. M. y|yMMM|M/y|yMMMd|d. M. y|yMMMEd|E d. M. y|yMMMM|LLLL y|yMMMMd|d. MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w. 'týždeň' 'roka' Y|yw-count-few|w. 'týždeň' 'roka' Y|yw-count-many|w. 'týždeň' 'roka' Y|yw-count-other|w. 'týždeň' 'roka' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )
