module Generated.Sr exposing (sr, sr_Cyrl, sr_Cyrl_BA, sr_Cyrl_ME, sr_Cyrl_XK, sr_Latn, sr_Latn_BA, sr_Latn_ME, sr_Latn_XK)

{-|

@docs sr, sr_Cyrl, sr_Cyrl_BA, sr_Cyrl_ME, sr_Cyrl_XK, sr_Latn, sr_Latn_BA, sr_Latn_ME, sr_Latn_XK

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "sr"
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

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr : Internal.Locale.Locale
sr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sr||||AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутро|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутро|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|PM|d.M.yy.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|мар|апр|мај|јун|јул|авг|сеп|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сре|чет|пет|суб|недеља|понедељак|уторак|среда|четвртак|петак|субота|н|п|у|с|ч|п|с|0|п. н. е.|н. е.|пре нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'седмица' 'у' MMMM.|MMMMW-count-few|W. 'седмица' 'у' MMMM.|MMMMW-count-other|W. 'седмица' 'у' MMMM.|ms|mm:ss|y|y.|yM|M.y.|yMd|d.M.y.|yMEd|E, d.M.y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'седмица' 'у' Y.|yw-count-few|w. 'седмица' 'у' Y.|yw-count-other|w. 'седмица' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl : Internal.Locale.Locale
sr_Cyrl =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sr|Cyrl|||AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутро|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутро|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутру|night1|ноћу|noon|подне|pm|PM|d.M.yy.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|мар|апр|мај|јун|јул|авг|сеп|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сре|чет|пет|суб|недеља|понедељак|уторак|среда|четвртак|петак|субота|н|п|у|с|ч|п|с|0|п. н. е.|н. е.|пре нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'седмица' 'у' MMMM.|MMMMW-count-few|W. 'седмица' 'у' MMMM.|MMMMW-count-other|W. 'седмица' 'у' MMMM.|ms|mm:ss|y|y.|yM|M.y.|yMd|d.M.y.|yMEd|E, d.M.y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'седмица' 'у' Y.|yw-count-few|w. 'седмица' 'у' Y.|yw-count-other|w. 'седмица' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_BA : Internal.Locale.Locale
sr_Cyrl_BA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sr|Cyrl|BA||прије подне|по подне|8|afternoon1|по под.|am|прије подне|evening1|вече|midnight|поноћ|morning1|јутро|night1|ноћу|noon|подне|pm|по подне|прије подне|по подне|8|afternoon1|по подне|am|прије подне|evening1|увече|midnight|поноћ|morning1|ујутро|night1|ноћу|noon|подне|pm|по подне|AM|PM|8|afternoon1|по под.|am|AM|evening1|вече|midnight|поноћ|morning1|јутро|night1|ноћ|noon|подне|pm|PM|d.M.yy.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|мар|апр|мај|јун|јул|авг|сеп|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сре|чет|пет|суб|недјеља|понедјељак|уторак|сриједа|четвртак|петак|субота|н|п|у|с|ч|п|с|1|нед|пон|уто|сри|чет|пет|суб|недјеља|понедјељак|уторак|сриједа|четвртак|петак|субота|н|п|у|с|ч|п|с|п. н. е.|н. е.|прије нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'седмица' 'у' MMMM.|MMMMW-count-few|W. 'седмица' 'у' MMMM.|MMMMW-count-other|W. 'седмица' 'у' MMMM.|ms|mm:ss|y|y.|yM|M.y.|yMd|d.M.y.|yMEd|E, d.M.y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'седмица' 'у' Y.|yw-count-few|w. 'седмица' 'у' Y.|yw-count-other|w. 'седмица' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_ME : Internal.Locale.Locale
sr_Cyrl_ME =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sr|Cyrl|ME||прије подне|по подне|8|afternoon1|по под.|am|прије подне|evening1|вече|midnight|поноћ|morning1|јутро|night1|ноћу|noon|подне|pm|по подне|прије подне|по подне|8|afternoon1|по подне|am|прије подне|evening1|увече|midnight|поноћ|morning1|ујутро|night1|ноћу|noon|подне|pm|по подне|AM|PM|8|afternoon1|по под.|am|AM|evening1|вече|midnight|поноћ|morning1|јутро|night1|ноћ|noon|подне|pm|PM|d.M.yy.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|март|апр|мај|јун|јул|авг|септ|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сре|чет|пет|суб|недјеља|понедељак|уторак|сриједа|четвртак|петак|субота|н|п|у|с|ч|п|с|0|п. н. е.|н. е.|прије нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'сједмица' 'у' MMMM|MMMMW-count-few|W. 'сједмица' 'у' MMMM|MMMMW-count-other|W. 'сједмица' 'у' MMMM|ms|mm:ss|y|y.|yM|M.y.|yMd|d.M.y.|yMEd|E, d.M.y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'сједмица' 'у' Y.|yw-count-few|w. 'сједмица' 'у' Y.|yw-count-other|w. 'сједмица' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_XK : Internal.Locale.Locale
sr_Cyrl_XK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sr|Cyrl|XK||AM|PM|8|afternoon1|по под.|am|AM|evening1|увече|midnight|поноћ|morning1|јутро|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по подне|am|AM|evening1|увече|midnight|поноћ|morning1|ујутро|night1|ноћу|noon|подне|pm|PM|AM|PM|8|afternoon1|по под.|am|AM|evening1|вече|midnight|поноћ|morning1|јутро|night1|ноћ|noon|подне|pm|PM|d.M.yy.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|јан|феб|март|апр|мај|јун|јул|авг|септ|окт|нов|дец|јануар|фебруар|март|април|мај|јун|јул|август|септембар|октобар|новембар|децембар|ј|ф|м|а|м|ј|ј|а|с|о|н|д|0|нед|пон|уто|сре|чет|пет|суб|недеља|понедељак|уторак|среда|четвртак|петак|субота|н|п|у|с|ч|п|с|0|п. н. е.|н. е.|пре нове ере|нове ере|п.н.е.|н.е.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'седмица' 'у' MMMM.|MMMMW-count-few|W. 'седмица' 'у' MMMM.|MMMMW-count-other|W. 'седмица' 'у' MMMM.|ms|mm:ss|y|y.|yM|M.y.|yMd|d.M.y.|yMEd|E, d.M.y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'седмица' 'у' Y.|yw-count-few|w. 'седмица' 'у' Y.|yw-count-other|w. 'седмица' 'у' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn : Internal.Locale.Locale
sr_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sr|Latn|||AM|PM|8|afternoon1|po podne|am|AM|evening1|uveče|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|po podne|am|AM|evening1|uveče|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|po podne|am|AM|evening1|uveče|midnight|ponoć|morning1|ujutru|night1|noću|noon|podne|pm|PM|d.M.yy.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mar|apr|maj|jun|jul|avg|sep|okt|nov|dec|januar|februar|mart|april|maj|jun|jul|avgust|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sre|čet|pet|sub|nedelja|ponedeljak|utorak|sreda|četvrtak|petak|subota|n|p|u|s|č|p|s|0|p. n. e.|n. e.|pre nove ere|nove ere|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'sedmica' 'u' MMMM.|MMMMW-count-few|W. 'sedmica' 'u' MMMM.|MMMMW-count-other|W. 'sedmica' 'u' MMMM.|ms|mm:ss|y|y.|yM|M.y.|yMd|d.M.y.|yMEd|E, d.M.y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'sedmica' 'u' Y.|yw-count-few|w. 'sedmica' 'u' Y.|yw-count-other|w. 'sedmica' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_BA : Internal.Locale.Locale
sr_Latn_BA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sr|Latn|BA||prije podne|po podne|8|afternoon1|po pod.|am|prije podne|evening1|veče|midnight|ponoć|morning1|jutro|night1|noću|noon|podne|pm|po podne|prije podne|po podne|8|afternoon1|po podne|am|prije podne|evening1|uveče|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|po podne|AM|PM|8|afternoon1|po pod.|am|AM|evening1|veče|midnight|ponoć|morning1|jutro|night1|noć|noon|podne|pm|PM|d.M.yy.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mar|apr|maj|jun|jul|avg|sep|okt|nov|dec|januar|februar|mart|april|maj|jun|jul|avgust|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sre|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|1|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|p. n. e.|n. e.|prije nove ere|nove ere|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'sedmica' 'u' MMMM.|MMMMW-count-few|W. 'sedmica' 'u' MMMM.|MMMMW-count-other|W. 'sedmica' 'u' MMMM.|ms|mm:ss|y|y.|yM|M.y.|yMd|d.M.y.|yMEd|E, d.M.y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'sedmica' 'u' Y.|yw-count-few|w. 'sedmica' 'u' Y.|yw-count-other|w. 'sedmica' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_ME : Internal.Locale.Locale
sr_Latn_ME =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sr|Latn|ME||prije podne|po podne|8|afternoon1|po pod.|am|prije podne|evening1|veče|midnight|ponoć|morning1|jutro|night1|noću|noon|podne|pm|po podne|prije podne|po podne|8|afternoon1|po podne|am|prije podne|evening1|uveče|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|po podne|AM|PM|8|afternoon1|po pod.|am|AM|evening1|veče|midnight|ponoć|morning1|jutro|night1|noć|noon|podne|pm|PM|d.M.yy.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mart|apr|maj|jun|jul|avg|sept|okt|nov|dec|januar|februar|mart|april|maj|jun|jul|avgust|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sre|čet|pet|sub|nedjelja|ponedeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|0|p. n. e.|n. e.|prije nove ere|nove ere|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'sjedmica' 'u' MMMM|MMMMW-count-few|W. 'sjedmica' 'u' MMMM|MMMMW-count-other|W. 'sjedmica' 'u' MMMM|ms|mm:ss|y|y.|yM|M.y.|yMd|d.M.y.|yMEd|E, d.M.y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'sjedmica' 'u' Y.|yw-count-few|w. 'sjedmica' 'u' Y.|yw-count-other|w. 'sjedmica' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_XK : Internal.Locale.Locale
sr_Latn_XK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sr|Latn|XK||AM|PM|8|afternoon1|po pod.|am|AM|evening1|uveče|midnight|ponoć|morning1|jutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|po podne|am|AM|evening1|uveče|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|po pod.|am|AM|evening1|veče|midnight|ponoć|morning1|jutro|night1|noć|noon|podne|pm|PM|d.M.yy.|d. M. y.|d. MMMM y.|EEEE, d. MMMM y.|jan|feb|mart|apr|maj|jun|jul|avg|sept|okt|nov|dec|januar|februar|mart|april|maj|jun|jul|avgust|septembar|oktobar|novembar|decembar|j|f|m|a|m|j|j|a|s|o|n|d|0|ned|pon|uto|sre|čet|pet|sub|nedelja|ponedeljak|utorak|sreda|četvrtak|petak|subota|n|p|u|s|č|p|s|0|p. n. e.|n. e.|pre nove ere|nove ere|p.n.e.|n.e.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|hh:mm B|Bhms|hh:mm:ss B|d|d|E|E|EBhm|E hh:mm B|EBhms|E hh:mm:ss B|Ed|E d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d.MM.y. GGGGG|GyMMM|MMM y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M.|MEd|E, d.M.|MMdd|dd.MM.|MMM|LLL|MMMd|d. MMM|MMMdd|dd.MMM|MMMEd|E d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'sedmica' 'u' MMMM.|MMMMW-count-few|W. 'sedmica' 'u' MMMM.|MMMMW-count-other|W. 'sedmica' 'u' MMMM.|ms|mm:ss|y|y.|yM|M.y.|yMd|d.M.y.|yMEd|E, d.M.y.|yMM|MM.y.|yMMdd|dd.MM.y.|yMMM|MMM y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|MMMM y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'sedmica' 'u' Y.|yw-count-few|w. 'sedmica' 'u' Y.|yw-count-other|w. 'sedmica' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
