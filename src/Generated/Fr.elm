module Generated.Fr exposing
    ( fr, fr_BE, fr_BF, fr_BI, fr_BJ, fr_BL
    , fr_CA, fr_CD, fr_CF, fr_CG, fr_CH, fr_CI
    , fr_CM, fr_DJ, fr_DZ, fr_GA, fr_GF, fr_GN
    , fr_GP, fr_GQ, fr_HT, fr_KM, fr_LU, fr_MA
    , fr_MC, fr_MF, fr_MG, fr_ML, fr_MQ, fr_MR
    , fr_MU, fr_NC, fr_NE, fr_PF, fr_PM, fr_RE
    , fr_RW, fr_SC, fr_SN, fr_SY, fr_TD, fr_TG
    , fr_TN, fr_VU, fr_WF, fr_YT
    )

{-|

@docs fr, fr_BE, fr_BF, fr_BI, fr_BJ, fr_BL
@docs fr_CA, fr_CD, fr_CF, fr_CG, fr_CH, fr_CI
@docs fr_CM, fr_DJ, fr_DZ, fr_GA, fr_GF, fr_GN
@docs fr_GP, fr_GQ, fr_HT, fr_KM, fr_LU, fr_MA
@docs fr_MC, fr_MF, fr_MG, fr_ML, fr_MQ, fr_MR
@docs fr_MU, fr_NC, fr_NE, fr_PF, fr_PM, fr_RE
@docs fr_RW, fr_SC, fr_SN, fr_SY, fr_TD, fr_TG
@docs fr_TN, fr_VU, fr_WF, fr_YT

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
        [ ( "fr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 4, 0 ) "night1"
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
                    , target =
                        ( Internal.PluralRule.Exactly 0
                        , [ Internal.PluralRule.Exactly 1 ]
                        )
                    }
                    []
                )
                []
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.E
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    [ { variable = Internal.PluralRule.I
                      , modBy = Nothing
                      , operator = Internal.PluralRule.NotEquals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
                      }
                    , { variable = Internal.PluralRule.I
                      , modBy = Just 1000000
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
                      }
                    , { variable = Internal.PluralRule.V
                      , modBy = Nothing
                      , operator = Internal.PluralRule.Equals
                      , target = ( Internal.PluralRule.Exactly 0, [] )
                      }
                    ]
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.E
                    , modBy = Nothing
                    , operator = Internal.PluralRule.NotEquals
                    , target = ( Internal.PluralRule.Range 0 5, [] )
                    }
                    []
                ]
            )
    }


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
fr : Internal.Locale.Locale
fr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : H 'h' mm 'min' ss 's' zzzz

-}
fr_BE : Internal.Locale.Locale
fr_BE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||BE||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|d/MM/yy|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|H 'h' mm 'min' ss 's' zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|Hmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_BF : Internal.Locale.Locale
fr_BF =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||BF||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_BI : Internal.Locale.Locale
fr_BI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||BI||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BIF|FBu|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_BJ : Internal.Locale.Locale
fr_BJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||BJ||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_BL : Internal.Locale.Locale
fr_BL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||BL||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH 'h' mm
  - Medium : HH 'h' mm 'min' ss 's'
  - Long : HH 'h' mm 'min' ss 's' z
  - Full : HH 'h' mm 'min' ss 's' zzzz

-}
fr_CA : Internal.Locale.Locale
fr_CA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||CA||a.m.|p.m.|8|afternoon1|après-midi|am|a.m.|evening1|du soir|midnight|minuit|morning1|du mat.|night1|du mat.|noon|midi|pm|p.m.|a.m.|p.m.|8|afternoon1|de l’après-midi|am|a.m.|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|p.m.|a|p|8|afternoon1|après-midi|am|a|evening1|du soir|midnight|minuit|morning1|mat.|night1|mat.|noon|midi|pm|p|y-MM-dd|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juill.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH 'h' mm|HH 'h' mm 'min' ss 's'|HH 'h' mm 'min' ss 's' z|HH 'h' mm 'min' ss 's' zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|52|Bh|h 'h' B|Bhm|h 'h' mm B|Bhms|h 'h' mm 'min' ss 's' B|d|d|E|E|EBhm|E h 'h' mm B|EBhms|E h 'h' mm 'min' ss 's' B|Ed|E d|Ehm|E h 'h' mm\u{202F}a|EHm|E HH 'h' mm|Ehms|E h 'h' mm 'min' ss 's' a|EHms|E HH 'h' mm 'min' ss 's'|Gy|y G|GyMd|y-MM-dd GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h 'h' a|H|HH 'h'|hm|h 'h' mm\u{202F}a|Hm|HH 'h' mm|hms|h 'h' mm 'min' ss 's' a|Hms|HH 'h' mm 'min' ss 's'|hmsv|h 'h' mm 'min' ss 's' a v|Hmsv|HH 'h' mm 'min' ss 's' v|hmv|h 'h' mm\u{202F}a v|Hmv|HH 'h' mm v|M|L|Md|MM-dd|MEd|E MM-dd|MMd|MM-dd|MMdd|MM-dd|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm 'min' ss 's'|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|E y-MM-dd|yMM|y-MM|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|ARS|AUD|$\u{00A0}AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|BMD|BND|BND|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|Br|BZD|BZD|CAD|$|CLP|CLP|CNY|CN¥|COP|COP|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|FJD|FKP|FKP|FRF|F|GBP|£|GEL|GEL|GHS|GH₵|GIP|GIP|GNF|FG|GTQ|Q|GYD|$|HKD|$\u{00A0}HK|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|ILS|INR|INR|ISK|kr|ITL|₤IT|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|KRW|KYD|$|KZT|₸|LAK|₭|LBP|LBP|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|MXN|MYR|RM|NAD|NAD|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|$\u{00A0}NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|SBD|SEK|kr|SGD|$\u{00A0}SG|SHP|£|SRD|SRD|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|TTD|TWD|TWD|UAH|₴|USD|$\u{00A0}US|UYU|UYU|VEF|Bs|VND|VND|WST|WST|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|XPF|XXX|¤|ZAR|R|ZMW|ZK|{0} ans|1|{0} an|0||0||0||0|||{0} m.|1|{0} m.|0||0||0||0|||{0} sem.|1|{0} sem.|0||0||0||0|||{0} j|1|{0} j|0||0||0||0|||{0} h|1|{0} h|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} s|1|{0} s|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0} mois|1|{0} mois|0||0||0||0|||{0} semaines|1|{0} semaine|0||0||0||0|||{0} jours|1|{0} jour|0||0||0||0|||{0} heures|1|{0} heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} secondes|1|{0} seconde|0||0||0||0|||{0} millisecondes|1|{0} milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}sem|1|{0}sem|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_CD : Internal.Locale.Locale
fr_CD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||CD||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|min.|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CDF|FC|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_CF : Internal.Locale.Locale
fr_CF =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||CF||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_CG : Internal.Locale.Locale
fr_CG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||CG||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH.mm:ss 'h' zzzz

-}
fr_CH : Internal.Locale.Locale
fr_CH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||CH||AM|PM|8|afternoon1|de l’ap.m.|am|AM|evening1|du soir|midnight|min.|morning1|du mat.|night1|du mat.|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’ap.m.|am|AM|evening1|du soir|midnight|min.|morning1|du mat.|night1|du mat.|noon|midi|pm|PM|dd.MM.yy|d MMM y|d MMMM y|EEEE, d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH.mm:ss 'h' zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd.MM.|MEd|E, dd.MM.|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|E, dd.MM.y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|%||%||%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_CI : Internal.Locale.Locale
fr_CI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||CI||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_CM : Internal.Locale.Locale
fr_CM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||CM||mat.|soir|8|afternoon1|après-midi|am|mat.|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|soir|matin|soir|8|afternoon1|de l’après-midi|am|matin|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|soir|mat.|soir|8|afternoon1|ap.m.|am|mat.|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|soir|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm|EHm|E HH:mm|Ehms|E h:mm:ss|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h|H|HH 'h'|hm|h:mm|Hm|HH:mm|hms|h:mm:ss|Hms|HH:mm:ss|hmsv|h:mm:ss v|Hmsv|HH:mm:ss v|hmv|h:mm v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_DJ : Internal.Locale.Locale
fr_DJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||DJ||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DJF|Fdj|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_DZ : Internal.Locale.Locale
fr_DZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||DZ||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|DZD|DA|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_GA : Internal.Locale.Locale
fr_GA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||GA||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_GF : Internal.Locale.Locale
fr_GF =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||GF||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_GN : Internal.Locale.Locale
fr_GN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||GN||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_GP : Internal.Locale.Locale
fr_GP =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||GP||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_GQ : Internal.Locale.Locale
fr_GQ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||GQ||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_HT : Internal.Locale.Locale
fr_HT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||HT||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|de la nuit|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HTG|G|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_KM : Internal.Locale.Locale
fr_KM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||KM||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_LU : Internal.Locale.Locale
fr_LU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||LU||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|FRF|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LUF|F|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_MA : Internal.Locale.Locale
fr_MA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||MA||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|a.m.|p.m.|8|afternoon1|de l’après-midi|am|a.m.|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|p.m.|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|jan.|fév.|mar.|avr.|mai|jui.|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_MC : Internal.Locale.Locale
fr_MC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||MC||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_MF : Internal.Locale.Locale
fr_MF =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||MF||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_MG : Internal.Locale.Locale
fr_MG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||MG||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_ML : Internal.Locale.Locale
fr_ML =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||ML||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_MQ : Internal.Locale.Locale
fr_MQ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||MQ||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_MR : Internal.Locale.Locale
fr_MR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||MR||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MRU|UM|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_MU : Internal.Locale.Locale
fr_MU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||MU||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_NC : Internal.Locale.Locale
fr_NC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||NC||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_NE : Internal.Locale.Locale
fr_NE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||NE||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_PF : Internal.Locale.Locale
fr_PF =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||PF||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_PM : Internal.Locale.Locale
fr_PM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||PM||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_RE : Internal.Locale.Locale
fr_RE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||RE||AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|min.|morning1|mat.|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_RW : Internal.Locale.Locale
fr_RW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||RW||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|RF|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_SC : Internal.Locale.Locale
fr_SC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||SC||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SCR|SR|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_SN : Internal.Locale.Locale
fr_SN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||SN||AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|min.|morning1|mat.|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_SY : Internal.Locale.Locale
fr_SY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||SY||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|LS|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_TD : Internal.Locale.Locale
fr_TD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||TD||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_TG : Internal.Locale.Locale
fr_TG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||TG||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_TN : Internal.Locale.Locale
fr_TN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||TN||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TND|DT|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_VU : Internal.Locale.Locale
fr_VU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||VU||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|VUV|VT|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_WF : Internal.Locale.Locale
fr_WF =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||WF||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
fr_YT : Internal.Locale.Locale
fr_YT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fr||YT||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|du matin|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|116|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|⃀|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|{0}\u{00A0}ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{202F}m.|1|{0}\u{202F}m.|0||0||0||0|||{0}\u{202F}sem.|1|{0}\u{202F}sem.|0||0||0||0|||{0}\u{202F}j|1|{0}\u{202F}j|0||0||0||0|||{0}\u{202F}h|1|{0}\u{202F}h|0||0||0||0|||{0}\u{00A0}min|1|{0}\u{00A0}min|0||0||0||0|||{0}\u{202F}s|1|{0}\u{202F}s|0||0||0||0|||{0}\u{202F}ms|1|{0}\u{202F}ms|0||0||0||0|||{0} ans|1|{0}\u{00A0}an|0||0||0||0|||{0}\u{00A0}mois|1|{0}\u{00A0}mois|0||0||0||0|||{0}\u{00A0}semaines|1|{0}\u{00A0}semaine|0||0||0||0|||{0}\u{00A0}jours|1|{0}\u{00A0}jour|0||0||0||0|||{0}\u{00A0}heures|1|{0}\u{00A0}heure|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0}\u{00A0}secondes|1|{0}\u{00A0}seconde|0||0||0||0|||{0}\u{00A0}millisecondes|1|{0}\u{00A0}milliseconde|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}m.|1|{0}m.|0||0||0||0|||{0}sem.|1|{0}sem.|0||0||0||0|||{0}j|1|{0}j|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0}, {1}|{0}, {1}|{0} et {1}|{0} et {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
