module Generated.Hi exposing (hi, hi_Latn)

{-|

@docs hi, hi_Latn

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
        [ ( "hi"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
            ]
          )
        , ( "hi_latn"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
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

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
hi : Internal.Locale.Locale
hi =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "hi||||am|pm|7|afternoon1|दोपहर|am|am|evening1|शाम|midnight|मध्यरात्रि|morning1|सुबह|night1|रात|pm|pm|am|pm|7|afternoon1|दोपहर|am|am|evening1|शाम|midnight|मध्यरात्रि|morning1|सुबह|night1|रात|pm|pm|am|pm|7|afternoon1|दोपहर|am|am|evening1|शाम|midnight|मध्यरात्रि|morning1|सुबह|night1|रात|pm|pm|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|जन॰|फ़र॰|मार्च|अप्रैल|मई|जून|जुल॰|अग॰|सित॰|अक्टू॰|नव॰|दिस॰|जनवरी|फ़रवरी|मार्च|अप्रैल|मई|जून|जुलाई|अगस्त|सितंबर|अक्टूबर|नवंबर|दिसंबर|ज|फ़|मा|अ|म|जू|जु|अ|सि|अ|न|दि|0|रवि|सोम|मंगल|बुध|गुरु|शुक्र|शनि|रविवार|सोमवार|मंगलवार|बुधवार|गुरुवार|शुक्रवार|शनिवार|र|सो|मं|बु|गु|शु|श|0|ईसा-पूर्व|ईस्वी|ईसा-पूर्व|ईसवी सन|ईसा-पूर्व|ईस्वी|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|53|Bh|B h|Bhm|B h:mm|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm|EBhms|E B h:mm:ss|Ed|E d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|GGGGG d/M/y|GyMMM|MMM G y|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|MMMM का सप्ताह W|MMMMW-count-other|MMMM का सप्ताह W|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMM|MM/y|yMMdd|dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y का सप्ताह w|yw-count-other|Y का सप्ताह w|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2I,|.|-¤||¤||¤||E0I,|.|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|लेई|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} वर्ष|1|{0} वर्ष|0||0||0||0|||{0} माह|1|{0} माह|0||0||0||0|||{0} सप्ताह|1|{0} सप्ताह|0||0||0||0|||{0} दिन|1|{0} दिन|0||0||0||0|||{0} घं॰|1|{0} घं॰|0||0||0||0|||{0} मि॰|1|{0} मि॰|0||0||0||0|||{0} से॰|1|{0} से॰|0||0||0||0|||{0} मि॰से॰|1|{0} मि॰से॰|0||0||0||0|||{0} वर्ष|1|{0} वर्ष|0||0||0||0|||{0} महीने|1|{0} महीना|0||0||0||0|||{0} सप्ताह|1|{0} सप्ताह|0||0||0||0|||{0} दिन|1|{0} दिन|0||0||0||0|||{0} घंटे|1|{0} घंटा|0||0||0||0|||{0} मिनट|1|{0} मिनट|0||0||0||0|||{0} सेकंड|1|{0} सेकंड|0||0||0||0|||{0} मिलीसेकंड|1|{0} मिलीसेकंड|0||0||0||0|||{0} व|1|{0} व|0||0||0||0|||{0} माह|1|{0} माह|0||0||0||0|||{0} सप्ताह|1|{0} सप्ताह|0||0||0||0|||{0} दि|1|{0} दि|0||0||0||0|||{0} घं|1|{0} घं|0||0||0||0|||{0} मि|1|{0} मि|0||0||0||0|||{0} से|1|{0} से|0||0||0||0|||{0} मि॰से॰|1|{0} मि॰से॰|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, और {1}|{0} और {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : dd MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
hi_Latn : Internal.Locale.Locale
hi_Latn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "hi|Latn|||AM|PM|10|afternoon1|dopahar|am|AM|am-alt-variant|am|evening1|shaam|midnight|midnight|morning1|subah|night1|raat|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|dopahar|am|AM|am-alt-variant|am|evening1|shaam|midnight|aadhi raat|morning1|subah|night1|raat|noon|Madhyanh|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|dopahar|am|a|am-alt-variant|am|evening1|shaam|midnight|mi|morning1|subah|night1|raat|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|dd MMM, y|d MMMM, y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|1|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|Ravi|Som|Mangal|Budh|Guru|Shukra|Shani|Raviwaar|Somwaar|Mangalwaar|Budhwaar|Guruwaar|Shukrawaar|Shaniwaar|Ra|So|Ma|Bu|Gu|Sh|Sha|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1} {0}|{1} {0}|{1}, {0}|{1}, {0}|62|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|Ehm-alt-ascii|E, h:mm a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|Ehms-alt-ascii|E, h:mm:ss a|EHms|E, HH:mm:ss|Gy|G y|GyMd|d/M/y G|GyMMM|G y MMM|GyMMMd|G y, d MMM|GyMMMEd|G y, dd MMM, E|GyMMMEEEEd|G y, dd MMMM, E|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMEEEEd|EEEE, d MMM|MMMMd|d MMMM|MMMMEEEEd|EEEE, d MMMM|MMMMW-count-one|MMMM 'kaa' 'week' W|MMMMW-count-other|MMMM 'kaa' 'week' W|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM, y|yMMMEd|E, d MMM, y|yMMMEEEEd|EEEE, d MMM y|yMMMM|MMMM y|yMMMMEEEEd|EEEE, d MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|Y 'kaa' 'week' w|yw-count-other|Y 'kaa' 'week' w|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2I,|.|-¤||¤||¤||E0I,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} din|1|{0} din|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} saal|1|{0} saal|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} din|1|{0} din|0||0||0||0|||{0} ghante|1|{0} ghanta|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, aur {1}|{0} aur {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|"
        )
