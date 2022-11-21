module Generated.Mn exposing (mn)

{-|

@docs mn

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "mn"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : y.MM.dd
  - Medium : y 'оны' MMM'ын' d
  - Long : y 'оны' MMMM'ын' d
  - Full : y 'оны' MMMM'ын' d, EEEE 'гараг'

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss (z)
  - Full : HH:mm:ss (zzzz)

-}
mn : Internal.Locale.Locale
mn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "mn||||ү.ө.|ү.х.|8|afternoon1|өдөр|am|ү.ө.|evening1|орой|midnight|шөнө дунд|morning1|өглөө|night1|шөнө|noon|үд дунд|pm|ү.х.|ү.ө.|ү.х.|8|afternoon1|өдөр|am|ү.ө.|evening1|орой|midnight|шөнө дунд|morning1|өглөө|night1|шөнө|noon|үд дунд|pm|ү.х.|ү.ө.|ү.х.|8|afternoon1|өдөр|am|ү.ө.|evening1|орой|midnight|шөнө дунд|morning1|өглөө|night1|шөнө|noon|үд дунд|pm|ү.х.|y.MM.dd|y 'оны' MMM'ын' d|y 'оны' MMMM'ын' d|y 'оны' MMMM'ын' d, EEEE 'гараг'|1-р сар|2-р сар|3-р сар|4-р сар|5-р сар|6-р сар|7-р сар|8-р сар|9-р сар|10-р сар|11-р сар|12-р сар|нэгдүгээр сар|хоёрдугаар сар|гуравдугаар сар|дөрөвдүгээр сар|тавдугаар сар|зургаадугаар сар|долоодугаар сар|наймдугаар сар|есдүгээр сар|аравдугаар сар|арван нэгдүгээр сар|арван хоёрдугаар сар|I|II|III|IV|V|VI|VII|VIII|IX|X|XI|XII|1|1-р сар|2-р сар|3-р сар|4-р сар|5-р сар|6-р сар|7-р сар|8-р сар|9-р сар|10-р сар|11-р сар|12-р сар|Нэгдүгээр сар|Хоёрдугаар сар|Гуравдугаар сар|Дөрөвдүгээр сар|Тавдугаар сар|Зургаадугаар сар|Долоодугаар сар|Наймдугаар сар|Есдүгээр сар|Аравдугаар сар|Арван нэгдүгээр сар|Арван хоёрдугаар сар|I|II|III|IV|V|VI|VII|VIII|IX|X|XI|XII|Ня|Да|Мя|Лх|Пү|Ба|Бя|ням|даваа|мягмар|лхагва|пүрэв|баасан|бямба|Ня|Да|Мя|Лх|Пү|Ба|Бя|1|Ня|Да|Мя|Лх|Пү|Ба|Бя|Ням|Даваа|Мягмар|Лхагва|Пүрэв|Баасан|Бямба|Ня|Да|Мя|Лх|Пү|Ба|Бя|МЭӨ|МЭ|манай эриний өмнөх|манай эриний|МЭӨ|МЭ|HH:mm|HH:mm:ss|HH:mm:ss (z)|HH:mm:ss (zzzz)|{1} {0}|{1} {0}|{1} {0}|{1} {0}|49|Bh|B h 'ц'|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E. B h:mm|EBhms|E. B h:mm:ss|Ed|dd. E|Ehm|E. h:mm a|EHm|E. HH:mm|Ehms|E. h:mm:ss a|EHms|E. HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y 'оны' MMM|GyMMMd|G y 'оны' MMM'ын' d|GyMMMEd|G y 'оны' MMM'ын' d. E|h|h 'ц' a|H|HH 'ц'|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a (v)|Hmsv|HH:mm:ss (v)|hmv|h:mm a (v)|Hmv|HH:mm (v)|M|LLLLL|Md|MMMMM/dd|MEd|MMMMM/dd. E|MMM|LLL|MMMd|MMM'ын' d|MMMEd|MMM'ын' d. E|MMMMd|MMMM'ын' d|MMMMW-count-one|MMMM'ын' W-'р' 'долоо' 'хоног'|MMMMW-count-other|MMMM'ын' W-'р' 'долоо' 'хоног'|ms|mm:ss|y|y|yM|y MMMMM|yMd|y.MM.dd|yMEd|y.MM.dd. E|yMMM|y 'оны' MMM|yMMMd|y 'оны' MMM'ын' d|yMMMEd|y 'оны' MMM'ын' d. E|yMMMM|y 'оны' MMMM|yQQQ|y 'оны' QQQ|yQQQQ|y 'оны' QQQQ|yw-count-one|Y 'оны' w-'р' 'долоо' 'хоног'|yw-count-other|Y 'оны' w-'р' 'долоо' 'хоног'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
