module Generated.As exposing (locale_as)

{-|

@docs locale_as

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : d-M-y
  - Medium : dd-MM-y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h.mm
  - Medium : a h.mm.ss
  - Long : a h.mm.ss z
  - Full : a h.mm.ss zzzz

-}
locale_as : Internal.Locale.Locale
locale_as =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "as||||পূৰ্বাহ্ন|অপৰাহ্ন|2|am|পূৰ্বাহ্ন|pm|অপৰাহ্ন|পূৰ্বাহ্ন|অপৰাহ্ন|2|am|পূৰ্বাহ্ন|pm|অপৰাহ্ন|পূৰ্বাহ্ন|অপৰাহ্ন|2|am|পূৰ্বাহ্ন|pm|অপৰাহ্ন|d-M-y|dd-MM-y|d MMMM, y|EEEE, d MMMM, y|জানু|ফেব্ৰু|মাৰ্চ|এপ্ৰিল|মে’|জুন|জুলাই|আগ|ছেপ্তে|অক্টো|নৱে|ডিচে|জানুৱাৰী|ফেব্ৰুৱাৰী|মাৰ্চ|এপ্ৰিল|মে’|জুন|জুলাই|আগষ্ট|ছেপ্তেম্বৰ|অক্টোবৰ|নৱেম্বৰ|ডিচেম্বৰ|জ|ফ|ম|এ|ম|জ|জ|আ|ছ|অ|ন|ড|0|দেও|সোম|মঙ্গল|বুধ|বৃহ|শুক্ৰ|শনি|দেওবাৰ|সোমবাৰ|মঙ্গলবাৰ|বুধবাৰ|বৃহস্পতিবাৰ|শুক্ৰবাৰ|শনিবাৰ|দ|স|ম|ব|ব|শ|শ|0|খ্ৰীঃ পূঃ|খ্ৰীঃ|খ্ৰীষ্টপূৰ্ব|খ্ৰীষ্টাব্দ|খ্ৰীঃ পূঃ|খ্ৰীঃ|a h.mm|a h.mm.ss|a h.mm.ss z|a h.mm.ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|E d|Ehm|E a h:mm|EHm|E HH:mm|Ehms|E a h:mm:ss|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|a h|H|HH|hm|a h:mm|Hm|HH:mm|hms|a h:mm:ss|Hms|HH:mm:ss|hmsv|a h:mm:ss v|Hmsv|HH:mm:ss v|hmv|a h:mm v|Hmv|HH:mm v|M|L|Md|dd-MM|MEd|E, dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|MMMMৰ সপ্তাহ W|MMMMW-count-other|MMMMৰ সপ্তাহ W|ms|mm:ss|y|y|yM|MM-y|yMd|dd-MM-y|yMEd|E, dd-MM-y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Yৰ সপ্তাহ w|yw-count-other|Yৰ সপ্তাহ w|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
