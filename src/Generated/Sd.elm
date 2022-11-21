module Generated.Sd exposing (sd, sd_Arab)

{-|

@docs sd, sd_Arab

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd : Internal.Locale.Locale
sd =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sd||||صبح، منجهند|شام، منجهند|2|am|صبح، منجهند|pm|شام، منجهند|صبح، منجهند|منجهند، شام|2|am|صبح، منجهند|pm|منجهند، شام|صبح، منجهند|منجهند، شام|2|am|صبح، منجهند|pm|منجهند، شام|y-MM-dd|y MMM d|y MMMM d|y MMMM d, EEEE|جنوري|فيبروري|مارچ|اپريل|مئي|جون|جولاءِ|آگسٽ|سيپٽمبر|آڪٽوبر|نومبر|ڊسمبر|جنوري|فيبروري|مارچ|اپريل|مئي|جون|جولاءِ|آگسٽ|سيپٽمبر|آڪٽوبر|نومبر|ڊسمبر|J|F|M|A|M|J|J|A|S|O|N|D|0|آچر|سومر|اڱارو|اربع|خميس|جمعو|ڇنڇر|آچر|سومر|اڱارو|اربع|خميس|جمعو|ڇنڇر|آچر|سو|اڱارو|اربع|خم|جمعو|ڇنڇر|0|BC|CD|قبل مسيح|عيسوي کان پهرين|BC|CD|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|MMMM d|MMMMW-count-one|ھفتو W جو MMMM|MMMMW-count-other|ھفتو W جو MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|ھفتو w جو Y|yw-count-other|ھفتو w جو Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd_Arab : Internal.Locale.Locale
sd_Arab =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "sd|Arab|||صبح، منجهند|شام، منجهند|2|am|صبح، منجهند|pm|شام، منجهند|صبح، منجهند|منجهند، شام|2|am|صبح، منجهند|pm|منجهند، شام|صبح، منجهند|منجهند، شام|2|am|صبح، منجهند|pm|منجهند، شام|y-MM-dd|y MMM d|y MMMM d|y MMMM d, EEEE|جنوري|فيبروري|مارچ|اپريل|مئي|جون|جولاءِ|آگسٽ|سيپٽمبر|آڪٽوبر|نومبر|ڊسمبر|جنوري|فيبروري|مارچ|اپريل|مئي|جون|جولاءِ|آگسٽ|سيپٽمبر|آڪٽوبر|نومبر|ڊسمبر|J|F|M|A|M|J|J|A|S|O|N|D|0|آچر|سومر|اڱارو|اربع|خميس|جمعو|ڇنڇر|آچر|سومر|اڱارو|اربع|خميس|جمعو|ڇنڇر|آچر|سو|اڱارو|اربع|خم|جمعو|ڇنڇر|0|BC|CD|قبل مسيح|عيسوي کان پهرين|BC|CD|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d, E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|M/d/y GGGGG|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|MEd|MM-dd, E|MMM|LLL|MMMd|MMM d|MMMEd|MMM d, E|MMMMd|MMMM d|MMMMW-count-one|ھفتو W جو MMMM|MMMMW-count-other|ھفتو W جو MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y MMM|yMMMd|y MMM d|yMMMEd|y MMM d, E|yMMMM|y MMMM|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|ھفتو w جو Y|yw-count-other|ھفتو w جو Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|"
        )
