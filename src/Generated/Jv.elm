module Generated.Jv exposing (jv)

{-|

@docs jv

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
jv : Internal.Locale.Locale
jv =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "jv||||Isuk|Wengi|2|am|Isuk|pm|Wengi|Isuk|Wengi|2|am|Isuk|pm|Wengi|Isuk|Wengi|2|am|Isuk|pm|Wengi|dd-MM-y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|Mei|Jun|Jul|Agt|Sep|Okt|Nov|Des|Januari|Februari|Maret|April|Mei|Juni|Juli|Agustus|September|Oktober|November|Desember|J|F|M|A|M|J|J|A|S|O|N|D|0|Ahad|Sen|Sel|Rab|Kam|Jum|Sab|Ahad|Senin|Selasa|Rabu|Kamis|Jumat|Sabtu|A|S|S|R|K|J|S|0|SM|M|Sakdurunge Masehi|Masehi|SM|M|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1} {0}|{1} {0}|47|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-other|'pekan' W 'ing' MMMM|ms|mm:ss|y|y|yM|MM-y|yMd|dd-MM-y|yMEd|E, dd-MM-y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'pekan' w 'ing' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
