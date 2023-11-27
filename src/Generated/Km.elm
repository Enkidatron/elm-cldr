module Generated.Km exposing (km)

{-|

@docs km

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "km"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
km : Internal.Locale.Locale
km =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "km||||AM|PM|8|afternoon1|នៅពេលរសៀល|am|AM|evening1|នៅពេល\u{200B}ល្ងាច|midnight|អធ្រាត្រ|morning1|នៅពេល\u{200B}ព្រឹក|night1|នៅពេល\u{200B}យប់|noon|ថ្ងៃត្រង់|pm|PM|AM|PM|8|afternoon1|នៅពេលរសៀល|am|AM|evening1|នៅពេល\u{200B}ល្ងាច|midnight|អធ្រាត្រ|morning1|នៅពេល\u{200B}ព្រឹក|night1|នៅពេល\u{200B}យប់|noon|ថ្ងៃត្រង់|pm|PM|a|p|8|afternoon1|នៅពេលរសៀល|am|a|evening1|នៅពេល\u{200B}ល្ងាច|midnight|អធ្រាត្រ|morning1|នៅពេល\u{200B}ព្រឹក|night1|នៅពេល\u{200B}យប់|noon|ថ្ងៃត្រង់|pm|p|d/M/yy|d MMM y|d MMMM y|EEEE d MMMM y|មករា|កុម្ភៈ|មីនា|មេសា|ឧសភា|មិថុនា|កក្កដា|សីហា|កញ្ញា|តុលា|វិច្ឆិកា|ធ្នូ|មករា|កុម្ភៈ|មីនា|មេសា|ឧសភា|មិថុនា|កក្កដា|សីហា|កញ្ញា|តុលា|វិច្ឆិកា|ធ្នូ|ម|ក|ម|ម|ឧ|ម|ក|ស|ក|ត|វ|ធ|0|អាទិត្យ|ចន្ទ|អង្គារ|ពុធ|ព្រហ|សុក្រ|សៅរ៍|អាទិត្យ|ច័ន្ទ|អង្គារ|ពុធ|ព្រហស្បតិ៍|សុក្រ|សៅរ៍|អ|ច|អ|ព|ព|ស|ស|1|អាទិត្យ|ចន្ទ|អង្គារ|ពុធ|ព្រហ|សុក្រ|សៅរ៍|អាទិត្យ|ចន្ទ|អង្គារ|ពុធ|ព្រហស្បតិ៍|សុក្រ|សៅរ៍|អ|ច|អ|ព|ព|ស|ស|មុន គ.ស.|គ.ស.|មុន\u{200B}គ្រិស្តសករាជ|គ្រិស្តសករាជ|មុន គ.ស.|គ.ស.|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|47|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|GGGGG y-MM-dd|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|MMMM d|MMMMW-count-other|សប្តាហ៍ទី W នៃខែ MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|សប្តាហ៍ទី w នៃឆ្នាំ Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
