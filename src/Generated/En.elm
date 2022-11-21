module Generated.En exposing (en, en_001, en_150, en_AE, en_AG, en_AI, en_AS, en_AT, en_AU, en_BB, en_BE, en_BI, en_BM, en_BS, en_BW, en_BZ, en_CA, en_CC, en_CH, en_CK, en_CM, en_CX, en_CY, en_DE, en_DG, en_DK, en_DM, en_ER, en_FI, en_FJ, en_FK, en_FM, en_GB, en_GD, en_GG, en_GH, en_GI, en_GM, en_GU, en_GY, en_HK, en_IE, en_IL, en_IM, en_IN, en_IO, en_JE, en_JM, en_KE, en_KI, en_KN, en_KY, en_LC, en_LR, en_LS, en_Latn, en_MG, en_MH, en_MO, en_MP, en_MS, en_MT, en_MU, en_MV, en_MW, en_MY, en_NA, en_NF, en_NG, en_NL, en_NR, en_NU, en_NZ, en_PG, en_PH, en_PK, en_PN, en_PR, en_PW, en_RW, en_SB, en_SC, en_SD, en_SE, en_SG, en_SH, en_SI, en_SL, en_SS, en_SX, en_SZ, en_TC, en_TK, en_TO, en_TT, en_TV, en_TZ, en_UG, en_UM, en_VC, en_VG, en_VI, en_VU, en_WS, en_ZA, en_ZM, en_ZW)

{-|

@docs en, en_001, en_150, en_AE, en_AG, en_AI, en_AS, en_AT, en_AU, en_BB, en_BE, en_BI, en_BM, en_BS, en_BW, en_BZ, en_CA, en_CC, en_CH, en_CK, en_CM, en_CX, en_CY, en_DE, en_DG, en_DK, en_DM, en_ER, en_FI, en_FJ, en_FK, en_FM, en_GB, en_GD, en_GG, en_GH, en_GI, en_GM, en_GU, en_GY, en_HK, en_IE, en_IL, en_IM, en_IN, en_IO, en_JE, en_JM, en_KE, en_KI, en_KN, en_KY, en_LC, en_LR, en_LS, en_Latn, en_MG, en_MH, en_MO, en_MP, en_MS, en_MT, en_MU, en_MV, en_MW, en_MY, en_NA, en_NF, en_NG, en_NL, en_NR, en_NU, en_NZ, en_PG, en_PH, en_PK, en_PN, en_PR, en_PW, en_RW, en_SB, en_SC, en_SD, en_SE, en_SG, en_SH, en_SI, en_SL, en_SS, en_SX, en_SZ, en_TC, en_TK, en_TO, en_TT, en_TV, en_TZ, en_UG, en_UM, en_VC, en_VG, en_VI, en_VU, en_WS, en_ZA, en_ZM, en_ZW

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "en"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
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

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en : Internal.Locale.Locale
en =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_001 : Internal.Locale.Locale
en_001 =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||001||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_150 : Internal.Locale.Locale
en_150 =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||150||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AE : Internal.Locale.Locale
en_AE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||AE||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AG : Internal.Locale.Locale
en_AG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||AG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_AI : Internal.Locale.Locale
en_AI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||AI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AS : Internal.Locale.Locale
en_AS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||AS||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_AT : Internal.Locale.Locale
en_AT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||AT||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
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
en_AU : Internal.Locale.Locale
en_AU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||AU||am|pm|10|afternoon1|afternoon|am|am|am-alt-variant|am|evening1|evening|midnight|midnight|morning1|morning|night1|night|noon|midday|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|midday|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|afternoon|am|am|am-alt-variant|am|evening1|evening|midnight|midnight|morning1|morning|night1|night|noon|midday|pm|pm|pm-alt-variant|pm|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|June|July|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|1|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Su.|M.|Tu.|W.|Th.|F.|Sa.|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_BB : Internal.Locale.Locale
en_BB =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||BB||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BE : Internal.Locale.Locale
en_BE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||BE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/yy|dd MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BI : Internal.Locale.Locale
en_BI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||BI||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_BM : Internal.Locale.Locale
en_BM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||BM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_BS : Internal.Locale.Locale
en_BS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||BS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BW : Internal.Locale.Locale
en_BW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||BW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/yy|dd MMM y|dd MMMM y|EEEE, dd MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|dd MMM y G|GyMMMEd|E, dd MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, dd MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|dd MMM y|yMMMEd|E, dd MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BZ : Internal.Locale.Locale
en_BZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||BZ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/yy|dd-MMM-y|dd MMMM y|EEEE, dd MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, dd MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|dd MMM y|yMMMEd|E, dd MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_CA : Internal.Locale.Locale
en_CA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||CA||a.m.|p.m.|10|afternoon1|in the afternoon|am|a.m.|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|p.m.|pm-alt-variant|pm|a.m.|p.m.|10|afternoon1|in the afternoon|am|a.m.|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|p.m.|pm-alt-variant|pm|am|pm|10|afternoon1|aft|am|am|am-alt-variant|am|evening1|eve|midnight|mid|morning1|mor|night1|night|noon|n|pm|pm|pm-alt-variant|pm|y-MM-dd|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|Md-alt-variant|d/M|MEd|E, MM-dd|MEd-alt-variant|E, d/M|MMdd|MM-dd|MMdd-alt-variant|dd/MM|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|y-MM-dd|yMd-alt-variant|d/M/y|yMEd|E, y-MM-dd|yMEd-alt-variant|E, d/M/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CC : Internal.Locale.Locale
en_CC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||CC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CH : Internal.Locale.Locale
en_CH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||CH||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CK : Internal.Locale.Locale
en_CK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||CK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CM : Internal.Locale.Locale
en_CM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||CM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CX : Internal.Locale.Locale
en_CX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||CX||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_CY : Internal.Locale.Locale
en_CY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||CY||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_DE : Internal.Locale.Locale
en_DE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||DE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_DG : Internal.Locale.Locale
en_DG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||DG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
en_DK : Internal.Locale.Locale
en_DK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||DK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h.mm a|EHm|E HH.mm|Ehms|E h.mm.ss a|EHms|E HH.mm.ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h.mm a|Hm|HH.mm|hms|h.mm.ss a|Hms|HH.mm.ss|hmsv|h.mm.ss a v|Hmsv|HH.mm.ss v|hmv|h.mm a v|Hmv|HH.mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm.ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_DM : Internal.Locale.Locale
en_DM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||DM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_ER : Internal.Locale.Locale
en_ER =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||ER||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : H.mm
  - Medium : H.mm.ss
  - Long : H.mm.ss z
  - Full : H.mm.ss zzzz

-}
en_FI : Internal.Locale.Locale
en_FI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||FI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|H.mm|H.mm.ss|H.mm.ss z|H.mm.ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h.mm a|EHm|E H.mm|Ehms|E h.mm.ss a|EHms|E H.mm.ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h.mm a|Hm|H.mm|hms|h.mm.ss a|Hms|H.mm.ss|hmsv|h.mm.ss a v|Hmsv|H.mm.ss v|hmv|h.mm a v|Hmv|H.mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm.ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_FJ : Internal.Locale.Locale
en_FJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||FJ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_FK : Internal.Locale.Locale
en_FK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||FK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_FM : Internal.Locale.Locale
en_FM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||FM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GB : Internal.Locale.Locale
en_GB =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||GB||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GD : Internal.Locale.Locale
en_GD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||GD||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GG : Internal.Locale.Locale
en_GG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||GG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GH : Internal.Locale.Locale
en_GH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||GH||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GI : Internal.Locale.Locale
en_GI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||GI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GM : Internal.Locale.Locale
en_GM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||GM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GU : Internal.Locale.Locale
en_GU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||GU||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GY : Internal.Locale.Locale
en_GY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||GY||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_HK : Internal.Locale.Locale
en_HK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||HK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|d/M/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|51|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_IE : Internal.Locale.Locale
en_IE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||IE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a.m.|p.m.|10|afternoon1|in the afternoon|am|a.m.|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|p.m.|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
en_IL : Internal.Locale.Locale
en_IL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||IL||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_IM : Internal.Locale.Locale
en_IM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||IM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : d MMMM y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_IN : Internal.Locale.Locale
en_IN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||IN||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/yy|dd-MMM-y|d MMMM y|EEEE, d MMMM, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E, h:mm a|EHm|E, HH:mm|Ehms|E, h:mm:ss a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_IO : Internal.Locale.Locale
en_IO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||IO||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_JE : Internal.Locale.Locale
en_JE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||JE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_JM : Internal.Locale.Locale
en_JM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||JM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_KE : Internal.Locale.Locale
en_KE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||KE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_KI : Internal.Locale.Locale
en_KI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||KI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_KN : Internal.Locale.Locale
en_KN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||KN||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_KY : Internal.Locale.Locale
en_KY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||KY||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_LC : Internal.Locale.Locale
en_LC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||LC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_LR : Internal.Locale.Locale
en_LR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||LR||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_LS : Internal.Locale.Locale
en_LS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||LS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MG : Internal.Locale.Locale
en_MG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MH : Internal.Locale.Locale
en_MH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MH||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MO : Internal.Locale.Locale
en_MO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MO||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MP : Internal.Locale.Locale
en_MP =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MP||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MS : Internal.Locale.Locale
en_MS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MT : Internal.Locale.Locale
en_MT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MT||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|dd MMM y|dd MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|dd MMM y|yMMMEd|E, dd MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MU : Internal.Locale.Locale
en_MU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MU||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d-M-yy
  - Medium : dd-MM-y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MV : Internal.Locale.Locale
en_MV =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MV||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|d-M-yy|dd-MM-y|d MMMM y|EEEE d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MW : Internal.Locale.Locale
en_MW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MY : Internal.Locale.Locale
en_MY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||MY||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_NA : Internal.Locale.Locale
en_NA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||NA||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NF : Internal.Locale.Locale
en_NF =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||NF||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NG : Internal.Locale.Locale
en_NG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||NG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NL : Internal.Locale.Locale
en_NL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||NL||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NR : Internal.Locale.Locale
en_NR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||NR||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NU : Internal.Locale.Locale
en_NU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||NU||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d/MM/y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_NZ : Internal.Locale.Locale
en_NZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||NZ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|d/MM/yy|d/MM/y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PG : Internal.Locale.Locale
en_PG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||PG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PH : Internal.Locale.Locale
en_PH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||PH||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : dd-MMM-y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PK : Internal.Locale.Locale
en_PK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||PK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|dd-MMM-y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_PN : Internal.Locale.Locale
en_PN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||PN||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PR : Internal.Locale.Locale
en_PR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||PR||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PW : Internal.Locale.Locale
en_PW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||PW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_RW : Internal.Locale.Locale
en_RW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||RW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SB : Internal.Locale.Locale
en_SB =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SB||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SC : Internal.Locale.Locale
en_SC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SD : Internal.Locale.Locale
en_SD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SD||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SE : Internal.Locale.Locale
en_SE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|y-MM-dd|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|E, y-MM-dd|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
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
en_SG : Internal.Locale.Locale
en_SG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SH : Internal.Locale.Locale
en_SH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SH||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SI : Internal.Locale.Locale
en_SI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SL : Internal.Locale.Locale
en_SL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SL||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SS : Internal.Locale.Locale
en_SS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SX : Internal.Locale.Locale
en_SX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SX||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SZ : Internal.Locale.Locale
en_SZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||SZ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_TC : Internal.Locale.Locale
en_TC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||TC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_TK : Internal.Locale.Locale
en_TK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||TK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_TO : Internal.Locale.Locale
en_TO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||TO||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_TT : Internal.Locale.Locale
en_TT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||TT||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_TV : Internal.Locale.Locale
en_TV =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||TV||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_TZ : Internal.Locale.Locale
en_TZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||TZ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_UG : Internal.Locale.Locale
en_UG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||UG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_UM : Internal.Locale.Locale
en_UM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||UM||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VC : Internal.Locale.Locale
en_VC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||VC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VG : Internal.Locale.Locale
en_VG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||VG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VI : Internal.Locale.Locale
en_VI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||VI||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VU : Internal.Locale.Locale
en_VU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||VU||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_WS : Internal.Locale.Locale
en_WS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||WS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : y/MM/dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_ZA : Internal.Locale.Locale
en_ZA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||ZA||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|y/MM/dd|dd MMM y|dd MMMM y|EEEE, dd MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM/dd|MEd|E, MM/dd|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, dd MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|y/MM/dd|yMEd|E, y/MM/dd|yMMM|MMM y|yMMMd|dd MMM y|yMMMEd|E, dd MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_ZM : Internal.Locale.Locale
en_ZM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||ZM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : dd MMM,y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_ZW : Internal.Locale.Locale
en_ZW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en||ZW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|d/M/y|dd MMM,y|dd MMMM y|EEEE, dd MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} 'at' {0}|{1} 'at' {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, dd MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|dd MMM, y|yMMMEd|E, dd MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : dd-MMM-y
  - Long : d MMMM y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_Latn : Internal.Locale.Locale
en_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "en|Latn|||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|dopahar|am|AM|am-alt-variant|am|evening1|shaam|midnight|aadhi raat|morning1|subah|night1|raat|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|dd-MMM-y|d MMMM y|EEEE, d MMMM, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|1|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|ravi|som|mangal|budh|guru|shukra|shani|ravivaar|somvaar|mangalvaar|budhvaar|guruvaar|shukravaar|shanivaar|ra|so|ma|bu|gu|su|sa|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1}, {0}|{1}, {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E, h:mm a|EHm|E, HH:mm|Ehms|E, h:mm:ss a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
