module Generated.Hr exposing (hr, hr_BA)

{-|

@docs hr, hr_BA

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "hr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 4, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd. MM. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr : Internal.Locale.Locale
hr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "hr||||AM|PM|8|afternoon1|popodne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|poslije podne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|popodne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|dd. MM. y.|d. MMM y.|d. MMMM y.|EEEE, d. MMMM y.|sij|velj|ožu|tra|svi|lip|srp|kol|ruj|lis|stu|pro|siječnja|veljače|ožujka|travnja|svibnja|lipnja|srpnja|kolovoza|rujna|listopada|studenoga|prosinca|1.|2.|3.|4.|5.|6.|7.|8.|9.|10.|11.|12.|1|sij|velj|ožu|tra|svi|lip|srp|kol|ruj|lis|stu|pro|siječanj|veljača|ožujak|travanj|svibanj|lipanj|srpanj|kolovoz|rujan|listopad|studeni|prosinac|1.|2.|3.|4.|5.|6.|7.|8.|9.|10.|11.|12.|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|N|P|U|S|Č|P|S|1|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|n|p|u|s|č|p|s|pr. Kr.|po. Kr.|prije Krista|poslije Krista|pr.n.e.|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss (zzzz)|{1} {0}|{1} {0}|{1} 'u' {0}|{1} 'u' {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d. M. y. GGGGG|GyMMM|LLL y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|hh:mm a|Hm|HH:mm|hms|hh:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L.|Md|dd. MM.|MEd|E, dd. MM.|MMdd|dd. MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'tjedan' MMMM|MMMMW-count-few|W. 'tjedan' MMMM|MMMMW-count-other|W. 'tjedan' MMMM|ms|mm:ss|y|y.|yM|MM. y.|yMd|dd. MM. y.|yMEd|E, dd. MM. y.|yMM|MM. y.|yMMM|LLL y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|LLLL y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'tjedan' 'u' Y.|yw-count-few|w. 'tjedan' 'u' Y.|yw-count-other|w. 'tjedan' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d. M. yy.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr_BA : Internal.Locale.Locale
hr_BA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "hr||BA||AM|PM|8|afternoon1|popodne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|poslije podne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|AM|PM|8|afternoon1|popodne|am|AM|evening1|navečer|midnight|ponoć|morning1|ujutro|night1|noću|noon|podne|pm|PM|d. M. yy.|d. MMM y.|d. MMMM y.|EEEE, d. MMMM y.|sij|velj|ožu|tra|svi|lip|srp|kol|ruj|lis|stu|pro|siječnja|veljače|ožujka|travnja|svibnja|lipnja|srpnja|kolovoza|rujna|listopada|studenoga|prosinca|1.|2.|3.|4.|5.|6.|7.|8.|9.|10.|11.|12.|1|sij|velj|ožu|tra|svi|lip|srp|kol|ruj|lis|stu|pro|siječanj|veljača|ožujak|travanj|svibanj|lipanj|srpanj|kolovoz|rujan|listopad|studeni|prosinac|1.|2.|3.|4.|5.|6.|7.|8.|9.|10.|11.|12.|ned|pon|uto|sri|čet|pet|sub|nedjelja|ponedjeljak|utorak|srijeda|četvrtak|petak|subota|N|P|U|S|Č|P|S|0|pr. Kr.|po. Kr.|prije Krista|poslije Krista|pr.n.e.|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss (zzzz)|{1} {0}|{1} {0}|{1} 'u' {0}|{1} 'u' {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d.|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d.|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y. G|GyMd|d. M. y. GGGGG|GyMMM|LLL y. G|GyMMMd|d. MMM y. G|GyMMMEd|E, d. MMM y. G|h|h a|H|HH|hm|hh:mm a|Hm|HH:mm|hms|hh:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L.|Md|dd. MM.|MEd|E, dd. MM.|MMdd|dd. MM.|MMM|LLL|MMMd|d. MMM|MMMEd|E, d. MMM|MMMMd|d. MMMM|MMMMEd|E, d. MMMM|MMMMW-count-one|W. 'tjedan' MMMM|MMMMW-count-few|W. 'tjedan' MMMM|MMMMW-count-other|W. 'tjedan' MMMM|ms|mm:ss|y|y.|yM|MM. y.|yMd|dd. MM. y.|yMEd|E, dd. MM. y.|yMM|MM. y.|yMMM|LLL y.|yMMMd|d. MMM y.|yMMMEd|E, d. MMM y.|yMMMM|LLLL y.|yQQQ|QQQ y.|yQQQQ|QQQQ y.|yw-count-one|w. 'tjedan' 'u' Y.|yw-count-few|w. 'tjedan' 'u' Y.|yw-count-other|w. 'tjedan' 'u' Y.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
