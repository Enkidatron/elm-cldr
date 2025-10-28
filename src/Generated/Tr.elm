module Generated.Tr exposing (tr, tr_CY)

{-|

@docs tr, tr_CY

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
        [ ( "tr"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 11, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 11, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 6, 0 ) "night1"
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

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
tr : Internal.Locale.Locale
tr =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "tr||||ÖÖ|ÖS|10|afternoon1|öğleden sonra|afternoon2|akşamüstü|am|ÖÖ|evening1|akşam|midnight|gece yarısı|morning1|sabah|morning2|öğleden önce|night1|gece|noon|öğle|pm|ÖS|ÖÖ|ÖS|10|afternoon1|öğleden sonra|afternoon2|akşamüstü|am|ÖÖ|evening1|akşam|midnight|gece yarısı|morning1|sabah|morning2|öğleden önce|night1|gece|noon|öğle|pm|ÖS|öö|ös|10|afternoon1|öğleden sonra|afternoon2|akşamüstü|am|öö|evening1|akşam|midnight|gece|morning1|sabah|morning2|öğleden önce|night1|gece|noon|ö|pm|ös|d.MM.y|d MMM y|d MMMM y|d MMMM y EEEE|Oca|Şub|Mar|Nis|May|Haz|Tem|Ağu|Eyl|Eki|Kas|Ara|Ocak|Şubat|Mart|Nisan|Mayıs|Haziran|Temmuz|Ağustos|Eylül|Ekim|Kasım|Aralık|O|Ş|M|N|M|H|T|A|E|E|K|A|0|Paz|Pzt|Sal|Çar|Per|Cum|Cmt|Pazar|Pazartesi|Salı|Çarşamba|Perşembe|Cuma|Cumartesi|P|P|S|Ç|P|C|C|0|MÖ|MS|Milattan Önce|Milattan Sonra|MÖ|MS|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E a\u{202F}h:mm|EHm|E HH:mm|Ehms|E a\u{202F}h:mm:ss|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG dd.MM.y|GyMMM|G MMM y|GyMMMd|G d MMM y|GyMMMEd|G d MMM y E|h|a\u{202F}h|H|HH|hm|a\u{202F}h:mm|Hm|HH:mm|hms|a\u{202F}h:mm:ss|Hms|HH:mm:ss|hmsv|a\u{202F}h:mm:ss v|Hmsv|HH:mm:ss v|hmv|a\u{202F}h:mm v|Hmv|HH:mm v|M|L|Md|d/M|MEd|d/MM E|MMM|LLL|MMMd|d MMM|MMMEd|d MMM E|MMMMd|d MMMM|MMMMEd|d MMMM E|MMMMW-count-one|MMMM 'ayının' W. 'haftası'|MMMMW-count-other|MMMM 'ayının' W. 'haftası'|mmss|mm:ss|ms|mm:ss|y|y|yM|MM/y|yMd|dd.MM.y|yMEd|d.M.y E|yMM|MM.y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|d MMM y E|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y 'yılının' w. 'haftası'|yw-count-other|Y 'yılının' w. 'haftası'|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-¤||¤||¤||E0W.|,|-%||%||%||108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} yıl|1|{0} yıl|0||0||0||0|||{0} ay|1|{0} ay|0||0||0||0|||{0} hf.|1|{0} hf.|0||0||0||0|||{0} gün|1|{0} gün|0||0||0||0|||{0} sa.|1|{0} sa.|0||0||0||0|||{0} dk.|1|{0} dk.|0||0||0||0|||{0} sn.|1|{0} sn.|0||0||0||0|||{0} msn|1|{0} msn|0||0||0||0|||{0} yıl|1|{0} yıl|0||0||0||0|||{0} ay|1|{0} ay|0||0||0||0|||{0} hafta|1|{0} hafta|0||0||0||0|||{0} gün|1|{0} gün|0||0||0||0|||{0} saat|1|{0} saat|0||0||0||0|||{0} dakika|1|{0} dakika|0||0||0||0|||{0} saniye|1|{0} saniye|0||0||0||0|||{0} milisaniye|1|{0} milisaniye|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}g|1|{0}g|0||0||0||0|||{0}s|1|{0} sa|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}sn|1|{0}sn|0||0||0||0|||{0}msn|1|{0}msn|0||0||0||0|||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
tr_CY : Internal.Locale.Locale
tr_CY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "tr||CY||ÖÖ|ÖS|10|afternoon1|öğleden sonra|afternoon2|akşamüstü|am|ÖÖ|evening1|akşam|midnight|gece yarısı|morning1|sabah|morning2|öğleden önce|night1|gece|noon|öğle|pm|ÖS|ÖÖ|ÖS|10|afternoon1|öğleden sonra|afternoon2|akşamüstü|am|ÖÖ|evening1|akşam|midnight|gece yarısı|morning1|sabah|morning2|öğleden önce|night1|gece|noon|öğle|pm|ÖS|öö|ös|10|afternoon1|öğleden sonra|afternoon2|akşamüstü|am|öö|evening1|akşam|midnight|gece|morning1|sabah|morning2|öğleden önce|night1|gece|noon|ö|pm|ös|d.MM.y|d MMM y|d MMMM y|d MMMM y EEEE|Oca|Şub|Mar|Nis|May|Haz|Tem|Ağu|Eyl|Eki|Kas|Ara|Ocak|Şubat|Mart|Nisan|Mayıs|Haziran|Temmuz|Ağustos|Eylül|Ekim|Kasım|Aralık|O|Ş|M|N|M|H|T|A|E|E|K|A|0|Paz|Pzt|Sal|Çar|Per|Cum|Cmt|Pazar|Pazartesi|Salı|Çarşamba|Perşembe|Cuma|Cumartesi|P|P|S|Ç|P|C|C|0|MÖ|MS|Milattan Önce|Milattan Sonra|MÖ|MS|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|52|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|d E|Ehm|E a\u{202F}h:mm|EHm|E HH:mm|Ehms|E a\u{202F}h:mm:ss|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG dd.MM.y|GyMMM|G MMM y|GyMMMd|G d MMM y|GyMMMEd|G d MMM y E|h|a\u{202F}h|H|HH|hm|a\u{202F}h:mm|Hm|HH:mm|hms|a\u{202F}h:mm:ss|Hms|HH:mm:ss|hmsv|a\u{202F}h:mm:ss v|Hmsv|HH:mm:ss v|hmv|a\u{202F}h:mm v|Hmv|HH:mm v|M|L|Md|d/M|MEd|d/MM E|MMM|LLL|MMMd|d MMM|MMMEd|d MMM E|MMMMd|d MMMM|MMMMEd|d MMMM E|MMMMW-count-one|MMMM 'ayının' W. 'haftası'|MMMMW-count-other|MMMM 'ayının' W. 'haftası'|mmss|mm:ss|ms|mm:ss|y|y|yM|MM/y|yMd|dd.MM.y|yMEd|d.M.y E|yMM|MM.y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|d MMM y E|yMMMM|MMMM y|yQQQ|y QQQ|yQQQQ|y QQQQ|yw-count-one|Y 'yılının' w. 'haftası'|yw-count-other|Y 'yılının' w. 'haftası'|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|-||||||E2W.|,|-¤||¤||¤||E0W.|,|-%||%||%||108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|AU$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|L|RUB|₽|RUR|р.|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} yıl|1|{0} yıl|0||0||0||0|||{0} ay|1|{0} ay|0||0||0||0|||{0} hf.|1|{0} hf.|0||0||0||0|||{0} gün|1|{0} gün|0||0||0||0|||{0} sa.|1|{0} sa.|0||0||0||0|||{0} dk.|1|{0} dk.|0||0||0||0|||{0} sn.|1|{0} sn.|0||0||0||0|||{0} msn|1|{0} msn|0||0||0||0|||{0} yıl|1|{0} yıl|0||0||0||0|||{0} ay|1|{0} ay|0||0||0||0|||{0} hafta|1|{0} hafta|0||0||0||0|||{0} gün|1|{0} gün|0||0||0||0|||{0} saat|1|{0} saat|0||0||0||0|||{0} dakika|1|{0} dakika|0||0||0||0|||{0} saniye|1|{0} saniye|0||0||0||0|||{0} milisaniye|1|{0} milisaniye|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}a|1|{0}a|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}g|1|{0}g|0||0||0||0|||{0}s|1|{0} sa|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}sn|1|{0}sn|0||0||0||0|||{0}msn|1|{0}msn|0||0||0||0|||{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
