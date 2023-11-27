module Generated.Root exposing (root)

{-|

@docs root

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
root : Internal.Locale.Locale
root =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "root||||AM|PM|2|am|AM|pm|PM|AM|PM|2|am|AM|pm|PM|AM|PM|2|am|AM|pm|PM|y-MM-dd|y MMM d|y MMMM d|y MMMM d, EEEE|M01|M02|M03|M04|M05|M06|M07|M08|M09|M10|M11|M12|M01|M02|M03|M04|M05|M06|M07|M08|M09|M10|M11|M12|1|2|3|4|5|6|7|8|9|10|11|12|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sun|Mon|Tue|Wed|Thu|Fri|Sat|S|M|T|W|T|F|S|0|BCE|CE|BCE|CE|BCE|CE|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|47|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|MMMM d|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
