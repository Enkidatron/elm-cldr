module Generated.Lt exposing (lt)

{-|

@docs lt

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
        [ ( "lt"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 6, 0 ) "night1"
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
                    { variable = Internal.PluralRule.N
                    , modBy = Just 10
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    [ { variable = Internal.PluralRule.N
                      , modBy = Just 100
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Range 11 19, [] )
                      }
                    ]
                )
                []
            )
    , two = Nothing
    , zero = Nothing
    , few =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Just 10
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Range 2 9, [] )
                    }
                    [ { variable = Internal.PluralRule.N
                      , modBy = Just 100
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Range 11 19, [] )
                      }
                    ]
                )
                []
            )
    , many =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.F
                    , modBy = Nothing
                    , operator = Internal.PluralRule.NotEquals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    []
                )
                []
            )
    }


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y-MM-dd
  - Long : y 'm'. MMMM d 'd'.
  - Full : y 'm'. MMMM d 'd'., EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lt : Internal.Locale.Locale
lt =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "lt||||priešpiet|popiet|8|afternoon1|popietė|am|priešpiet|evening1|vakaras|midnight|vidurnaktis|morning1|rytas|night1|naktis|noon|perpiet|pm|popiet|priešpiet|popiet|8|afternoon1|popietė|am|priešpiet|evening1|vakaras|midnight|vidurnaktis|morning1|rytas|night1|naktis|noon|perpiet|pm|popiet|pr.\u{202F}p.|pop.|8|afternoon1|popietė|am|pr.\u{202F}p.|evening1|vakaras|midnight|vidurnaktis|morning1|rytas|night1|naktis|noon|perpiet|pm|pop.|y-MM-dd|y-MM-dd|y 'm'. MMMM d 'd'.|y 'm'. MMMM d 'd'., EEEE|saus.|vas.|kov.|bal.|geg.|birž.|liep.|rugp.|rugs.|spal.|lapkr.|gruod.|sausio|vasario|kovo|balandžio|gegužės|birželio|liepos|rugpjūčio|rugsėjo|spalio|lapkričio|gruodžio|S|V|K|B|G|B|L|R|R|S|L|G|1|saus.|vas.|kov.|bal.|geg.|birž.|liep.|rugp.|rugs.|spal.|lapkr.|gruod.|sausis|vasaris|kovas|balandis|gegužė|birželis|liepa|rugpjūtis|rugsėjis|spalis|lapkritis|gruodis|S|V|K|B|G|B|L|R|R|S|L|G|sk|pr|an|tr|kt|pn|št|sekmadienis|pirmadienis|antradienis|trečiadienis|ketvirtadienis|penktadienis|šeštadienis|S|P|A|T|K|P|Š|0|pr. Kr.|po Kr.|prieš Kristų|po Kristaus|pr. Kr.|po Kr.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|61|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|dd|E|ccc|EBhm|h:mm B, E|EBhms|h:mm:ss B, E|Ed|d, E|Ehm|hh:mm\u{202F}a, E|EHm|HH:mm, E|Ehms|hh:mm:ss\u{202F}a, E|EHms|HH:mm:ss, E|Gy|y 'm'. G|GyMd|y-MM-dd G|GyMMM|y-MM G|GyMMMd|y-MM-dd G|GyMMMEd|y-MM-dd G, E|GyMMMM|y 'm'. G, LLLL|GyMMMMd|y 'm'. G MMMM d 'd'.|GyMMMMEd|y 'm'. G MMMM d 'd'., E|h|hh\u{202F}a|H|HH|hm|hh:mm\u{202F}a|Hm|HH:mm|hms|hh:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|hh:mm:ss\u{202F}a; v|Hmsv|HH:mm:ss; v|hmv|hh:mm\u{202F}a; v|Hmv|HH:mm; v|M|MM|Md|MM-d|MEd|MM-dd, E|MMdd|MM-dd|MMM|MM|MMMd|MM-dd|MMMEd|MM-dd, E|MMMM|LLLL|MMMMd|MMMM d 'd'.|MMMMEd|MMMM d 'd'., E|MMMMW-count-one|MMMM W 'sav'.|MMMMW-count-few|MMMM W 'sav'.|MMMMW-count-many|MMMM W 'sav'.|MMMMW-count-other|MMMM W 'sav'.|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|y-MM-dd, E|yMMM|y-MM|yMMMd|y-MM-dd|yMMMEd|y-MM-dd, E|yMMMM|y 'm'. LLLL|yMMMMd|y 'm'. MMMM d 'd'.|yMMMMEd|y 'm'. MMMM d 'd'., E|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y w 'sav'.|yw-count-few|Y w 'sav'.|yw-count-many|Y w 'sav'.|yw-count-other|Y w 'sav'.|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|−||||||E2W\u{00A0}|,|−|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|−|\u{00A0}%||\u{00A0}%||\u{00A0}%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AUD|AZN|₼|BAM|KM|BBD|$|BDT|BDT|BMD|$|BND|$|BOB|Bs|BRL|BRL|BSD|$|BWP|P|BYN|Br|BZD|$|CAD|CAD|CLP|$|CNY|CNY|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|GBP|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|ILS|INR|INR|ISK|kr|JMD|$|JPY|JPY|KGS|⃀|KHR|KHR|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|LAK|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|MNT|MUR|Rs|MXN|MXN|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZD|PHP|PHP|PKR|Rs|PLN|zl|PYG|Gs|RON|lei|RUB|rb|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|TWD|UAH|₴|USD|USD|UYU|$|VEF|Bs|VND|VND|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|XPF|XXX|¤|ZAR|R|ZMW|ZK|{0} m.|1|{0} m.|0||0||1|{0} m.|1|{0} m.||{0} mėn.|1|{0} mėn.|0||0||1|{0} mėn.|1|{0} mėn.||{0} sav.|1|{0} sav.|0||0||1|{0} sav.|1|{0} sav.||{0} d.|1|{0} d.|0||0||1|{0} d.|1|{0} d.||{0} val.|1|{0} val.|0||0||1|{0} val.|1|{0} val.||{0} min.|1|{0} min.|0||0||1|{0} min.|1|{0} min.||{0} sek.|1|{0} sek.|0||0||1|{0} sek.|1|{0} sek.||{0} ms|0||0||0||0||0|||{0} metų|1|{0} metai|0||0||1|{0} metai|1|{0} metų||{0} mėnesių|1|{0} mėnuo|0||0||1|{0} mėnesiai|1|{0} mėnesio||{0} savaičių|1|{0} savaitė|0||0||1|{0} savaitės|1|{0} savaitės||{0} dienų|1|{0} diena|0||0||1|{0} dienos|1|{0} dienos||{0} valandų|1|{0} valanda|0||0||1|{0} valandos|1|{0} valandos||{0} minučių|1|{0} minutė|0||0||1|{0} minutės|1|{0} minutės||{0} sekundžių|1|{0} sekundė|0||0||1|{0} sekundės|1|{0} sekundės||{0} milisekundžių|1|{0} milisekundė|0||0||1|{0} milisekundės|1|{0} milisekundės||{0} m.|1|{0} m.|0||0||1|{0} m.|1|{0} m.||{0} mėn.|1|{0} mėn.|0||0||1|{0} mėn.|1|{0} mėn.||{0} sav.|1|{0} sav.|0||0||1|{0} sav.|1|{0} sav.||{0} d.|1|{0} d.|0||0||1|{0} d.|1|{0} d.||{0} h|1|{0} h|0||0||1|{0} h|1|{0} h||{0} min.|1|{0} min.|0||0||1|{0} min.|1|{0} min.||{0} s|1|{0} s|0||0||1|{0} s|1|{0} s||{0} ms|0||0||0||0||0|||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} ir {1}|{0} ir {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
