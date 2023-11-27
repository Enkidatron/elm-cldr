module Generated.El exposing (el, el_CY, el_POLYTON)

{-|

@docs el, el_CY, el_POLYTON

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "el"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 17, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 17, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el : Internal.Locale.Locale
el =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "el||||π.μ.|μ.μ.|6|afternoon1|μεσημ.|am|π.μ.|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μ.μ.|π.μ.|μ.μ.|6|afternoon1|το μεσημέρι|am|π.μ.|evening1|το απόγευμα|morning1|το πρωί|night1|το βράδυ|pm|μ.μ.|πμ|μμ|6|afternoon1|μεσημ.|am|πμ|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μμ|d/M/yy|d MMM y|d MMMM y|EEEE d MMMM y|Ιαν|Φεβ|Μαρ|Απρ|Μαΐ|Ιουν|Ιουλ|Αυγ|Σεπ|Οκτ|Νοε|Δεκ|Ιανουαρίου|Φεβρουαρίου|Μαρτίου|Απριλίου|Μαΐου|Ιουνίου|Ιουλίου|Αυγούστου|Σεπτεμβρίου|Οκτωβρίου|Νοεμβρίου|Δεκεμβρίου|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|1|Ιαν|Φεβ|Μάρ|Απρ|Μάι|Ιούν|Ιούλ|Αύγ|Σεπ|Οκτ|Νοέ|Δεκ|Ιανουάριος|Φεβρουάριος|Μάρτιος|Απρίλιος|Μάιος|Ιούνιος|Ιούλιος|Αύγουστος|Σεπτέμβριος|Οκτώβριος|Νοέμβριος|Δεκέμβριος|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|Κυρ|Δευ|Τρί|Τετ|Πέμ|Παρ|Σάβ|Κυριακή|Δευτέρα|Τρίτη|Τετάρτη|Πέμπτη|Παρασκευή|Σάββατο|Κ|Δ|Τ|Τ|Π|Π|Σ|0|π.Χ.|μ.Χ.|προ Χριστού|μετά Χριστόν|π.Χ.|μ.Χ.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1} - {0}|{1} - {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMM|MMM|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|εβδομάδα W του MMMM|MMMMW-count-other|εβδομάδα W του MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|εβδομάδα w του Y|yw-count-other|εβδομάδα w του Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el_CY : Internal.Locale.Locale
el_CY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "el||CY||π.μ.|μ.μ.|6|afternoon1|μεσημ.|am|π.μ.|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μ.μ.|π.μ.|μ.μ.|6|afternoon1|το μεσημέρι|am|π.μ.|evening1|το απόγευμα|morning1|το πρωί|night1|το βράδυ|pm|μ.μ.|πμ|μμ|6|afternoon1|μεσημ.|am|πμ|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μμ|d/M/yy|d MMM y|d MMMM y|EEEE d MMMM y|Ιαν|Φεβ|Μαρ|Απρ|Μαΐ|Ιουν|Ιουλ|Αυγ|Σεπ|Οκτ|Νοε|Δεκ|Ιανουαρίου|Φεβρουαρίου|Μαρτίου|Απριλίου|Μαΐου|Ιουνίου|Ιουλίου|Αυγούστου|Σεπτεμβρίου|Οκτωβρίου|Νοεμβρίου|Δεκεμβρίου|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|1|Ιαν|Φεβ|Μάρ|Απρ|Μάι|Ιούν|Ιούλ|Αύγ|Σεπ|Οκτ|Νοέ|Δεκ|Ιανουάριος|Φεβρουάριος|Μάρτιος|Απρίλιος|Μάιος|Ιούνιος|Ιούλιος|Αύγουστος|Σεπτέμβριος|Οκτώβριος|Νοέμβριος|Δεκέμβριος|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|Κυρ|Δευ|Τρί|Τετ|Πέμ|Παρ|Σάβ|Κυριακή|Δευτέρα|Τρίτη|Τετάρτη|Πέμπτη|Παρασκευή|Σάββατο|Κ|Δ|Τ|Τ|Π|Π|Σ|0|π.Χ.|μ.Χ.|προ Χριστού|μετά Χριστόν|π.Χ.|μ.Χ.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1} - {0}|{1} - {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMM|MMM|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|εβδομάδα W του MMMM|MMMMW-count-other|εβδομάδα W του MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|εβδομάδα w του Y|yw-count-other|εβδομάδα w του Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el_POLYTON : Internal.Locale.Locale
el_POLYTON =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "el|||POLYTON|π.μ.|μ.μ.|6|afternoon1|μεσημ.|am|π.μ.|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μ.μ.|π.μ.|μ.μ.|6|afternoon1|το μεσημέρι|am|π.μ.|evening1|το απόγευμα|morning1|το πρωί|night1|το βράδυ|pm|μ.μ.|πμ|μμ|6|afternoon1|μεσημ.|am|πμ|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μμ|d/M/yy|d MMM y|d MMMM y|EEEE d MMMM y|Ιαν|Φεβ|Μαρ|Απρ|Μαΐ|Ιουν|Ιουλ|Αὐγ|Σεπ|Ὀκτ|Νοε|Δεκ|Ιανουαρίου|Φεβρουαρίου|Μαρτίου|Απριλίου|Μαΐου|Ιουνίου|Ιουλίου|Αὐγούστου|Σεπτεμβρίου|Ὀκτωβρίου|Νοεμβρίου|Δεκεμβρίου|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|1|Ιαν|Φεβ|Μάρ|Απρ|Μάι|Ιούν|Ιούλ|Αύγ|Σεπ|Οκτ|Νοέ|Δεκ|Ιανουάριος|Φεβρουάριος|Μάρτιος|Απρίλιος|Μάιος|Ιούνιος|Ιούλιος|Αὔγουστος|Σεπτέμβριος|Ὀκτώβριος|Νοέμβριος|Δεκέμβριος|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|Κυρ|Δευ|Τρί|Τετ|Πέμ|Παρ|Σάβ|Κυριακή|Δευτέρα|Τρίτη|Τετάρτη|Πέμπτη|Παρασκευή|Σάββατο|Κ|Δ|Τ|Τ|Π|Π|Σ|0|π.Χ.|μ.Χ.|προ Χριστού|μετά Χριστόν|π.Χ.|μ.Χ.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1} - {0}|{1} - {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMM|MMM|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|εβδομάδα W του MMMM|MMMMW-count-other|εβδομάδα W του MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|εβδομάδα w του Y|yw-count-other|εβδομάδα w του Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
