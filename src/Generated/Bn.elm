module Generated.Bn exposing (bn, bn_IN)

{-|

@docs bn, bn_IN

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "bn"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
bn : Internal.Locale.Locale
bn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "bn||||AM|PM|8|afternoon1|দুপুর|afternoon2|বিকাল|am|AM|evening1|সন্ধ্যা|morning1|ভোর|morning2|সকাল|night1|রাত্রি|pm|PM|AM|PM|8|afternoon1|দুপুরবেলায়|afternoon2|বিকাল|am|AM|evening1|সন্ধ্যাবেলায়|morning1|ভোরবেলায়|morning2|সকালবেলায়|night1|রাত্রিবেলায়|pm|PM|AM|PM|8|afternoon1|দুপুর|afternoon2|বিকাল|am|AM|evening1|সন্ধ্যা|morning1|ভোর|morning2|সকাল|night1|রাত্রি|pm|PM|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|জানু|ফেব|মার্চ|এপ্রি|মে|জুন|জুল|আগ|সেপ|অক্টো|নভে|ডিসে|জানুয়ারী|ফেব্রুয়ারী|মার্চ|এপ্রিল|মে|জুন|জুলাই|আগস্ট|সেপ্টেম্বর|অক্টোবর|নভেম্বর|ডিসেম্বর|জা|ফে|মা|এ|মে|জুন|জু|আ|সে|অ|ন|ডি|1|জানু|ফেব|মার্চ|এপ্রিল|মে|জুন|জুলাই|আগস্ট|সেপ্টেম্বর|অক্টোবর|নভেম্বর|ডিসেম্বর|জানুয়ারী|ফেব্রুয়ারী|মার্চ|এপ্রিল|মে|জুন|জুলাই|আগস্ট|সেপ্টেম্বর|অক্টোবর|নভেম্বর|ডিসেম্বর|জা|ফে|মা|এ|মে|জুন|জু|আ|সে|অ|ন|ডি|রবি|সোম|মঙ্গল|বুধ|বৃহস্পতি|শুক্র|শনি|রবিবার|সোমবার|মঙ্গলবার|বুধবার|বৃহস্পতিবার|শুক্রবার|শনিবার|র|সো|ম|বু|বৃ|শু|শ|0|খ্রিস্টপূর্ব|খৃষ্টাব্দ|খ্রিস্টপূর্ব|খ্রীষ্টাব্দ|খ্রিস্টপূর্ব|খৃষ্টাব্দ|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM, y G|GyMMMEd|E, d MMM, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d-M|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|MMMM এর Wয় সপ্তাহ|MMMMW-count-other|MMMM এর Wয় সপ্তাহ|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y এর wতম সপ্তাহ|yw-count-other|Y এর wতম সপ্তাহ|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
bn_IN : Internal.Locale.Locale
bn_IN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "bn||IN||AM|PM|8|afternoon1|দুপুর|afternoon2|বিকাল|am|AM|evening1|সন্ধ্যা|morning1|ভোর|morning2|সকাল|night1|রাত্রি|pm|PM|AM|PM|8|afternoon1|দুপুরবেলায়|afternoon2|বিকাল|am|AM|evening1|সন্ধ্যাবেলায়|morning1|ভোরবেলায়|morning2|সকালবেলায়|night1|রাত্রি|pm|PM|AM|PM|8|afternoon1|দুপুর|afternoon2|বিকাল|am|AM|evening1|সন্ধ্যা|morning1|ভোর|morning2|সকাল|night1|রাত্রি|pm|PM|d/M/yy|d MMM, y|d MMMM, y|EEEE, d MMMM, y|জানু|ফেব|মার্চ|এপ্রি|মে|জুন|জুল|আগ|সেপ্টেঃ|অক্টোঃ|নভেঃ|ডিসেঃ|জানুয়ারী|ফেব্রুয়ারী|মার্চ|এপ্রিল|মে|জুন|জুলাই|আগস্ট|সেপ্টেম্বর|অক্টোবর|নভেম্বর|ডিসেম্বর|জা|ফে|মা|এ|মে|জুন|জুল|আ|সে|অ|ন|ডি|1|জানু|ফেব|মার্চ|এপ্রিল|মে|জুন|জুলাই|আগস্ট|সেপ্টেঃ|অক্টোঃ|নভেঃ|ডিসেঃ|জানুয়ারী|ফেব্রুয়ারী|মার্চ|এপ্রিল|মে|জুন|জুলাই|আগস্ট|সেপ্টেম্বর|অক্টোবর|নভেম্বর|ডিসেম্বর|জা|ফে|মা|এ|মে|জুন|জুল|আ|সে|অ|ন|ডি|রবি|সোম|মঙ্গল|বুধ|বৃহস্পতি|শুক্র|শনি|রবিবার|সোমবার|মঙ্গলবার|বুধবার|বৃহস্পতিবার|শুক্রবার|শনিবার|র|সো|ম|বু|বৃ|শু|শ|0|খ্রিঃপূঃ|খ্রিঃ|খ্রিঃপূঃ|খ্রিষ্টাব্দ|খ্রিঃপূঃ|খ্রিঃ|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM, y G|GyMMMEd|E, d MMM, y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d-M|MMdd|dd-MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|MMMM এর W নম্বর সপ্তাহ|MMMMW-count-other|MMMM এর W নম্বর সপ্তাহ|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM-y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y এর wতম সপ্তাহ|yw-count-other|Y এর wতম সপ্তাহ|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
