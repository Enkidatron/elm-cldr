module Generated.Kn exposing (kn)

{-|

@docs kn

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "kn"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : hh:mm a
  - Medium : hh:mm:ss a
  - Long : hh:mm:ss a z
  - Full : hh:mm:ss a zzzz

-}
kn : Internal.Locale.Locale
kn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "kn||||ಪೂರ್ವಾಹ್ನ|ಅಪರಾಹ್ನ|7|afternoon1|ಮಧ್ಯಾಹ್ನ|am|ಪೂರ್ವಾಹ್ನ|evening1|ಸಂಜೆ|midnight|ಮಧ್ಯ ರಾತ್ರಿ|morning1|ಬೆಳಗ್ಗೆ|night1|ರಾತ್ರಿ|pm|ಅಪರಾಹ್ನ|ಪೂರ್ವಾಹ್ನ|ಅಪರಾಹ್ನ|7|afternoon1|ಮಧ್ಯಾಹ್ನ|am|ಪೂರ್ವಾಹ್ನ|evening1|ಸಂಜೆ|midnight|ಮಧ್ಯ ರಾತ್ರಿ|morning1|ಬೆಳಗ್ಗೆ|night1|ರಾತ್ರಿ|pm|ಅಪರಾಹ್ನ|ಪೂ|ಅ|7|afternoon1|ಮಧ್ಯಾಹ್ನ|am|ಪೂ|evening1|ಸಂಜೆ|midnight|ಮಧ್ಯರಾತ್ರಿ|morning1|ಬೆಳಗ್ಗೆ|night1|ರಾತ್ರಿ|pm|ಅ|d/M/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|ಜನವರಿ|ಫೆಬ್ರವರಿ|ಮಾರ್ಚ್|ಏಪ್ರಿ|ಮೇ|ಜೂನ್|ಜುಲೈ|ಆಗಸ್ಟ್|ಸೆಪ್ಟೆಂ|ಅಕ್ಟೋ|ನವೆಂ|ಡಿಸೆಂ|ಜನವರಿ|ಫೆಬ್ರವರಿ|ಮಾರ್ಚ್|ಏಪ್ರಿಲ್|ಮೇ|ಜೂನ್|ಜುಲೈ|ಆಗಸ್ಟ್|ಸೆಪ್ಟೆಂಬರ್|ಅಕ್ಟೋಬರ್|ನವೆಂಬರ್|ಡಿಸೆಂಬರ್|ಜ|ಫೆ|ಮಾ|ಏ|ಮೇ|ಜೂ|ಜು|ಆ|ಸೆ|ಅ|ನ|ಡಿ|1|ಜನ|ಫೆಬ್ರ|ಮಾರ್ಚ್|ಏಪ್ರಿ|ಮೇ|ಜೂನ್|ಜುಲೈ|ಆಗ|ಸೆಪ್ಟೆಂ|ಅಕ್ಟೋ|ನವೆಂ|ಡಿಸೆಂ|ಜನವರಿ|ಫೆಬ್ರವರಿ|ಮಾರ್ಚ್|ಏಪ್ರಿಲ್|ಮೇ|ಜೂನ್|ಜುಲೈ|ಆಗಸ್ಟ್|ಸೆಪ್ಟೆಂಬರ್|ಅಕ್ಟೋಬರ್|ನವೆಂಬರ್|ಡಿಸೆಂಬರ್|ಜ|ಫೆ|ಮಾ|ಏ|ಮೇ|ಜೂ|ಜು|ಆ|ಸೆ|ಅ|ನ|ಡಿ|ಭಾನು|ಸೋಮ|ಮಂಗಳ|ಬುಧ|ಗುರು|ಶುಕ್ರ|ಶನಿ|ಭಾನುವಾರ|ಸೋಮವಾರ|ಮಂಗಳವಾರ|ಬುಧವಾರ|ಗುರುವಾರ|ಶುಕ್ರವಾರ|ಶನಿವಾರ|ಭಾ|ಸೋ|ಮಂ|ಬು|ಗು|ಶು|ಶ|0|ಕ್ರಿ.ಪೂ|ಕ್ರಿ.ಶ|ಕ್ರಿಸ್ತ ಪೂರ್ವ|ಕ್ರಿಸ್ತ ಶಕ|ಕ್ರಿ.ಪೂ|ಕ್ರಿ.ಶ|hh:mm a|hh:mm:ss a|hh:mm:ss a z|hh:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|d/M, E|MMdd|dd-MM|MMM|LLL|MMMd|MMM d|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, M/d/y|yMM|MM-y|yMMM|MMM y|yMMMd|MMM d,y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|'week' w 'of' Y|ahhmm|ahhmmss|ahhmmssz|ahhmmsszzzz|"
        )
