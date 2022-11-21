module Generated.Fi exposing (fi)

{-|

@docs fi

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "fi"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 23, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 10, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 10, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 23, 0 ) ( 5, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d.M.y
  - Medium : d.M.y
  - Long : d. MMMM y
  - Full : cccc d. MMMM y

Time format strings:

  - Short : H.mm
  - Medium : H.mm.ss
  - Long : H.mm.ss z
  - Full : H.mm.ss zzzz

-}
fi : Internal.Locale.Locale
fi =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "fi||||ap.|ip.|9|afternoon1|iltap.|am|ap.|evening1|illalla|midnight|keskiyöllä|morning1|aamulla|morning2|aamup.|night1|yöllä|noon|keskip.|pm|ip.|ap.|ip.|9|afternoon1|iltapäivällä|am|ap.|evening1|illalla|midnight|keskiyöllä|morning1|aamulla|morning2|aamupäivällä|night1|yöllä|noon|keskipäivällä|pm|ip.|ap.|ip.|9|afternoon1|ip.|am|ap.|evening1|illalla|midnight|ky.|morning1|aamulla|morning2|ap.|night1|yöllä|noon|kp.|pm|ip.|d.M.y|d.M.y|d. MMMM y|cccc d. MMMM y|tammik.|helmik.|maalisk.|huhtik.|toukok.|kesäk.|heinäk.|elok.|syysk.|lokak.|marrask.|jouluk.|tammikuuta|helmikuuta|maaliskuuta|huhtikuuta|toukokuuta|kesäkuuta|heinäkuuta|elokuuta|syyskuuta|lokakuuta|marraskuuta|joulukuuta|T|H|M|H|T|K|H|E|S|L|M|J|1|tammi|helmi|maalis|huhti|touko|kesä|heinä|elo|syys|loka|marras|joulu|tammikuu|helmikuu|maaliskuu|huhtikuu|toukokuu|kesäkuu|heinäkuu|elokuu|syyskuu|lokakuu|marraskuu|joulukuu|T|H|M|H|T|K|H|E|S|L|M|J|su|ma|ti|ke|to|pe|la|sunnuntaina|maanantaina|tiistaina|keskiviikkona|torstaina|perjantaina|lauantaina|S|M|T|K|T|P|L|1|su|ma|ti|ke|to|pe|la|sunnuntai|maanantai|tiistai|keskiviikko|torstai|perjantai|lauantai|S|M|T|K|T|P|L|eKr.|jKr.|ennen Kristuksen syntymää|jälkeen Kristuksen syntymän|eKr|jKr|H.mm|H.mm.ss|H.mm.ss z|H.mm.ss zzzz|{1} {0}|{1} 'klo' {0}|{1} 'klo' {0}|{1} 'klo' {0}|56|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|E d.|Ehm|E h.mm a|EHm|E H.mm|Ehms|E h.mm.ss a|EHms|E H.mm.ss|Gy|y G|GyMd|M.d.y G|GyMMM|LLL y G|GyMMMd|d. MMM y G|GyMMMEd|E d. MMM y G|GyMMMMd|d. MMMM y G|GyMMMMEd|E d. MMMM y G|h|h a|H|H|hm|h.mm a|Hm|H.mm|hms|h.mm.ss a|Hms|H.mm.ss|hmsv|h.mm.ss a v|Hmsv|H.mm.ss v|hmv|h.mm a v|Hmv|H.mm v|M|L|Md|d.M.|MEd|E d.M.|MMM|LLL|MMMd|d. MMM|MMMEd|ccc d. MMM|MMMMd|d. MMMM|MMMMEd|ccc d. MMMM|MMMMW-count-one|LLLL'n' W. 'viikko'|MMMMW-count-other|LLLL'n' W. 'viikko'|ms|m.ss|y|y|yM|L.y|yMd|d.M.y|yMEd|E d.M.y|yMM|M.y|yMMM|LLL y|yMMMd|d. MMM y|yMMMEd|E d. MMM y|yMMMM|LLLL y|yMMMMccccd|cccc d. MMMM y|yMMMMd|d. MMMM y|yMMMMEd|E d. MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'vuoden' Y 'viikko' w|yw-count-other|'vuoden' Y 'viikko' w|Hmm|Hmmss|Hmmssz|Hmmsszzzz|"
        )
