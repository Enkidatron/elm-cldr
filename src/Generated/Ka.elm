module Generated.Ka exposing (ka)

{-|

@docs ka

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ka"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 5, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM. y
  - Long : d MMMM, y
  - Full : EEEE, dd MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ka : Internal.Locale.Locale
ka =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ka||||AM|PM|8|afternoon1|ნაშუადღ.|am|AM|evening1|საღ.|midnight|შუაღამეს|morning1|დილ.|night1|ღამ.|noon|შუადღ.|pm|PM|AM|PM|8|afternoon1|ნაშუადღევს|am|AM|evening1|საღამოს|midnight|შუაღამეს|morning1|დილით|night1|ღამით|noon|შუადღეს|pm|PM|a|p|8|afternoon1|ნაშუადღ.|am|a|evening1|საღ.|midnight|შუაღამეს|morning1|დილ.|night1|ღამ.|noon|შუადღ.|pm|p|dd.MM.yy|d MMM. y|d MMMM, y|EEEE, dd MMMM, y|იან|თებ|მარ|აპრ|მაი|ივნ|ივლ|აგვ|სექ|ოქტ|ნოე|დეკ|იანვარი|თებერვალი|მარტი|აპრილი|მაისი|ივნისი|ივლისი|აგვისტო|სექტემბერი|ოქტომბერი|ნოემბერი|დეკემბერი|ი|თ|მ|ა|მ|ი|ი|ა|ს|ო|ნ|დ|0|კვი|ორშ|სამ|ოთხ|ხუთ|პარ|შაბ|კვირა|ორშაბათი|სამშაბათი|ოთხშაბათი|ხუთშაბათი|პარასკევი|შაბათი|კ|ო|ს|ო|ხ|პ|შ|0|ძვ. წ.|ახ. წ.|ძველი წელთაღრიცხვით|ახალი წელთაღრიცხვით|ძვ. წ.|ახ. წ.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E, h:mm a|EHm|E, HH:mm|Ehms|E, h:mm:ss a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d.M.y GGGGG|GyMMM|MMM. y G|GyMMMd|d MMM. y G|GyMMMEd|E, d MMM. y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d.M|MEd|E, d.M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|MMMMს კვირა W|MMMMW-count-other|MMMMს კვირა W|ms|mm:ss|y|y|yM|M.y|yMd|d.M.y|yMEd|E, d.M.y|yMMM|MMM. y|yMMMd|d MMM. y|yMMMEd|E, d MMM. y|yMMMM|MMMM, y|yQQQ|QQQ, y|yQQQQ|QQQQ, y|yw-count-one|კვირა w, Y|yw-count-other|კვირა w, Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
