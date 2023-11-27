module Generated.Ga exposing (ga, ga_GB)

{-|

@docs ga, ga_GB

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ga : Internal.Locale.Locale
ga =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ga||||r.n.|i.n.|2|am|r.n.|pm|i.n.|r.n.|i.n.|2|am|r.n.|pm|i.n.|r.n.|i.n.|2|am|r.n.|pm|i.n.|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|Ean|Feabh|Márta|Aib|Beal|Meith|Iúil|Lún|MFómh|DFómh|Samh|Noll|Eanáir|Feabhra|Márta|Aibreán|Bealtaine|Meitheamh|Iúil|Lúnasa|Meán Fómhair|Deireadh Fómhair|Samhain|Nollaig|E|F|M|A|B|M|I|L|M|D|S|N|0|Domh|Luan|Máirt|Céad|Déar|Aoine|Sath|Dé Domhnaigh|Dé Luain|Dé Máirt|Dé Céadaoin|Déardaoin|Dé hAoine|Dé Sathairn|D|L|M|C|D|A|S|0|RC|AD|Roimh Chríost|Anno Domini|RC|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|LL|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'seachtain' 'a' W 'i' MMMM|MMMMW-count-two|'seachtain' 'a' W 'i' MMMM|MMMMW-count-few|'seachtain' 'a' W 'i' MMMM|MMMMW-count-many|'seachtain' 'a' W 'i' MMMM|MMMMW-count-other|'seachtain' 'a' W 'i' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'seachtain' 'a' w 'in' Y|yw-count-two|'seachtain' 'a' w 'in' Y|yw-count-few|'seachtain' 'a' w 'in' Y|yw-count-many|'seachtain' 'a' w 'in' Y|yw-count-other|'seachtain' 'a' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ga_GB : Internal.Locale.Locale
ga_GB =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ga||GB||r.n.|i.n.|2|am|r.n.|pm|i.n.|r.n.|i.n.|2|am|r.n.|pm|i.n.|r.n.|i.n.|2|am|r.n.|pm|i.n.|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|Ean|Feabh|Márta|Aib|Beal|Meith|Iúil|Lún|MFómh|DFómh|Samh|Noll|Eanáir|Feabhra|Márta|Aibreán|Bealtaine|Meitheamh|Iúil|Lúnasa|Meán Fómhair|Deireadh Fómhair|Samhain|Nollaig|E|F|M|A|B|M|I|L|M|D|S|N|0|Domh|Luan|Máirt|Céad|Déar|Aoine|Sath|Dé Domhnaigh|Dé Luain|Dé Máirt|Dé Céadaoin|Déardaoin|Dé hAoine|Dé Sathairn|D|L|M|C|D|A|S|0|RC|AD|Roimh Chríost|Anno Domini|RC|AD|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|55|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|LL|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'seachtain' 'a' W 'i' MMMM|MMMMW-count-two|'seachtain' 'a' W 'i' MMMM|MMMMW-count-few|'seachtain' 'a' W 'i' MMMM|MMMMW-count-many|'seachtain' 'a' W 'i' MMMM|MMMMW-count-other|'seachtain' 'a' W 'i' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'seachtain' 'a' w 'in' Y|yw-count-two|'seachtain' 'a' w 'in' Y|yw-count-few|'seachtain' 'a' w 'in' Y|yw-count-many|'seachtain' 'a' w 'in' Y|yw-count-other|'seachtain' 'a' w 'in' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|"
        )
