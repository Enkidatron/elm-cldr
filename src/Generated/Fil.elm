module Generated.Fil exposing (fil)

{-|

@docs fil

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "fil"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fil : Internal.Locale.Locale
fil =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "fil||||AM|PM|9|afternoon1|tanghali|am|AM|evening1|ng gabi|midnight|hatinggabi|morning1|nang umaga|morning2|madaling-araw|night1|ng gabi|noon|tanghaling-tapat|pm|PM|AM|PM|9|afternoon1|tanghali|am|AM|evening1|ng gabi|midnight|hatinggabi|morning1|nang umaga|morning2|madaling-araw|night1|ng gabi|noon|tanghaling-tapat|pm|PM|am|pm|9|afternoon1|sa hapon|am|am|evening1|sa gabi|midnight|hatinggabi|morning1|umaga|morning2|madaling-araw|night1|ng gabi|noon|tanghaling-tapat|pm|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Ene|Peb|Mar|Abr|May|Hun|Hul|Ago|Set|Okt|Nob|Dis|Enero|Pebrero|Marso|Abril|Mayo|Hunyo|Hulyo|Agosto|Setyembre|Oktubre|Nobyembre|Disyembre|Ene|Peb|Mar|Abr|May|Hun|Hul|Ago|Set|Okt|Nob|Dis|1|Ene|Peb|Mar|Abr|May|Hun|Hul|Ago|Set|Okt|Nob|Dis|Enero|Pebrero|Marso|Abril|Mayo|Hunyo|Hulyo|Agosto|Setyembre|Oktubre|Nobyembre|Disyembre|E|P|M|A|M|Hun|Hul|Ago|Set|Okt|Nob|Dis|Lin|Lun|Mar|Miy|Huw|Biy|Sab|Linggo|Lunes|Martes|Miyerkules|Huwebes|Biyernes|Sabado|Lin|Lun|Mar|Miy|Huw|Biy|Sab|0|BC|AD|Before Christ|Anno Domini|BC|AD|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E, MMMM d|MMMMW-count-one|'ika'-W 'linggo' 'ng' MMMM|MMMMW-count-other|'linggo' W 'ng' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMM|MM/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'ika'-w 'linggo' 'ng' Y|yw-count-other|'linggo' w 'ng' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
