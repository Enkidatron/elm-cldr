module Generated.En exposing
    ( en, en_001, en_150, en_AE, en_AG, en_AI
    , en_AS, en_AT, en_AU, en_BB, en_BE, en_BI
    , en_BM, en_BS, en_BW, en_BZ, en_CA, en_CC
    , en_CH, en_CK, en_CM, en_CX, en_CY, en_CZ
    , en_DE, en_DG, en_DK, en_DM, en_ER, en_ES
    , en_FI, en_FJ, en_FK, en_FM, en_FR, en_GB
    , en_GD, en_GG, en_GH, en_GI, en_GM, en_GS
    , en_GU, en_GY, en_HK, en_HU, en_ID, en_IE
    , en_IL, en_IM, en_IN, en_IO, en_IT, en_JE
    , en_JM, en_KE, en_KI, en_KN, en_KY, en_LC
    , en_LR, en_LS, en_MG, en_MH, en_MO, en_MP
    , en_MS, en_MT, en_MU, en_MV, en_MW, en_MY
    , en_NA, en_NF, en_NG, en_NL, en_NO, en_NR
    , en_NU, en_NZ, en_PG, en_PH, en_PK, en_PL
    , en_PN, en_PR, en_PT, en_PW, en_RO, en_RW
    , en_SB, en_SC, en_SD, en_SE, en_SG, en_SH
    , en_SI, en_SK, en_SL, en_SS, en_SX, en_SZ
    , en_TC, en_TK, en_TO, en_TT, en_TV, en_TZ
    , en_UG, en_UM, en_VC, en_VG, en_VI, en_VU
    , en_WS, en_ZA, en_ZM, en_ZW
    )

{-|

@docs en, en_001, en_150, en_AE, en_AG, en_AI
@docs en_AS, en_AT, en_AU, en_BB, en_BE, en_BI
@docs en_BM, en_BS, en_BW, en_BZ, en_CA, en_CC
@docs en_CH, en_CK, en_CM, en_CX, en_CY, en_CZ
@docs en_DE, en_DG, en_DK, en_DM, en_ER, en_ES
@docs en_FI, en_FJ, en_FK, en_FM, en_FR, en_GB
@docs en_GD, en_GG, en_GH, en_GI, en_GM, en_GS
@docs en_GU, en_GY, en_HK, en_HU, en_ID, en_IE
@docs en_IL, en_IM, en_IN, en_IO, en_IT, en_JE
@docs en_JM, en_KE, en_KI, en_KN, en_KY, en_LC
@docs en_LR, en_LS, en_MG, en_MH, en_MO, en_MP
@docs en_MS, en_MT, en_MU, en_MV, en_MW, en_MY
@docs en_NA, en_NF, en_NG, en_NL, en_NO, en_NR
@docs en_NU, en_NZ, en_PG, en_PH, en_PK, en_PL
@docs en_PN, en_PR, en_PT, en_PW, en_RO, en_RW
@docs en_SB, en_SC, en_SD, en_SE, en_SG, en_SH
@docs en_SI, en_SK, en_SL, en_SS, en_SX, en_SZ
@docs en_TC, en_TK, en_TO, en_TT, en_TV, en_TZ
@docs en_UG, en_UM, en_VC, en_VG, en_VI, en_VU
@docs en_WS, en_ZA, en_ZM, en_ZW

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
        [ ( "en"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 18, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 21, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 21, 0 ) ( 24, 0 ) "night1"
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

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en : Internal.Locale.Locale
en =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_001 : Internal.Locale.Locale
en_001 =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||001||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_150 : Internal.Locale.Locale
en_150 =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||150||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AE : Internal.Locale.Locale
en_AE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||AE||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AG : Internal.Locale.Locale
en_AG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||AG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_AI : Internal.Locale.Locale
en_AI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||AI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AS : Internal.Locale.Locale
en_AS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||AS||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_AT : Internal.Locale.Locale
en_AT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||AT||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AU : Internal.Locale.Locale
en_AU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||AU||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|midday|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|midday|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|midday|pm|pm|pm-alt-variant|pm|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|June|July|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Su.|M.|Tu.|W.|Th.|F.|Sa.|1|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|62|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMEEEEd|EEEE d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMEEEEd|EEEE d MMM|MMMMd|d MMMM|MMMMEEEEd|EEEE d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMEEEEd|EEEE d MMM y|yMMMM|MMMM y|yMMMMEEEEd|EEEE d MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|BRL|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CAD|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CNY|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|EUR|FJD|FJD|FKP|FKP|GBP|GBP|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HKD|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|ILS|INR|INR|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JPY|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|KRW|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MXN|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZD|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|PHP|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|Rs|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|TWD|TZS|TZS|UAH|UAH|UGX|UGX|USD|USD|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|VND|VUV|VUV|WST|WST|XAF|XAF|XCD|XCD|XCG|Cg.|XOF|XOF|XPF|CFP|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_BB : Internal.Locale.Locale
en_BB =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||BB||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|$|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BE : Internal.Locale.Locale
en_BE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||BE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/yy|dd MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BI : Internal.Locale.Locale
en_BI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||BI||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|FBu|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_BM : Internal.Locale.Locale
en_BM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||BM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|$|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_BS : Internal.Locale.Locale
en_BS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||BS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|$|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BW : Internal.Locale.Locale
en_BW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||BW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/yy|dd MMM y|dd MMMM y|EEEE, dd MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|dd MMM y G|GyMMMEd|E, dd MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, dd MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|dd MMM y|yMMMEd|E, dd MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|P|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BZ : Internal.Locale.Locale
en_BZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||BZ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/yy|dd-MMM-y|dd MMMM y|EEEE, dd MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, dd MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|dd MMM y|yMMMEd|E, dd MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|$|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_CA : Internal.Locale.Locale
en_CA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||CA||a.m.|p.m.|10|afternoon1|in the afternoon|am|a.m.|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|p.m.|pm-alt-variant|pm|a.m.|p.m.|10|afternoon1|in the afternoon|am|a.m.|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|p.m.|pm-alt-variant|pm|am|pm|10|afternoon1|aft|am|am|am-alt-variant|am|evening1|eve|midnight|mid|morning1|mor|night1|night|noon|n|pm|pm|pm-alt-variant|pm|y-MM-dd|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|62|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|MM-dd|Md-alt-variant|d/M|MEd|E, MM-dd|MEd-alt-variant|E, d/M|MMdd|MM-dd|MMdd-alt-variant|dd/MM|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMd-alt-variant|d/M/y|yMEd|E, y-MM-dd|yMEd-alt-variant|E, d/M/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mos|1|{0} mo|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} millisecs|1|{0} millisec|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}min|1|{0}min|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CC : Internal.Locale.Locale
en_CC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||CC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CH : Internal.Locale.Locale
en_CH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||CH||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd.MM.y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d.M.y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|E, dd.MM|MMdd|dd.MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|E, dd.MM.y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W’|.|-||||||E2W’|.|¤-||¤\u{00A0}||¤\u{00A0}||E0W’|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CK : Internal.Locale.Locale
en_CK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||CK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CM : Internal.Locale.Locale
en_CM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||CM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CX : Internal.Locale.Locale
en_CX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||CX||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_CY : Internal.Locale.Locale
en_CY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||CY||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CZ : Internal.Locale.Locale
en_CZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||CZ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_DE : Internal.Locale.Locale
en_DE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||DE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_DG : Internal.Locale.Locale
en_DG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||DG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
en_DK : Internal.Locale.Locale
en_DK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||DK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h.mm\u{202F}a|Ehm-alt-ascii|E h.mm a|EHm|E HH.mm|Ehms|E h.mm.ss\u{202F}a|Ehms-alt-ascii|E h.mm.ss a|EHms|E HH.mm.ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h.mm\u{202F}a|hm-alt-ascii|h.mm a|Hm|HH.mm|hms|h.mm.ss\u{202F}a|hms-alt-ascii|h.mm.ss a|Hms|HH.mm.ss|hmsv|h.mm.ss\u{202F}a v|hmsv-alt-ascii|h.mm.ss a v|Hmsv|HH.mm.ss v|hmv|h.mm\u{202F}a v|hmv-alt-ascii|h.mm a v|Hmv|HH.mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm.ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|kr.|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_DM : Internal.Locale.Locale
en_DM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||DM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_ER : Internal.Locale.Locale
en_ER =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||ER||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|Nfk|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_ES : Internal.Locale.Locale
en_ES =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||ES||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : H.mm
  - Medium : H.mm.ss
  - Long : H.mm.ss z
  - Full : H.mm.ss zzzz

-}
en_FI : Internal.Locale.Locale
en_FI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||FI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|H.mm|H.mm.ss|H.mm.ss z|H.mm.ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h.mm\u{202F}a|Ehm-alt-ascii|E h.mm a|EHm|E H.mm|Ehms|E h.mm.ss\u{202F}a|Ehms-alt-ascii|E h.mm.ss a|EHms|E H.mm.ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h.mm\u{202F}a|hm-alt-ascii|h.mm a|Hm|H.mm|hms|h.mm.ss\u{202F}a|hms-alt-ascii|h.mm.ss a|Hms|H.mm.ss|hmsv|h.mm.ss\u{202F}a v|hmsv-alt-ascii|h.mm.ss a v|Hmsv|H.mm.ss v|hmv|h.mm\u{202F}a v|hmv-alt-ascii|h.mm a v|Hmv|H.mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm.ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_FJ : Internal.Locale.Locale
en_FJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||FJ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|$|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_FK : Internal.Locale.Locale
en_FK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||FK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|£|GBP|GB£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_FM : Internal.Locale.Locale
en_FM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||FM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_FR : Internal.Locale.Locale
en_FR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||FR||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{202F}|,|-||||||E2W\u{202F}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{202F}|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GB : Internal.Locale.Locale
en_GB =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||GB||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|62|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd/MM/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMEEEEd|EEEE, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMEEEEd|EEEE d MMM|MMMMd|d MMMM|MMMMEEEEd|EEEE d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMEEEEd|EEEE, d MMM y|yMMMM|MMMM y|yMMMMEEEEd|EEEE, d MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GD : Internal.Locale.Locale
en_GD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||GD||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GG : Internal.Locale.Locale
en_GG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||GG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GH : Internal.Locale.Locale
en_GH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||GH||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GH₵|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GI : Internal.Locale.Locale
en_GI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||GI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|GB£|GEL|GEL|GHS|GHS|GIP|£|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GM : Internal.Locale.Locale
en_GM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||GM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|D|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GS : Internal.Locale.Locale
en_GS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||GS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GU : Internal.Locale.Locale
en_GU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||GU||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GY : Internal.Locale.Locale
en_GY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||GY||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|$|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_HK : Internal.Locale.Locale
en_HK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||HK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|d/M/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|58|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMEd|E, d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_HU : Internal.Locale.Locale
en_HU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||HU||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
en_ID : Internal.Locale.Locale
en_ID =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||ID||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH.mm|HH.mm.ss|HH.mm.ss z|HH.mm.ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h.mm B|Bhms|h.mm.ss B|d|d|E|ccc|EBhm|E h.mm B|EBhms|E h.mm.ss B|Ed|E d|Ehm|E h.mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH.mm|Ehms|E h.mm.ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH.mm.ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h.mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH.mm|hms|h.mm.ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH.mm.ss|hmsv|h.mm.ss. a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH.mm.ss v|hmv|h.mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH.mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm.ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-¤||¤||¤||E0W.|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|Rp|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
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
en_IE : Internal.Locale.Locale
en_IE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||IE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a.m.|p.m.|10|afternoon1|in the afternoon|am|a.m.|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|p.m.|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
en_IL : Internal.Locale.Locale
en_IL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||IL||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|H|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|H:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_IM : Internal.Locale.Locale
en_IM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||IM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_IN : Internal.Locale.Locale
en_IN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||IN||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|62|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E, h:mm B|EBhms|E, h:mm:ss B|Ed|E d|Ehm|E, h:mm\u{202F}a|Ehm-alt-ascii|E, h:mm a|EHm|E, HH:mm|Ehms|E, h:mm:ss\u{202F}a|Ehms-alt-ascii|E, h:mm:ss a|EHms|E, HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|GyMMMEEEEd|EEEE, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMEEEEd|EEEE, d MMM|MMMMd|d MMMM|MMMMEEEEd|EEEE, d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM, y|yMMMEEEEd|EEEE, d MMM y|yMMMM|MMMM y|yMMMMEEEEd|EEEE, d MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3I,|.|-||||||E2I,|.|-¤||¤||¤||E0I,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_IO : Internal.Locale.Locale
en_IO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||IO||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_IT : Internal.Locale.Locale
en_IT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||IT||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_JE : Internal.Locale.Locale
en_JE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||JE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_JM : Internal.Locale.Locale
en_JM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||JM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|$|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_KE : Internal.Locale.Locale
en_KE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||KE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|Ksh|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_KI : Internal.Locale.Locale
en_KI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||KI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_KN : Internal.Locale.Locale
en_KN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||KN||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_KY : Internal.Locale.Locale
en_KY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||KY||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|$|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_LC : Internal.Locale.Locale
en_LC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||LC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_LR : Internal.Locale.Locale
en_LR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||LR||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|$|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_LS : Internal.Locale.Locale
en_LS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||LS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|R|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MG : Internal.Locale.Locale
en_MG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|Ar|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MH : Internal.Locale.Locale
en_MH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MH||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MO : Internal.Locale.Locale
en_MO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MO||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP$|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MP : Internal.Locale.Locale
en_MP =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MP||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MS : Internal.Locale.Locale
en_MS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MT : Internal.Locale.Locale
en_MT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MT||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|dd MMM y|dd MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|dd MMM y|yMMMEd|E, dd MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|GB£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MU : Internal.Locale.Locale
en_MU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MU||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|Rs|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d-M-yy
  - Medium : dd-MM-y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MV : Internal.Locale.Locale
en_MV =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MV||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|d-M-yy|dd-MM-y|d MMMM y|EEEE d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1} {0}|{1} {0}|{1} {0}|{1} {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|Rf|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MW : Internal.Locale.Locale
en_MW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MY : Internal.Locale.Locale
en_MY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||MY||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|RM|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_NA : Internal.Locale.Locale
en_NA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||NA||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|$|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NF : Internal.Locale.Locale
en_NF =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||NF||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NG : Internal.Locale.Locale
en_NG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||NG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|₦|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NL : Internal.Locale.Locale
en_NL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||NL||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|¤\u{00A0}-||¤\u{00A0}||¤\u{00A0}||E0W.|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NO : Internal.Locale.Locale
en_NO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||NO||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|kr|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NR : Internal.Locale.Locale
en_NR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||NR||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NU : Internal.Locale.Locale
en_NU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||NU||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_NZ : Internal.Locale.Locale
en_NZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||NZ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PG : Internal.Locale.Locale
en_PG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||PG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|K|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PH : Internal.Locale.Locale
en_PH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||PH||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : dd-MMM-y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PK : Internal.Locale.Locale
en_PK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||PK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|dd-MMM-y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|Rs|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_PL : Internal.Locale.Locale
en_PL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||PL||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_PN : Internal.Locale.Locale
en_PN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||PN||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PR : Internal.Locale.Locale
en_PR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||PR||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_PT : Internal.Locale.Locale
en_PT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||PT||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PW : Internal.Locale.Locale
en_PW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||PW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_RO : Internal.Locale.Locale
en_RO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||RO||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_RW : Internal.Locale.Locale
en_RW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||RW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SB : Internal.Locale.Locale
en_SB =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SB||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|$|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SC : Internal.Locale.Locale
en_SC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SD : Internal.Locale.Locale
en_SD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SD||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SE : Internal.Locale.Locale
en_SE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SE||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|y-MM-dd|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|y-MM|yMd|y-MM-dd|yMEd|E, y-MM-dd|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|\u{00A0}%||\u{00A0}%||\u{00A0}%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|kr|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SG : Internal.Locale.Locale
en_SG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|d/M/yy|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|$|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SH : Internal.Locale.Locale
en_SH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SH||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|GB£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|£|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SI : Internal.Locale.Locale
en_SI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SI||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|-||||||E2W.|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W.|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SK : Internal.Locale.Locale
en_SK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SL : Internal.Locale.Locale
en_SL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SL||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|Le|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SS : Internal.Locale.Locale
en_SS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|GB£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|£|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SX : Internal.Locale.Locale
en_SX =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SX||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|NAf.|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SZ : Internal.Locale.Locale
en_SZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||SZ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|E|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_TC : Internal.Locale.Locale
en_TC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||TC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_TK : Internal.Locale.Locale
en_TK =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||TK||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_TO : Internal.Locale.Locale
en_TO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||TO||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|T$|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_TT : Internal.Locale.Locale
en_TT =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||TT||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|$|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_TV : Internal.Locale.Locale
en_TV =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||TV||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_TZ : Internal.Locale.Locale
en_TZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||TZ||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TSh|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_UG : Internal.Locale.Locale
en_UG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||UG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|USh|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_UM : Internal.Locale.Locale
en_UM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||UM||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VC : Internal.Locale.Locale
en_VC =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||VC||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VG : Internal.Locale.Locale
en_VG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||VG||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VI : Internal.Locale.Locale
en_VI =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||VI||AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|AM|PM|10|afternoon1|in the afternoon|am|AM|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|PM|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|M/d/yy|MMM d, y|MMMM d, y|EEEE, MMMM d, y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|56|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|M/d/y G|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hr|1|{0} hr|0||0||0||0|||{0} min|1|{0} min|0||0||0||0|||{0} sec|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VU : Internal.Locale.Locale
en_VU =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||VU||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VT|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_WS : Internal.Locale.Locale
en_WS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||WS||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WS$|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : y/MM/dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_ZA : Internal.Locale.Locale
en_ZA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||ZA||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|y/MM/dd|dd MMM y|dd MMMM y|EEEE, dd MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|MM/dd|MEd|E, MM/dd|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, dd MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|y/MM/dd|yMEd|E, y/MM/dd|yMMM|MMM y|yMMMd|dd MMM y|yMMMEd|E, dd MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-¤||¤||¤||E0W\u{00A0}|,|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|R|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_ZM : Internal.Locale.Locale
en_ZM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||ZM||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|dd/MM/y|d MMM y|d MMMM y|EEEE, d MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|h:mm\u{202F}a|h:mm:ss\u{202F}a|h:mm:ss\u{202F}a z|h:mm:ss\u{202F}a zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|dd/MM|MEd|E, dd/MM|MMdd|dd/MM|MMM|LLL|MMMd|d MMM|MMMEd|E, d MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|dd/MM/y|yMEd|E, dd/MM/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|K|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : d/M/y
  - Medium : dd MMM,y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_ZW : Internal.Locale.Locale
en_ZW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "en||ZW||am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|am|pm|10|afternoon1|in the afternoon|am|am|am-alt-variant|am|evening1|in the evening|midnight|midnight|morning1|in the morning|night1|at night|noon|noon|pm|pm|pm-alt-variant|pm|a|p|10|afternoon1|in the afternoon|am|a|am-alt-variant|am|evening1|in the evening|midnight|mi|morning1|in the morning|night1|at night|noon|n|pm|p|pm-alt-variant|pm|d/M/y|dd MMM,y|dd MMMM y|EEEE, dd MMMM y|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sept|Oct|Nov|Dec|January|February|March|April|May|June|July|August|September|October|November|December|J|F|M|A|M|J|J|A|S|O|N|D|0|Sun|Mon|Tue|Wed|Thu|Fri|Sat|Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|S|M|T|W|T|F|S|0|BC|AD|Before Christ|Anno Domini|B|A|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|57|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm\u{202F}a|Ehm-alt-ascii|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss\u{202F}a|Ehms-alt-ascii|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|d/M/y G|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E, d MMM y G|h|h\u{202F}a|h-alt-ascii|h a|H|HH|hm|h:mm\u{202F}a|hm-alt-ascii|h:mm a|Hm|HH:mm|hms|h:mm:ss\u{202F}a|hms-alt-ascii|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss\u{202F}a v|hmsv-alt-ascii|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm\u{202F}a v|hmv-alt-ascii|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMdd|dd/MM|MMM|LLL|MMMd|dd MMM|MMMEd|E, dd MMM|MMMMd|d MMMM|MMMMW-count-one|'week' W 'of' MMMM|MMMMW-count-other|'week' W 'of' MMMM|ms|mm:ss|y|y|yM|MM/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|dd MMM, y|yMMMEd|E, dd MMM, y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|'week' w 'of' Y|yw-count-other|'week' w 'of' Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|-||||||E2W,|.|-¤||¤||¤||E0W,|.|-|%||%||%|164|AED|AED|AFN|AFN|ALL|ALL|AMD|AMD|ANG|ANG|AOA|AOA|ARS|ARS|AUD|A$|AWG|AWG|AZN|AZN|BAM|BAM|BBD|BBD|BDT|BDT|BGN|BGN|BHD|BHD|BIF|BIF|BMD|BMD|BND|BND|BOB|BOB|BRL|R$|BSD|BSD|BTN|BTN|BWP|BWP|BYN|BYN|BZD|BZD|CAD|CA$|CDF|CDF|CHF|CHF|CLP|CLP|CNH|CNH|CNY|CN¥|COP|COP|CRC|CRC|CUC|CUC|CUP|CUP|CVE|CVE|CZK|CZK|DJF|DJF|DKK|DKK|DOP|DOP|DZD|DZD|EGP|EGP|ERN|ERN|ESP|₧|ETB|ETB|EUR|€|FJD|FJD|FKP|FKP|GBP|£|GEL|GEL|GHS|GHS|GIP|GIP|GMD|GMD|GNF|GNF|GTQ|GTQ|GYD|GYD|HKD|HK$|HNL|HNL|HRK|HRK|HTG|HTG|HUF|HUF|IDR|IDR|ILS|₪|INR|₹|IQD|IQD|IRR|IRR|ISK|ISK|JMD|JMD|JOD|JOD|JPY|JP¥|KES|KES|KGS|KGS|KHR|KHR|KMF|KMF|KPW|KPW|KRW|₩|KWD|KWD|KYD|KYD|KZT|KZT|LAK|LAK|LBP|LBP|LKR|LKR|LRD|LRD|LSL|LSL|LTL|Lt|LVL|Ls|LYD|LYD|MAD|MAD|MDL|MDL|MGA|MGA|MKD|MKD|MMK|MMK|MNT|MNT|MOP|MOP|MRU|MRU|MUR|MUR|MVR|MVR|MWK|MWK|MXN|MX$|MYR|MYR|MZN|MZN|NAD|NAD|NGN|NGN|NIO|NIO|NOK|NOK|NPR|NPR|NZD|NZ$|OMR|OMR|PAB|PAB|PEN|PEN|PGK|PGK|PHP|₱|PKR|PKR|PLN|PLN|PYG|PYG|QAR|QAR|RON|RON|RSD|RSD|RUB|RUB|RWF|RWF|SAR|SAR|SBD|SBD|SCR|SCR|SDG|SDG|SEK|SEK|SGD|SGD|SHP|SHP|SLE|SLE|SLL|SLL|SOS|SOS|SRD|SRD|SSP|SSP|STN|STN|SYP|SYP|SZL|SZL|THB|THB|TJS|TJS|TMT|TMT|TND|TND|TOP|TOP|TRY|TRY|TTD|TTD|TWD|NT$|TZS|TZS|UAH|UAH|UGX|UGX|USD|US$|UYU|UYU|UZS|UZS|VEF|Bs|VES|VES|VND|₫|VUV|VUV|WST|WST|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|YER|ZAR|ZAR|ZMW|ZMW|ZWG|ZWG|{0} yrs|1|{0} yr|0||0||0||0|||{0} mths|1|{0} mth|0||0||0||0|||{0} wks|1|{0} wk|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hrs|1|{0} hr|0||0||0||0|||{0} mins|1|{0} min|0||0||0||0|||{0} secs|1|{0} sec|0||0||0||0|||{0} ms|1|{0} ms|0||0||0||0|||{0} years|1|{0} year|0||0||0||0|||{0} months|1|{0} month|0||0||0||0|||{0} weeks|1|{0} week|0||0||0||0|||{0} days|1|{0} day|0||0||0||0|||{0} hours|1|{0} hour|0||0||0||0|||{0} minutes|1|{0} minute|0||0||0||0|||{0} seconds|1|{0} second|0||0||0||0|||{0} milliseconds|1|{0} millisecond|0||0||0||0|||{0}y|1|{0}y|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}w|1|{0}w|0||0||0||0|||{0}d|1|{0}d|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0}, {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
