module Generated.Pcm exposing (pcm)

{-|

@docs pcm

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.PluralRule


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList []


pluralRules : Internal.PluralRule.PluralRulesInfo
pluralRules =
    { one =
        Just
            (Internal.PluralRule.Or
                (Internal.PluralRule.And
                    { variable = Internal.PluralRule.I
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 0, [] )
                    }
                    []
                )
                [ Internal.PluralRule.And
                    { variable = Internal.PluralRule.N
                    , modBy = Nothing
                    , operator = Internal.PluralRule.Equals
                    , target = ( Internal.PluralRule.Exactly 1, [] )
                    }
                    []
                ]
            )
    , two = Nothing
    , zero = Nothing
    , few = Nothing
    , many = Nothing
    }


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pcm : Internal.Locale.Locale
pcm =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "pcm||||FM|FI|2|am|FM|pm|FI|Fọ mọ́nin|Fọ ívnin|2|am|Fọ mọ́nin|pm|Fọ ívnin|FM|FI|2|am|FM|pm|FI|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jén|Fẹ́b|Mach|Épr|Mee|Jun|Jul|Ọgọ|Sẹp|Ọkt|Nọv|Dis|Jénúári|Fẹ́búári|Mach|Éprel|Mee|Jun|Julai|Ọgọst|Sẹptẹ́mba|Ọktóba|Nọvẹ́mba|Disẹ́mba|J|F|M|A|M|J|J|A|S|O|N|D|1|Jén|Fẹ́b|Mach|Épr|Mee|Jun|Jul|Ọ́gọ|Sẹp|Ọkt|Nọv|Dis|Jénúári|Fẹ́búári|Mach|Éprel|Mee|Jun|Julai|Ọgọst|Sẹptẹ́mba|Ọktóba|Nọvẹ́mba|Disẹ́mba|J|F|M|A|M|J|J|A|S|O|N|D|Sọ́n|Mọ́n|Tiú|Wẹ́n|Tọ́z|Fraí|Sát|Sọ́ndè|Mọ́ndè|Tiúzdè|Wẹ́nẹ́zdè|Tọ́zdè|Fraídè|Sátọdè|S|M|T|W|T|F|S|0|BK|KIY|Bifọ́ Kraist|Kraist Im Yiẹ|BK|KIY|HH:mm|HH:mm:ss|H:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1}, {0}|{1}, {0}|49|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|EHms|E HH:mm:ss|Gy|G y|GyMd|GGGGG y-MM-dd|GyMMM|G y MMM|GyMMMd|G y MMM d|GyMMMEd|G y MMM d, E|h|h\u{202F}a|H|HH|hm|h:mm\u{202F}a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|Hmv|HH:mm v|M|L|Md|d /M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'Wik' W 'fọ' MMMM|MMMMW-count-other|'Wik' W 'fọ' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'Wik' w 'fọ' Y|yw-count-other|'Wiik' w 'fọ' Y|HHmm|HHmmss|Hmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|p.|BZD|$|CAD|KA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|US$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} Yiẹ|1|{0} Yiẹ|0||0||0||0|||{0} Mọnt|1|{0} Mọnt|0||0||0||0|||Wik {0}|1|{0} Wik|0||0||0||0|||{0} dez|1|{0} dè|0||0||0||0|||{0} Áwa|1|{0} Áwa|0||0||0||0|||{0} Mínit|1|{0} Mínit|0||0||0||0|||{0} Sẹ́kọn|1|{0} Sẹ́kọn|0||0||0||0|||{0} Mílisẹ́kọn|1|{0} Mílisẹ́kọn|0||0||0||0|||{0} Yiẹ|1|{0} Yiẹ|0||0||0||0|||{0} Mọnt|1|{0} Mọnt|0||0||0||0|||{0} Wik|1|{0} Wik|0||0||0||0|||{0} Dè|1|{0} Dè|0||0||0||0|||{0} Áwa|1|{0} Áwa|0||0||0||0|||{0} Mínit|1|{0} Mínit|0||0||0||0|||{0} Sẹ́kọn|1|{0} Sẹ́kọn|0||0||0||0|||{0} Mílisẹ́kọn|1|{0} Mílisẹ́kọn|0||0||0||0|||{0}Yiẹ|1|{0}Yiẹ|0||0||0||0|||{0}Mọnt|1|{0}Mọnt|0||0||0||0|||{0}Wik|1|{0}Wik|0||0||0||0|||{0}Dè|1|{0}Dè|0||0||0||0|||{0}Áwa|1|{0}Áwa|0||0||0||0|||{0}Mínit|1|{0}Mínit|0||0||0||0|||{0}Sẹ́kọn|1|{0}Sẹ́kọn|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
