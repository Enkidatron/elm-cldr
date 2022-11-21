module Generated.Cs exposing (cs)

{-|

@docs cs

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "cs"
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

  - Short : dd.MM.yy
  - Medium : d. M. y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
cs : Internal.Locale.Locale
cs =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "cs||||dop.|odp.|9|afternoon1|odp.|am|dop.|evening1|več.|midnight|půln.|morning1|r.|morning2|dop.|night1|v n.|noon|pol.|pm|odp.|dop.|odp.|9|afternoon1|odpoledne|am|dop.|evening1|večer|midnight|půlnoc|morning1|ráno|morning2|dopoledne|night1|v noci|noon|poledne|pm|odp.|dop.|odp.|9|afternoon1|o.|am|dop.|evening1|v.|midnight|půl.|morning1|r.|morning2|d.|night1|n.|noon|pol.|pm|odp.|dd.MM.yy|d. M. y|d. MMMM y|EEEE d. MMMM y|led|úno|bře|dub|kvě|čvn|čvc|srp|zář|říj|lis|pro|ledna|února|března|dubna|května|června|července|srpna|září|října|listopadu|prosince|1|2|3|4|5|6|7|8|9|10|11|12|1|led|úno|bře|dub|kvě|čvn|čvc|srp|zář|říj|lis|pro|leden|únor|březen|duben|květen|červen|červenec|srpen|září|říjen|listopad|prosinec|1|2|3|4|5|6|7|8|9|10|11|12|ne|po|út|st|čt|pá|so|neděle|pondělí|úterý|středa|čtvrtek|pátek|sobota|N|P|Ú|S|Č|P|S|0|př. n. l.|n. l.|před naším letopočtem|našeho letopočtu|př.n.l.|n.l.|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|58|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|d. M. y GGGGG|GyMMM|LLLL y G|GyMMMd|d. M. y G|GyMMMEd|E d. M. y G|GyMMMMd|d. MMMM y G|GyMMMMEd|E d. MMMM y G|h|h a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmv|h:mm a v|Hmv|H:mm v|M|L|Md|d. M.|MEd|E d. M.|MMM|LLL|MMMd|d. M.|MMMEd|E d. M.|MMMMd|d. MMMM|MMMMEd|E d. MMMM|MMMMW-count-one|W. 'týden' MMMM|MMMMW-count-few|W. 'týden' MMMM|MMMMW-count-many|W. 'týden' MMMM|MMMMW-count-other|W. 'týden' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d. M. y|yMEd|E d. M. y|yMMM|LLLL y|yMMMd|d. M. y|yMMMEd|E d. M. y|yMMMM|LLLL y|yMMMMd|d. MMMM y|yMMMMEd|E d. MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w. 'týden' 'roku' Y|yw-count-few|w. 'týden' 'roku' Y|yw-count-many|w. 'týden' 'roku' Y|yw-count-other|w. 'týden' 'roku' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )
