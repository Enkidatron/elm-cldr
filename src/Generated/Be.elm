module Generated.Be exposing (be, be_TARASK)

{-|

@docs be, be_TARASK

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be : Internal.Locale.Locale
be =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "be||||AM|PM|2|am|AM|pm|PM|AM|PM|2|am|AM|pm|PM|am|pm|2|am|am|pm|pm|d.MM.yy|d MMM y 'г'.|d MMMM y 'г'.|EEEE, d MMMM y 'г'.|сту|лют|сак|кра|мая|чэр|ліп|жні|вер|кас|ліс|сне|студзеня|лютага|сакавіка|красавіка|мая|чэрвеня|ліпеня|жніўня|верасня|кастрычніка|лістапада|снежня|с|л|с|к|м|ч|л|ж|в|к|л|с|1|сту|лют|сак|кра|май|чэр|ліп|жні|вер|кас|ліс|сне|студзень|люты|сакавік|красавік|май|чэрвень|ліпень|жнівень|верасень|кастрычнік|лістапад|снежань|с|л|с|к|м|ч|л|ж|в|к|л|с|нд|пн|аў|ср|чц|пт|сб|нядзеля|панядзелак|аўторак|серада|чацвер|пятніца|субота|н|п|а|с|ч|п|с|0|да н.э.|н.э.|да нараджэння Хрыстова|ад нараджэння Хрыстова|да н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss, zzzz|{1}, {0}|{1}, {0}|{1} 'у' {0}|{1} 'у' {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y 'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y 'г'. G|GyMMMd|d MMM y 'г'. G|GyMMMEd|E, d MMM y 'г'. G|h|hh a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M|MEd|E, d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|W 'тыдзень' MMMM|MMMMW-count-few|W 'тыдзень' MMMM|MMMMW-count-many|W 'тыдзень' MMMM|MMMMW-count-other|W 'тыдзень' MMMM|ms|mm.ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|LLL y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w 'тыдзень' Y|yw-count-few|w 'тыдзень' Y|yw-count-many|w 'тыдзень' Y|yw-count-other|w 'тыдзень' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be_TARASK : Internal.Locale.Locale
be_TARASK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "be|||TARASK|AM|PM|2|am|AM|pm|PM|AM|PM|2|am|AM|pm|PM|am|pm|2|am|am|pm|pm|d.MM.yy|d MMM y 'г'.|d MMMM y 'г'.|EEEE, d MMMM y 'г'.|сту|лют|сак|кра|мая|чэр|ліп|жні|вер|кас|ліс|сне|студзеня|лютага|сакавіка|красавіка|мая|чэрвеня|ліпеня|жніўня|верасня|кастрычніка|лістапада|снежня|с|л|с|к|м|ч|л|ж|в|к|л|с|1|сту|лют|сак|кра|май|чэр|ліп|жні|вер|кас|ліс|сне|студзень|люты|сакавік|красавік|май|чэрвень|ліпень|жнівень|верасень|кастрычнік|лістапад|снежань|с|л|с|к|м|ч|л|ж|в|к|л|с|нд|пн|аў|ср|чц|пт|сб|нядзеля|панядзелак|аўторак|серада|чацвер|пятніца|субота|н|п|а|с|ч|п|с|0|да н.э.|н.э.|да нараджэння Хрыстова|ад нараджэння Хрыстова|да н.э.|н.э.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss, zzzz|{1}, {0}|{1}, {0}|{1} 'у' {0}|{1} 'у' {0}|54|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y 'г'. G|GyMd|dd.MM.y GGGGG|GyMMM|LLL y 'г'. G|GyMMMd|d MMM y 'г'. G|GyMMMEd|E, d MMM y 'г'. G|h|hh a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M|MEd|E, d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|W 'тыдзень' MMMM|MMMMW-count-few|W 'тыдзень' MMMM|MMMMW-count-many|W 'тыдзень' MMMM|MMMMW-count-other|W 'тыдзень' MMMM|ms|mm.ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|LLL y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|w 'тыдзень' Y|yw-count-few|w 'тыдзень' Y|yw-count-many|w 'тыдзень' Y|yw-count-other|w 'тыдзень' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
