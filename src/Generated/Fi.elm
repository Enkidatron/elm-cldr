module Generated.Fi exposing (fi)

{-|

@docs fi

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.PluralRule


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


pluralRules : Internal.PluralRule.PluralRulesInfo
pluralRules =
    { one =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.I
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    [ { variable = Internal.PluralRule.V
                      , modBy = Nothing
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
                      }
                    ]
                )
                []
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


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
            pluralRules
            "fi||||ap.|ip.|9|afternoon1|iltap.|am|ap.|evening1|illalla|midnight|keskiyöllä|morning1|aamulla|morning2|aamup.|night1|yöllä|noon|keskip.|pm|ip.|ap.|ip.|9|afternoon1|iltapäivällä|am|ap.|evening1|illalla|midnight|keskiyöllä|morning1|aamulla|morning2|aamupäivällä|night1|yöllä|noon|keskipäivällä|pm|ip.|ap.|ip.|9|afternoon1|ip.|am|ap.|evening1|illalla|midnight|ky.|morning1|aamulla|morning2|ap.|night1|yöllä|noon|kp.|pm|ip.|d.M.y|d.M.y|d. MMMM y|cccc d. MMMM y|tammi|helmi|maalis|huhti|touko|kesä|heinä|elo|syys|loka|marras|joulu|tammikuuta|helmikuuta|maaliskuuta|huhtikuuta|toukokuuta|kesäkuuta|heinäkuuta|elokuuta|syyskuuta|lokakuuta|marraskuuta|joulukuuta|T|H|M|H|T|K|H|E|S|L|M|J|1|tammi|helmi|maalis|huhti|touko|kesä|heinä|elo|syys|loka|marras|joulu|tammikuu|helmikuu|maaliskuu|huhtikuu|toukokuu|kesäkuu|heinäkuu|elokuu|syyskuu|lokakuu|marraskuu|joulukuu|T|H|M|H|T|K|H|E|S|L|M|J|su|ma|ti|ke|to|pe|la|sunnuntai|maanantaina|tiistaina|keskiviikkona|torstaina|perjantaina|lauantaina|S|M|T|K|T|P|L|1|su|ma|ti|ke|to|pe|la|sunnuntai|maanantai|tiistai|keskiviikko|torstai|perjantai|lauantai|S|M|T|K|T|P|L|eKr.|jKr.|ennen Kristuksen syntymää|jälkeen Kristuksen syntymän|eKr|jKr|H.mm|H.mm.ss|H.mm.ss z|H.mm.ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|56|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|E d.|Ehm|E h.mm\u{202F}a|EHm|E H.mm|Ehms|E h.mm.ss\u{202F}a|EHms|E H.mm.ss|Gy|y G|GyMd|M.d.y G|GyMMM|LLL y G|GyMMMd|d.M.y G|GyMMMEd|E d.M.y G|GyMMMMd|d. MMMM y G|GyMMMMEd|E d. MMMM y G|h|h\u{202F}a|H|H|hm|h.mm\u{202F}a|Hm|H.mm|hms|h.mm.ss\u{202F}a|Hms|H.mm.ss|hmsv|h.mm.ss\u{202F}a v|Hmsv|H.mm.ss v|hmv|h.mm\u{202F}a v|Hmv|H.mm v|M|L|Md|d.M.|MEd|E d.M.|MMM|LLL|MMMd|d.M.|MMMEd|ccc d.M.|MMMMd|d. MMMM|MMMMEd|ccc d. MMMM|MMMMW-count-one|LLLL'n' W. 'viikko'|MMMMW-count-other|LLLL'n' W. 'viikko'|ms|m.ss|y|y|yM|L.y|yMd|d.M.y|yMEd|E d.M.y|yMM|M.y|yMMM|LLL y|yMMMd|d.M.y|yMMMEd|E d.M.y|yMMMM|LLLL y|yMMMMccccd|cccc d. MMMM y|yMMMMd|d. MMMM y|yMMMMEd|E d. MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'vuoden' Y 'viikko' w|yw-count-other|'vuoden' Y 'viikko' w|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W\u{00A0}|,|−||||||E2W\u{00A0}|,|−|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|−|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|AOA|ARS|ARS|AUD|AUD|AZN|₼|BAM|BAM|BBD|BBD|BDT|BDT|BMD|BMD|BND|BND|BOB|BOB|BRL|BRL|BSD|BSD|BWP|BWP|BZD|BZD|CAD|CAD|CLP|CLP|CNY|CNY|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CZK|CZK|DKK|DKK|DOP|DOP|EGP|EGP|ESP|ESP|EUR|€|FIM|mk|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GH₵|GIP|GIP|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HKD|HNL|HNL|HRK|HRK|HUF|HUF|IDR|IDR|ILS|ILS|INR|INR|ISK|ISK|JMD|JMD|JPY|¥|KGS|⃀|KHR|KHR|KMF|KMF|KPW|KPW|KRW|KRW|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LTL|LTL|LVL|LVL|MGA|MGA|MMK|MMK|MNT|MNT|MUR|MUR|MXN|MXN|MYR|MYR|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZD|PHP|PHP|PKR|PKR|PLN|PLN|PYG|PYG|RON|RON|RUB|₽|RWF|RWF|SBD|SBD|SEK|SEK|SGD|SGD|SHP|SHP|SRD|SRD|SSP|SSP|STN|STD|SYP|SYP|THB|THB|TOP|TOP|TRY|TRY|TTD|TTD|TWD|TWD|UAH|UAH|USD|$|UYU|UYU|VEF|VEF|VND|VND|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|XPF|XXX|XXX|ZAR|ZAR|ZMW|ZMW|{0} v|1|{0} v|0||0||0||0|||{0} kk|1|{0} kk|0||0||0||0|||{0} vk|1|{0} vk|0||0||0||0|||{0} pv|1|{0} pv|0||0||0||0|||{0} t|1|{0} t|0||0||0||0|||{0} min|0||0||0||0||0|||{0} s|0||0||0||0||0|||{0} ms|0||0||0||0||0|||{0} vuotta|1|{0} vuosi|0||0||0||0|||{0} kuukautta|1|{0} kuukausi|0||0||0||0|||{0} viikkoa|1|{0} viikko|0||0||0||0|||{0} päivää|1|{0} päivä|0||0||0||0|||{0} tuntia|1|{0} tunti|0||0||0||0|||{0} minuuttia|1|{0} minuutti|0||0||0||0|||{0} sekuntia|1|{0} sekunti|0||0||0||0|||{0} millisekuntia|1|{0} millisekunti|0||0||0||0|||{0}v|1|{0}v|0||0||0||0|||{0}kk|1|{0}kk|0||0||0||0|||{0}vk|1|{0}vk|0||0||0||0|||{0}pv|1|{0}pv|0||0||0||0|||{0}t|1|{0}t|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} ja {1}|{0} ja {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
