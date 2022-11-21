module Generated.Ca exposing (ca, ca_AD, ca_ES_VALENCIA, ca_FR, ca_IT)

{-|

@docs ca, ca_AD, ca_ES_VALENCIA, ca_FR, ca_IT

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ca"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 24, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca : Internal.Locale.Locale
ca =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ca||||a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|md|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|mat.|morning2|matí|night1|nit|pm|p.\u{00A0}m.|d/M/yy|d MMM y|d MMMM 'de' y|EEEE, d MMMM 'de' y|de gen.|de febr.|de març|d’abr.|de maig|de juny|de jul.|d’ag.|de set.|d’oct.|de nov.|de des.|de gener|de febrer|de març|d’abril|de maig|de juny|de juliol|d’agost|de setembre|d’octubre|de novembre|de desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|1|gen.|febr.|març|abr.|maig|juny|jul.|ag.|set.|oct.|nov.|des.|gener|febrer|març|abril|maig|juny|juliol|agost|setembre|octubre|novembre|desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|dg.|dl.|dt.|dc.|dj.|dv.|ds.|diumenge|dilluns|dimarts|dimecres|dijous|divendres|dissabte|dg|dl|dt|dc|dj|dv|ds|0|aC|dC|abans de Crist|després de Crist|aC|dC|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss (zzzz)|{1} {0}|{1}, {0}|{1}, 'a' 'les' {0}|{1}, 'a' 'les' {0}|59|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM 'de' y G|GyMMMEd|E, d MMM 'de' y G|GyMMMM|LLLL 'de' y G|GyMMMMd|d MMMM 'de' y G|GyMMMMEd|E, d MMMM 'de' y G|h|h a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm a v|Hmv|H:mm v|hmvvvv|h:mm a (vvvv)|Hmvvvv|H:mm (vvvv)|M|L|Md|d/M|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'setmana' W MMMM|MMMMW-count-other|'setmana' W MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|LLL 'de' y|yMMMd|d MMM 'de' y|yMMMEd|E, d MMM y|yMMMM|LLLL 'de' y|yMMMMd|d MMMM 'de' y|yMMMMEd|E, d MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'setmana' w 'de' Y|yw-count-other|'setmana' w 'de' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_AD : Internal.Locale.Locale
ca_AD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ca||AD||a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|md|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|mat.|morning2|matí|night1|nit|pm|p.\u{00A0}m.|d/M/yy|d MMM y|d MMMM 'de' y|EEEE, d MMMM 'de' y|de gen.|de febr.|de març|d’abr.|de maig|de juny|de jul.|d’ag.|de set.|d’oct.|de nov.|de des.|de gener|de febrer|de març|d’abril|de maig|de juny|de juliol|d’agost|de setembre|d’octubre|de novembre|de desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|1|gen.|febr.|març|abr.|maig|juny|jul.|ag.|set.|oct.|nov.|des.|gener|febrer|març|abril|maig|juny|juliol|agost|setembre|octubre|novembre|desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|dg.|dl.|dt.|dc.|dj.|dv.|ds.|diumenge|dilluns|dimarts|dimecres|dijous|divendres|dissabte|dg|dl|dt|dc|dj|dv|ds|0|aC|dC|abans de Crist|després de Crist|aC|dC|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss (zzzz)|{1} {0}|{1}, {0}|{1}, 'a' 'les' {0}|{1}, 'a' 'les' {0}|59|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM 'de' y G|GyMMMEd|E, d MMM 'de' y G|GyMMMM|LLLL 'de' y G|GyMMMMd|d MMMM 'de' y G|GyMMMMEd|E, d MMMM 'de' y G|h|h a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm a v|Hmv|H:mm v|hmvvvv|h:mm a (vvvv)|Hmvvvv|H:mm (vvvv)|M|L|Md|d/M|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'setmana' W MMMM|MMMMW-count-other|'setmana' W MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|LLL 'de' y|yMMMd|d MMM 'de' y|yMMMEd|E, d MMM y|yMMMM|LLLL 'de' y|yMMMMd|d MMMM 'de' y|yMMMMEd|E, d MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'setmana' w 'de' Y|yw-count-other|'setmana' w 'de' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_ES_VALENCIA : Internal.Locale.Locale
ca_ES_VALENCIA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ca||ES|VALENCIA|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|md|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|mat.|morning2|matí|night1|nit|pm|p.\u{00A0}m.|d/M/yy|d MMM y|d MMMM 'de' y|EEEE, d MMMM 'de' y|de gen.|de febr.|de març|d’abr.|de maig|de juny|de jul.|d’ag.|de set.|d’oct.|de nov.|de des.|de gener|de febrer|de març|d’abril|de maig|de juny|de juliol|d’agost|de setembre|d’octubre|de novembre|de desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|1|gen.|febr.|març|abr.|maig|juny|jul.|ag.|set.|oct.|nov.|des.|gener|febrer|març|abril|maig|juny|juliol|agost|setembre|octubre|novembre|desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|dg.|dl.|dt.|dc.|dj.|dv.|ds.|diumenge|dilluns|dimarts|dimecres|dijous|divendres|dissabte|dg|dl|dt|dc|dj|dv|ds|0|aC|dC|abans de Crist|després de Crist|aC|dC|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss (zzzz)|{1} {0}|{1}, {0}|{1}, 'a' 'les' {0}|{1}, 'a' 'les' {0}|59|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM 'de' y G|GyMMMEd|E, d MMM 'de' y G|GyMMMM|LLLL 'de' y G|GyMMMMd|d MMMM 'de' y G|GyMMMMEd|E, d MMMM 'de' y G|h|h a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm a v|Hmv|H:mm v|hmvvvv|h:mm a (vvvv)|Hmvvvv|H:mm (vvvv)|M|L|Md|d/M|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'setmana' W MMMM|MMMMW-count-other|'setmana' W MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|LLL 'de' y|yMMMd|d MMM 'de' y|yMMMEd|E, d MMM y|yMMMM|LLLL 'de' y|yMMMMd|d MMMM 'de' y|yMMMMEd|E, d MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'setmana' w 'de' Y|yw-count-other|'setmana' w 'de' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_FR : Internal.Locale.Locale
ca_FR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ca||FR||a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|md|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|mat.|morning2|matí|night1|nit|pm|p.\u{00A0}m.|d/M/yy|d MMM y|d MMMM 'de' y|EEEE, d MMMM 'de' y|de gen.|de febr.|de març|d’abr.|de maig|de juny|de jul.|d’ag.|de set.|d’oct.|de nov.|de des.|de gener|de febrer|de març|d’abril|de maig|de juny|de juliol|d’agost|de setembre|d’octubre|de novembre|de desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|1|gen.|febr.|març|abr.|maig|juny|jul.|ag.|set.|oct.|nov.|des.|gener|febrer|març|abril|maig|juny|juliol|agost|setembre|octubre|novembre|desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|dg.|dl.|dt.|dc.|dj.|dv.|ds.|diumenge|dilluns|dimarts|dimecres|dijous|divendres|dissabte|dg|dl|dt|dc|dj|dv|ds|0|aC|dC|abans de Crist|després de Crist|aC|dC|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss (zzzz)|{1} {0}|{1}, {0}|{1}, 'a' 'les' {0}|{1}, 'a' 'les' {0}|59|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM 'de' y G|GyMMMEd|E, d MMM 'de' y G|GyMMMM|LLLL 'de' y G|GyMMMMd|d MMMM 'de' y G|GyMMMMEd|E, d MMMM 'de' y G|h|h a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm a v|Hmv|H:mm v|hmvvvv|h:mm a (vvvv)|Hmvvvv|H:mm (vvvv)|M|L|Md|d/M|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'setmana' W MMMM|MMMMW-count-other|'setmana' W MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|LLL 'de' y|yMMMd|d MMM 'de' y|yMMMEd|E, d MMM y|yMMMM|LLLL 'de' y|yMMMMd|d MMMM 'de' y|yMMMMEd|E, d MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'setmana' w 'de' Y|yw-count-other|'setmana' w 'de' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_IT : Internal.Locale.Locale
ca_IT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ca||IT||a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|migdia|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|matinada|morning2|matí|night1|nit|pm|p.\u{00A0}m.|a.\u{00A0}m.|p.\u{00A0}m.|9|afternoon1|md|afternoon2|tarda|am|a.\u{00A0}m.|evening1|vespre|midnight|mitjanit|morning1|mat.|morning2|matí|night1|nit|pm|p.\u{00A0}m.|d/M/yy|d MMM y|d MMMM 'de' y|EEEE, d MMMM 'de' y|de gen.|de febr.|de març|d’abr.|de maig|de juny|de jul.|d’ag.|de set.|d’oct.|de nov.|de des.|de gener|de febrer|de març|d’abril|de maig|de juny|de juliol|d’agost|de setembre|d’octubre|de novembre|de desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|1|gen.|febr.|març|abr.|maig|juny|jul.|ag.|set.|oct.|nov.|des.|gener|febrer|març|abril|maig|juny|juliol|agost|setembre|octubre|novembre|desembre|GN|FB|MÇ|AB|MG|JN|JL|AG|ST|OC|NV|DS|dg.|dl.|dt.|dc.|dj.|dv.|ds.|diumenge|dilluns|dimarts|dimecres|dijous|divendres|dissabte|dg|dl|dt|dc|dj|dv|ds|0|aC|dC|abans de Crist|després de Crist|aC|dC|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss (zzzz)|{1} {0}|{1}, {0}|{1}, 'a' 'les' {0}|{1}, 'a' 'les' {0}|59|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM 'de' y G|GyMMMEd|E, d MMM 'de' y G|GyMMMM|LLLL 'de' y G|GyMMMMd|d MMMM 'de' y G|GyMMMMEd|E, d MMMM 'de' y G|h|h a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmsvvvv|h:mm:ss a (vvvv)|Hmsvvvv|H:mm:ss (vvvv)|hmv|h:mm a v|Hmv|H:mm v|hmvvvv|h:mm a (vvvv)|Hmvvvv|H:mm (vvvv)|M|L|Md|d/M|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'setmana' W MMMM|MMMMW-count-other|'setmana' W MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|LLL 'de' y|yMMMd|d MMM 'de' y|yMMMEd|E, d MMM y|yMMMM|LLLL 'de' y|yMMMMd|d MMMM 'de' y|yMMMMEd|E, d MMMM 'de' y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'setmana' w 'de' Y|yw-count-other|'setmana' w 'de' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )
