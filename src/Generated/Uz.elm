module Generated.Uz exposing (uz, uz_Latn)

{-|

@docs uz, uz_Latn

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "uz"
          , [ Internal.DayPeriodRule.FromBefore ( 11, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 22, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 11, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 22, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d-MMM, y
  - Long : d-MMMM, y
  - Full : EEEE, d-MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
uz : Internal.Locale.Locale
uz =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "uz||||TO|TK|8|afternoon1|kunduzi|am|TO|evening1|kechqurun|midnight|yarim tun|morning1|ertalab|night1|kechasi|noon|tush payti|pm|TK|TO|TK|8|afternoon1|kunduzi|am|TO|evening1|kechqurun|midnight|yarim tun|morning1|ertalab|night1|kechasi|noon|tush payti|pm|TK|TO|TK|8|afternoon1|kunduzi|am|TO|evening1|kechqurun|midnight|yarim tun|morning1|ertalab|night1|kechasi|noon|tush payti|pm|TK|dd/MM/yy|d-MMM, y|d-MMMM, y|EEEE, d-MMMM, y|yan|fev|mar|apr|may|iyn|iyl|avg|sen|okt|noy|dek|yanvar|fevral|mart|aprel|may|iyun|iyul|avgust|sentabr|oktabr|noyabr|dekabr|Y|F|M|A|M|I|I|A|S|O|N|D|1|Yan|Fev|Mar|Apr|May|Iyn|Iyl|Avg|Sen|Okt|Noy|Dek|Yanvar|Fevral|Mart|Aprel|May|Iyun|Iyul|Avgust|Sentabr|Oktabr|Noyabr|Dekabr|Y|F|M|A|M|I|I|A|S|O|N|D|Yak|Dush|Sesh|Chor|Pay|Jum|Shan|yakshanba|dushanba|seshanba|chorshanba|payshanba|juma|shanba|Y|D|S|C|P|J|S|0|m.a.|milodiy|miloddan avvalgi|milodiy|m.a.|milodiy|HH:mm|HH:mm:ss|H:mm:ss (z)|H:mm:ss (zzzz)|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E, B h:mm|EBhms|E, B h:mm:ss|Ed|d, E|Ehm|E, h:mm a|EHm|E, HH:mm|Ehms|E, h:mm:ss a|EHms|E, HH:mm:ss|Gy|G y|GyMd|dd.MM.y GGGGG|GyMMM|MMM, G y|GyMMMd|d-MMM, G y|GyMMMEd|E, d-MMM, G y|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a (v)|Hmsv|HH:mm:ss (v)|hmv|h:mm a (v)|Hmv|HH:mm (v)|M|LL|Md|dd/MM|MEd|E, dd/MM|MMM|LLL|MMMd|d-MMM|MMMEd|E, d-MMM|MMMMd|d-MMMM|MMMMW-count-one|MMMM, W-'hafta'|MMMMW-count-other|MMMM, W-'hafta'|ms|mm:ss|y|y|yM|MM.y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM, y|yMMMd|d-MMM, y|yMMMEd|E, d-MMM, y|yMMMM|MMMM, y|yQQQ|y, QQQ|yQQQQ|y, QQQQ|yw-count-one|Y, w-'hafta'|yw-count-other|Y, w-'hafta'|HHmm|HHmmss|Hmmssz|Hmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d-MMM, y
  - Long : d-MMMM, y
  - Full : EEEE, d-MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
uz_Latn : Internal.Locale.Locale
uz_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "uz|Latn|||TO|TK|8|afternoon1|kunduzi|am|TO|evening1|kechqurun|midnight|yarim tun|morning1|ertalab|night1|kechasi|noon|tush payti|pm|TK|TO|TK|8|afternoon1|kunduzi|am|TO|evening1|kechqurun|midnight|yarim tun|morning1|ertalab|night1|kechasi|noon|tush payti|pm|TK|TO|TK|8|afternoon1|kunduzi|am|TO|evening1|kechqurun|midnight|yarim tun|morning1|ertalab|night1|kechasi|noon|tush payti|pm|TK|dd/MM/yy|d-MMM, y|d-MMMM, y|EEEE, d-MMMM, y|yan|fev|mar|apr|may|iyn|iyl|avg|sen|okt|noy|dek|yanvar|fevral|mart|aprel|may|iyun|iyul|avgust|sentabr|oktabr|noyabr|dekabr|Y|F|M|A|M|I|I|A|S|O|N|D|1|Yan|Fev|Mar|Apr|May|Iyn|Iyl|Avg|Sen|Okt|Noy|Dek|Yanvar|Fevral|Mart|Aprel|May|Iyun|Iyul|Avgust|Sentabr|Oktabr|Noyabr|Dekabr|Y|F|M|A|M|I|I|A|S|O|N|D|Yak|Dush|Sesh|Chor|Pay|Jum|Shan|yakshanba|dushanba|seshanba|chorshanba|payshanba|juma|shanba|Y|D|S|C|P|J|S|0|m.a.|milodiy|miloddan avvalgi|milodiy|m.a.|milodiy|HH:mm|HH:mm:ss|H:mm:ss (z)|H:mm:ss (zzzz)|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E, B h:mm|EBhms|E, B h:mm:ss|Ed|d, E|Ehm|E, h:mm a|EHm|E, HH:mm|Ehms|E, h:mm:ss a|EHms|E, HH:mm:ss|Gy|G y|GyMd|dd.MM.y GGGGG|GyMMM|MMM, G y|GyMMMd|d-MMM, G y|GyMMMEd|E, d-MMM, G y|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a (v)|Hmsv|HH:mm:ss (v)|hmv|h:mm a (v)|Hmv|HH:mm (v)|M|LL|Md|dd/MM|MEd|E, dd/MM|MMM|LLL|MMMd|d-MMM|MMMEd|E, d-MMM|MMMMd|d-MMMM|MMMMW-count-one|MMMM, W-'hafta'|MMMMW-count-other|MMMM, W-'hafta'|ms|mm:ss|y|y|yM|MM.y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM, y|yMMMd|d-MMM, y|yMMMEd|E, d-MMM, y|yMMMM|MMMM, y|yQQQ|y, QQQ|yQQQQ|y, QQQQ|yw-count-one|Y, w-'hafta'|yw-count-other|Y, w-'hafta'|HHmm|HHmmss|Hmmssz|Hmmsszzzz|"
        )
