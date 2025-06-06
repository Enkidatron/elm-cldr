module Generated.Ht exposing (ht)

{-|

@docs ht

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
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
ht : Internal.Locale.Locale
ht =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ht||||AM|PM|8|afternoon1|après-midi|am|AM|evening1|soir|midnight|minuit|morning1|matin|night1|matin|noon|midi|pm|PM|AM|PM|8|afternoon1|de l’après-midi|am|AM|evening1|du soir|midnight|minuit|morning1|du matin|night1|de la nuit|noon|midi|pm|PM|AM|PM|8|afternoon1|ap.m.|am|AM|evening1|soir|midnight|minuit|morning1|mat.|night1|matin|noon|midi|pm|PM|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|janv.|févr.|mars|avr.|mai|juin|juil.|août|sept.|oct.|nov.|déc.|janvier|février|mars|avril|mai|juin|juillet|août|septembre|octobre|novembre|décembre|J|F|M|A|M|J|J|A|S|O|N|D|0|dim.|lun.|mar.|mer.|jeu.|ven.|sam.|dimanche|lundi|mardi|mercredi|jeudi|vendredi|samedi|D|L|M|M|J|V|S|0|av. J.-C.|ap. J.-C.|avant Jésus-Christ|après Jésus-Christ|av. J.-C.|ap. J.-C.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|E|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH 'h'|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMW-count-one|'semaine' W (MMMM)|MMMMW-count-other|'semaine' W (MMMM)|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'semaine' w 'de' Y|yw-count-other|'semaine' w 'de' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|117|AFN|؋|AMD|֏|AOA|Kz|ARS|$AR|AUD|$AU|AZN|₼|BAM|KM|BBD|$|BDT|৳|BEF|FB|BMD|$BM|BND|$BN|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$BZ|CAD|$CA|CLP|$CL|CNY|CNY|COP|$CO|CRC|₡|CUC|$|CUP|$|CYP|£CY|CZK|Kč|DKK|kr|DOP|$|EGP|£E|ESP|₧|EUR|€|FJD|$FJ|FKP|£FK|FRF|F|GBP|£GB|GEL|₾|GHS|GH₵|GIP|£GI|GNF|FG|GTQ|Q|GYD|$|HKD|HKD|HNL|L|HRK|kn|HTG|G|HUF|Ft|IDR|Rp|IEP|£IE|ILP|£IL|ILS|₪|INR|₹|ISK|kr|ITL|₤IT|JMD|$|JPY|JPY|KGS|\u{20C0}|KHR|៛|KMF|FC|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|£LB|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MTP|£MT|MUR|Rs|MXN|$MX|MYR|RM|NAD|$NA|NGN|₦|NIO|$C|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RHD|$RH|RON|L|RUB|₽|RWF|FR|SBD|$SB|SEK|kr|SGD|$SG|SHP|£|SRD|$SR|SSP|£|STN|Db|SYP|£|THB|฿|TOP|$T|TRY|₺|TTD|$TT|TWD|TWD|UAH|₴|USD|$US|UYU|$UY|VEF|Bs|VND|₫|WST|$WS|XAF|FCFA|XCD|XCD|XCG|Cg.|XOF|F\u{202F}CFA|XPF|FCFP|XXX|¤|ZAR|R|ZMW|Kw|"
        )
