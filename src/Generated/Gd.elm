module Generated.Gd exposing (gd)

{-|

@docs gd

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d'mh' MMMM y
  - Full : EEEE, d'mh' MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
gd : Internal.Locale.Locale
gd =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "gd||||m|f|2|am|m|pm|f|m|f|2|am|m|pm|f|m|f|2|am|m|pm|f|dd/MM/y|d MMM y|d'mh' MMMM y|EEEE, d'mh' MMMM y|Faoi|Gearr|Màrt|Gibl|Cèit|Ògmh|Iuch|Lùna|Sult|Dàmh|Samh|Dùbh|dhen Fhaoilleach|dhen Ghearran|dhen Mhàrt|dhen Ghiblean|dhen Chèitean|dhen Ògmhios|dhen Iuchar|dhen Lùnastal|dhen t-Sultain|dhen Dàmhair|dhen t-Samhain|dhen Dùbhlachd|F|G|M|G|C|Ò|I|L|S|D|S|D|1|Faoi|Gearr|Màrt|Gibl|Cèit|Ògmh|Iuch|Lùna|Sult|Dàmh|Samh|Dùbh|Am Faoilleach|An Gearran|Am Màrt|An Giblean|An Cèitean|An t-Ògmhios|An t-Iuchar|An Lùnastal|An t-Sultain|An Dàmhair|An t-Samhain|An Dùbhlachd|F|G|M|G|C|Ò|I|L|S|D|S|D|DiD|DiL|DiM|DiC|Dia|Dih|DiS|DiDòmhnaich|DiLuain|DiMàirt|DiCiadain|DiarDaoin|DihAoine|DiSathairne|D|L|M|C|A|H|S|0|RC|AD|Ro Chrìosta|An dèidh Chrìosta|R|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|55|Bh|hB|Bhm|h:mmB|Bhms|h:mm:ssB|d|d|E|ccc|EBhm|E h:mmB|EBhms|E h:mm:ssB|Ed|E, d|Ehm|E h:mma|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|LLL y G|GyMMMd|d'mh' MMM y G|GyMMMEd|E, d'mh' MMM y G|h|ha|H|HH|hm|h:mma|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mma v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d'mh' MMMM|MMMMW-count-one|'seachdain' W MMMM|MMMMW-count-two|'seachdain' W MMMM|MMMMW-count-few|'seachdain' W MMMM|MMMMW-count-other|'seachdain' W MMMM|ms|mm:ss|y|y|yM|L/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|LL/y|yMMM|LLL Y|yMMMd|d'mh' MMM y|yMMMEd|E, d'mh' MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'seachdain' w 'dhe' Y|yw-count-two|'seachdain' w 'dhe' Y|yw-count-few|'seachdain' w 'dhe' Y|yw-count-other|'seachdain' w 'dhe' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
