module Generated.Ml exposing (ml)

{-|

@docs ml

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ml"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 14, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 14, 0 ) ( 15, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 15, 0 ) ( 18, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 19, 0 ) "evening2"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 3, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y, MMM d
  - Long : y, MMMM d
  - Full : y, MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ml : Internal.Locale.Locale
ml =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ml||||AM|PM|11|afternoon1|ഉച്ചയ്ക്ക്|afternoon2|ഉച്ചതിരിഞ്ഞ്|am|AM|evening1|വൈകുന്നേരം|evening2|സന്ധ്യ|midnight|അർദ്ധരാത്രി|morning1|പുലർച്ചെ|morning2|രാവിലെ|night1|രാത്രി|noon|ഉച്ച|pm|PM|AM|PM|11|afternoon1|ഉച്ചയ്ക്ക്|afternoon2|ഉച്ചതിരിഞ്ഞ്|am|AM|evening1|വൈകുന്നേരം|evening2|സന്ധ്യ|midnight|അർദ്ധരാത്രി|morning1|പുലർച്ചെ|morning2|രാവിലെ|night1|രാത്രി|noon|ഉച്ച|pm|PM|AM|PM|11|afternoon1|ഉച്ചയ്ക്ക്|afternoon2|ഉച്ചതിരിഞ്ഞ്|am|AM|evening1|വൈകുന്നേരം|evening2|സന്ധ്യ|midnight|അ|morning1|പുലർച്ചെ|morning2|രാവിലെ|night1|രാത്രി|noon|ഉച്ച|pm|PM|d/M/yy|y, MMM d|y, MMMM d|y, MMMM d, EEEE|ജനു|ഫെബ്രു|മാർ|ഏപ്രി|മേയ്|ജൂൺ|ജൂലൈ|ഓഗ|സെപ്റ്റം|ഒക്ടോ|നവം|ഡിസം|ജനുവരി|ഫെബ്രുവരി|മാർച്ച്|ഏപ്രിൽ|മേയ്|ജൂൺ|ജൂലൈ|ഓഗസ്റ്റ്|സെപ്റ്റംബർ|ഒക്\u{200C}ടോബർ|നവംബർ|ഡിസംബർ|ജ|ഫെ|മാ|ഏ|മെ|ജൂൺ|ജൂ|ഓ|സെ|ഒ|ന|ഡി|0|ഞായർ|തിങ്കൾ|ചൊവ്വ|ബുധൻ|വ്യാഴം|വെള്ളി|ശനി|ഞായറാഴ്\u{200C}ച|തിങ്കളാഴ്\u{200C}ച|ചൊവ്വാഴ്ച|ബുധനാഴ്\u{200C}ച|വ്യാഴാഴ്\u{200C}ച|വെള്ളിയാഴ്\u{200C}ച|ശനിയാഴ്\u{200C}ച|ഞ|തി|ചൊ|ബു|വ്യാ|വെ|ശ|1|ഞായർ|തിങ്കൾ|ചൊവ്വ|ബുധൻ|വ്യാഴം|വെള്ളി|ശനി|ഞായറാഴ്\u{200C}ച|തിങ്കളാഴ്\u{200C}ച|ചൊവ്വാഴ്\u{200C}ച|ബുധനാഴ്\u{200C}ച|വ്യാഴാഴ്\u{200C}ച|വെള്ളിയാഴ്\u{200C}ച|ശനിയാഴ്\u{200C}ച|ഞാ|തി|ചൊ|ബു|വ്യാ|വെ|ശ|ക്രി.മു.|എഡി|ക്രിസ്\u{200C}തുവിന് മുമ്പ്|ആന്നോ ഡൊമിനി|ക്രി.മു.|എഡി|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E, B h:mm|EBhms|E, B h:mm:ss|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|d/M, E|MMdd|dd/MM|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|MMMM d|MMMMEd|MMMM d, E|MMMMW-count-one|MMMM - ആഴ്ച W|MMMMW-count-other|MMMM - ആഴ്ച W|ms|mm:ss|y|y|yM|y-MM|yMd|d/M/y|yMEd|d-M-y, E|yMM|y-MM|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y-ലെ ആഴ്ച w|yw-count-other|Y-ലെ ആഴ്ച w|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
