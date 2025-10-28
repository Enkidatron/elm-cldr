module Generated.El exposing (el, el_CY, el_POLYTON)

{-|

@docs el, el_CY, el_POLYTON

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
        [ ( "el"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 17, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 17, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
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
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    []
                )
                []
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el : Internal.Locale.Locale
el =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "el||||π.μ.|μ.μ.|6|afternoon1|μεσημ.|am|π.μ.|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μ.μ.|π.μ.|μ.μ.|6|afternoon1|το μεσημέρι|am|π.μ.|evening1|το απόγευμα|morning1|το πρωί|night1|το βράδυ|pm|μ.μ.|πμ|μμ|6|afternoon1|μεσημ.|am|πμ|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μμ|d/M/yy|d MMM y|d MMMM y|EEEE d MMMM y|Ιαν|Φεβ|Μαρ|Απρ|Μαΐ|Ιουν|Ιουλ|Αυγ|Σεπ|Οκτ|Νοε|Δεκ|Ιανουαρίου|Φεβρουαρίου|Μαρτίου|Απριλίου|Μαΐου|Ιουνίου|Ιουλίου|Αυγούστου|Σεπτεμβρίου|Οκτωβρίου|Νοεμβρίου|Δεκεμβρίου|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|1|Ιαν|Φεβ|Μάρ|Απρ|Μάι|Ιούν|Ιούλ|Αύγ|Σεπ|Οκτ|Νοέ|Δεκ|Ιανουάριος|Φεβρουάριος|Μάρτιος|Απρίλιος|Μάιος|Ιούνιος|Ιούλιος|Αύγουστος|Σεπτέμβριος|Οκτώβριος|Νοέμβριος|Δεκέμβριος|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|Κυρ|Δευ|Τρί|Τετ|Πέμ|Παρ|Σάβ|Κυριακή|Δευτέρα|Τρίτη|Τετάρτη|Πέμπτη|Παρασκευή|Σάββατο|Κ|Δ|Τ|Τ|Π|Π|Σ|0|π.Χ.|μ.Χ.|προ Χριστού|μετά Χριστόν|π.Χ.|μ.Χ.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1} - {0}|{1} - {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMM|MMM|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|εβδομάδα W του MMMM|MMMMW-count-other|εβδομάδα W του MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|εβδομάδα w του Y|yw-count-other|εβδομάδα w του Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GRD|Δρχ|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} έτ.|1|{0} έτ.|0||0||0||0|||{0} μήν.|1|{0} μήν.|0||0||0||0|||{0} εβδ.|1|{0} εβδ.|0||0||0||0|||{0} ημέρες|1|{0} ημέρα|0||0||0||0|||{0} ώ.|1|{0} ώ.|0||0||0||0|||{0} λ.|1|{0} λ.|0||0||0||0|||{0} δευτ.|1|{0} δευτ.|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} έτη|1|{0} έτος|0||0||0||0|||{0} μήνες|1|{0} μήνας|0||0||0||0|||{0} εβδομάδες|1|{0} εβδομάδα|0||0||0||0|||{0} ημέρες|1|{0} ημέρα|0||0||0||0|||{0} ώρες|1|{0} ώρα|0||0||0||0|||{0} λεπτά|1|{0} λεπτό|0||0||0||0|||{0} δευτερόλεπτα|1|{0} δευτερόλεπτο|0||0||0||0|||{0} χιλιοστά του δευτερολέπτου|1|{0} χιλιοστό του δευτερολέπτου|0||0||0||0|||{0} έ|1|{0} έ|0||0||0||0|||{0} μ|1|{0} μ|0||0||0||0|||{0} ε|1|{0} ε|0||0||0||0|||{0} η|1|{0} η|0||0||0||0|||{0} ώ|1|{0} ώ|0||0||0||0|||{0} λ|1|{0} λ|0||0||0||0|||{0} δ|1|{0} δ|0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el_CY : Internal.Locale.Locale
el_CY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "el||CY||π.μ.|μ.μ.|6|afternoon1|μεσημ.|am|π.μ.|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μ.μ.|π.μ.|μ.μ.|6|afternoon1|το μεσημέρι|am|π.μ.|evening1|το απόγευμα|morning1|το πρωί|night1|το βράδυ|pm|μ.μ.|πμ|μμ|6|afternoon1|μεσημ.|am|πμ|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μμ|d/M/yy|d MMM y|d MMMM y|EEEE d MMMM y|Ιαν|Φεβ|Μαρ|Απρ|Μαΐ|Ιουν|Ιουλ|Αυγ|Σεπ|Οκτ|Νοε|Δεκ|Ιανουαρίου|Φεβρουαρίου|Μαρτίου|Απριλίου|Μαΐου|Ιουνίου|Ιουλίου|Αυγούστου|Σεπτεμβρίου|Οκτωβρίου|Νοεμβρίου|Δεκεμβρίου|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|1|Ιαν|Φεβ|Μάρ|Απρ|Μάι|Ιούν|Ιούλ|Αύγ|Σεπ|Οκτ|Νοέ|Δεκ|Ιανουάριος|Φεβρουάριος|Μάρτιος|Απρίλιος|Μάιος|Ιούνιος|Ιούλιος|Αύγουστος|Σεπτέμβριος|Οκτώβριος|Νοέμβριος|Δεκέμβριος|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|Κυρ|Δευ|Τρί|Τετ|Πέμ|Παρ|Σάβ|Κυριακή|Δευτέρα|Τρίτη|Τετάρτη|Πέμπτη|Παρασκευή|Σάββατο|Κ|Δ|Τ|Τ|Π|Π|Σ|0|π.Χ.|μ.Χ.|προ Χριστού|μετά Χριστόν|π.Χ.|μ.Χ.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1} - {0}|{1} - {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMM|MMM|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|εβδομάδα W του MMMM|MMMMW-count-other|εβδομάδα W του MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|εβδομάδα w του Y|yw-count-other|εβδομάδα w του Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GRD|Δρχ|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} έτ.|1|{0} έτ.|0||0||0||0|||{0} μήν.|1|{0} μήν.|0||0||0||0|||{0} εβδ.|1|{0} εβδ.|0||0||0||0|||{0} ημέρες|1|{0} ημέρα|0||0||0||0|||{0} ώ.|1|{0} ώ.|0||0||0||0|||{0} λ.|1|{0} λ.|0||0||0||0|||{0} δευτ.|1|{0} δευτ.|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} έτη|1|{0} έτος|0||0||0||0|||{0} μήνες|1|{0} μήνας|0||0||0||0|||{0} εβδομάδες|1|{0} εβδομάδα|0||0||0||0|||{0} ημέρες|1|{0} ημέρα|0||0||0||0|||{0} ώρες|1|{0} ώρα|0||0||0||0|||{0} λεπτά|1|{0} λεπτό|0||0||0||0|||{0} δευτερόλεπτα|1|{0} δευτερόλεπτο|0||0||0||0|||{0} χιλιοστά του δευτερολέπτου|1|{0} χιλιοστό του δευτερολέπτου|0||0||0||0|||{0} έ|1|{0} έ|0||0||0||0|||{0} μ|1|{0} μ|0||0||0||0|||{0} ε|1|{0} ε|0||0||0||0|||{0} η|1|{0} η|0||0||0||0|||{0} ώ|1|{0} ώ|0||0||0||0|||{0} λ|1|{0} λ|0||0||0||0|||{0} δ|1|{0} δ|0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el_POLYTON : Internal.Locale.Locale
el_POLYTON =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "el|||POLYTON|π.μ.|μ.μ.|6|afternoon1|μεσημ.|am|π.μ.|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μ.μ.|π.μ.|μ.μ.|6|afternoon1|το μεσημέρι|am|π.μ.|evening1|το απόγευμα|morning1|το πρωί|night1|το βράδυ|pm|μ.μ.|πμ|μμ|6|afternoon1|μεσημ.|am|πμ|evening1|απόγ.|morning1|πρωί|night1|βράδυ|pm|μμ|d/M/yy|d MMM y|d MMMM y|EEEE d MMMM y|Ιαν|Φεβ|Μαρ|Απρ|Μαΐ|Ιουν|Ιουλ|Αὐγ|Σεπ|Ὀκτ|Νοε|Δεκ|Ιανουαρίου|Φεβρουαρίου|Μαρτίου|Απριλίου|Μαΐου|Ιουνίου|Ιουλίου|Αὐγούστου|Σεπτεμβρίου|Ὀκτωβρίου|Νοεμβρίου|Δεκεμβρίου|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|1|Ιαν|Φεβ|Μάρ|Απρ|Μάι|Ιούν|Ιούλ|Αύγ|Σεπ|Οκτ|Νοέ|Δεκ|Ιανουάριος|Φεβρουάριος|Μάρτιος|Απρίλιος|Μάιος|Ιούνιος|Ιούλιος|Αὔγουστος|Σεπτέμβριος|Ὀκτώβριος|Νοέμβριος|Δεκέμβριος|Ι|Φ|Μ|Α|Μ|Ι|Ι|Α|Σ|Ο|Ν|Δ|Κυρ|Δευ|Τρί|Τετ|Πέμ|Παρ|Σάβ|Κυριακή|Δευτέρα|Τρίτη|Τετάρτη|Πέμπτη|Παρασκευή|Σάββατο|Κ|Δ|Τ|Τ|Π|Π|Σ|0|π.Χ.|μ.Χ.|προ Χριστού|μετά Χριστόν|π.Χ.|μ.Χ.|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1} - {0}|{1} - {0}|50|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y GGGGG|GyMMM|LLL y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E d/M|MMM|MMM|MMMd|d MMM|MMMEd|E d MMM|MMMMd|d MMMM|MMMMEd|E d MMMM|MMMMW-count-one|εβδομάδα W του MMMM|MMMMW-count-other|εβδομάδα W του MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|LLLL y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|εβδομάδα w του Y|yw-count-other|εβδομάδα w του Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GRD|Δρχ|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} έτ.|1|{0} έτ.|0||0||0||0|||{0} μήν.|1|{0} μήν.|0||0||0||0|||{0} εβδ.|1|{0} εβδ.|0||0||0||0|||{0} ημέρες|1|{0} ημέρα|0||0||0||0|||{0} ώ.|1|{0} ώ.|0||0||0||0|||{0} λ.|1|{0} λ.|0||0||0||0|||{0} δευτ.|1|{0} δευτ.|0||0||0||0|||{0} ms|0||0||0||0||0|||{0} έτη|1|{0} έτος|0||0||0||0|||{0} μήνες|1|{0} μήνας|0||0||0||0|||{0} εβδομάδες|1|{0} εβδομάδα|0||0||0||0|||{0} ημέρες|1|{0} ημέρα|0||0||0||0|||{0} ώρες|1|{0} ώρα|0||0||0||0|||{0} λεπτά|1|{0} λεπτό|0||0||0||0|||{0} δευτερόλεπτα|1|{0} δευτερόλεπτο|0||0||0||0|||{0} χιλιοστά του δευτερολέπτου|1|{0} χιλιοστό του δευτερολέπτου|0||0||0||0|||{0} έ|1|{0} έ|0||0||0||0|||{0} μ|1|{0} μ|0||0||0||0|||{0} ε|1|{0} ε|0||0||0||0|||{0} η|1|{0} η|0||0||0||0|||{0} ώ|1|{0} ώ|0||0||0||0|||{0} λ|1|{0} λ|0||0||0||0|||{0} δ|1|{0} δ|0||0||0||0|||{0} ms|0||0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
