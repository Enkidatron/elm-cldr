module Generated.Ig exposing (ig)

{-|

@docs ig

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ig : Internal.Locale.Locale
ig =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ig||||A.M.|P.M.|2|am|A.M.|pm|P.M.|N’ụtụtụ|N’abali|2|am|N’ụtụtụ|pm|N’abali|A.M.|P.M.|2|am|A.M.|pm|P.M.|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Jen|Feb|Maa|Epr|Mee|Juu|Jul|Ọgọ|Sep|Ọkt|Nov|Dis|Jenụwarị|Febrụwarị|Maachị|Epreel|Mee|Juun|Julaị|Ọgọọst|Septemba|Ọktoba|Novemba|Disemba|J|F|M|E|M|J|J|Ọ|S|Ọ|N|D|0|Sọn|Mọn|Tiu|Wen|Tọọ|Fraị|Sat|Sọndee|Mọnde|Tiuzdee|Wenezdee|Tọọzdee|Fraịdee|Satọdee|S|M|T|W|T|F|S|0|T.K.|A.K.|Tupu Kraist|Afọ Kraịst|T.K.|A.K.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|48|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|MMM G y|GyMMMd|d MMM, G y|GyMMMEd|E, d MMM, G y|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-other|'Izu' W 'n'‘'ime' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'Izu' w 'n' 'ime' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
