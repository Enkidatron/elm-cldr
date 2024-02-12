module Generated.Ar exposing (ar, ar_AE, ar_BH, ar_DJ, ar_DZ, ar_EG, ar_EH, ar_ER, ar_IL, ar_IQ, ar_JO, ar_KM, ar_KW, ar_LB, ar_LY, ar_MA, ar_MR, ar_OM, ar_PS, ar_QA, ar_SA, ar_SD, ar_SO, ar_SS, ar_SY, ar_TD, ar_TN, ar_YE)

{-|

@docs ar, ar_AE, ar_BH, ar_DJ, ar_DZ, ar_EG, ar_EH, ar_ER, ar_IL, ar_IQ, ar_JO, ar_KM, ar_KW, ar_LB, ar_LY, ar_MA, ar_MR, ar_OM, ar_PS, ar_QA, ar_SA, ar_SD, ar_SO, ar_SS, ar_SY, ar_TD, ar_TN, ar_YE

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "ar"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 24, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 3, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 1, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 1, 0 ) ( 3, 0 ) "night2"
            ]
          )
        ]


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar : Internal.Locale.Locale
ar =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_AE : Internal.Locale.Locale
ar_AE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||AE||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_BH : Internal.Locale.Locale
ar_BH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||BH||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_DJ : Internal.Locale.Locale
ar_DJ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||DJ||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|124|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DJF|Fdj|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_DZ : Internal.Locale.Locale
ar_DZ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||DZ||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|جانفي|فيفري|مارس|أفريل|ماي|جوان|جويلية|أوت|سبتمبر|أكتوبر|نوفمبر|ديسمبر|جانفي|فيفري|مارس|أفريل|ماي|جوان|جويلية|أوت|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ج|ف|م|أ|م|ج|ج|أ|س|أ|ن|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|\u{200E}-||||||E2W.|,|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W.|,|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_EG : Internal.Locale.Locale
ar_EG =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||EG||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_EH : Internal.Locale.Locale
ar_EH =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||EH||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_ER : Internal.Locale.Locale
ar_ER =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||ER||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|124|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ERN|Nfk|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
ar_IL : Internal.Locale.Locale
ar_IL =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||IL||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|H:mm|H:mm:ss|H:mm:ss z|H:mm:ss zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_IQ : Internal.Locale.Locale
ar_IQ =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||IQ||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين\u{00A0}الأول|تشرين الثاني|كانون الأول|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|ك|ش|آ|ن|أ|ح|ت|آ|أ|ت|ت|ك|1|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|ك|ش|آ|ن|أ|ح|ت|آ|أ|ت|ت|ك|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_JO : Internal.Locale.Locale
ar_JO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||JO||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|ك|ش|آ|ن|أ|ح|ت|آ|أ|ت|ت|ك|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ar_KM : Internal.Locale.Locale
ar_KM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||KM||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_KW : Internal.Locale.Locale
ar_KW =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||KW||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_LB : Internal.Locale.Locale
ar_LB =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||LB||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|ك|ش|آ|ن|أ|ح|ت|آ|أ|ت|ت|ك|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|\u{200E}-||||||E2W.|,|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W.|,|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|SDG|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_LY : Internal.Locale.Locale
ar_LY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||LY||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ل|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|\u{200E}-||||||E2W.|,|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W.|,|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ar_MA : Internal.Locale.Locale
ar_MA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||MA||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|ماي|يونيو|يوليوز|غشت|شتنبر|أكتوبر|نونبر|دجنبر|يناير|فبراير|مارس|أبريل|ماي|يونيو|يوليوز|غشت|شتنبر|أكتوبر|نونبر|دجنبر|ي|ف|م|أ|م|ن|ل|غ|ش|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W.|,|\u{200E}-||||||E2W.|,|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W.|,|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_MR : Internal.Locale.Locale
ar_MR =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||MR||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|إبريل|مايو|يونيو|يوليو|أغشت|شتمبر|أكتوبر|نوفمبر|دجمبر|يناير|فبراير|مارس|إبريل|مايو|يونيو|يوليو|أغشت|شتمبر|أكتوبر|نوفمبر|دجمبر|ي|ف|م|إ|و|ن|ل|غ|ش|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|\u{200E}-||||||E2W.|,|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W.|,|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_OM : Internal.Locale.Locale
ar_OM =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||OM||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_PS : Internal.Locale.Locale
ar_PS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||PS||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|ك|ش|آ|ن|أ|ح|ت|آ|أ|ت|ت|ك|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_QA : Internal.Locale.Locale
ar_QA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||QA||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SA : Internal.Locale.Locale
ar_SA =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||SA||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ل|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SD : Internal.Locale.Locale
ar_SD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||SD||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SO : Internal.Locale.Locale
ar_SO =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||SO||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|124|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SOS|S|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SS : Internal.Locale.Locale
ar_SS =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||SS||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|GB£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SY : Internal.Locale.Locale
ar_SY =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||SY||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|كانون الثاني|شباط|آذار|نيسان|أيار|حزيران|تموز|آب|أيلول|تشرين الأول|تشرين الثاني|كانون الأول|ك|ش|آ|ن|أ|ح|ت|آ|أ|ت|ت|ك|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_TD : Internal.Locale.Locale
ar_TD =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||TD||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_TN : Internal.Locale.Locale
ar_TN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||TN||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|جانفي|فيفري|مارس|أفريل|ماي|جوان|جويلية|أوت|سبتمبر|أكتوبر|نوفمبر|ديسمبر|جانفي|فيفري|مارس|أفريل|ماي|جوان|جويلية|أوت|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ج|ف|م|أ|م|ج|ج|أ|س|أ|ن|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W.|,|\u{200E}-||||||E2W.|,|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W.|,|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_YE : Internal.Locale.Locale
ar_YE =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            "ar||YE||ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|ص|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|في الصباح|morning2|صباحًا|night1|في المساء|night2|ليلاً|pm|م|ص|م|9|afternoon1|ظهرًا|afternoon2|بعد الظهر|am|ص|evening1|مساءً|morning1|فجرًا|morning2|صباحًا|night1|منتصف الليل|night2|ليلاً|pm|م|d\u{200F}/M\u{200F}/y|dd\u{200F}/MM\u{200F}/y|d MMMM y|EEEE، d MMMM y|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|يناير|فبراير|مارس|أبريل|مايو|يونيو|يوليو|أغسطس|سبتمبر|أكتوبر|نوفمبر|ديسمبر|ي|ف|م|أ|و|ن|ل|غ|س|ك|ب|د|0|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|الأحد|الاثنين|الثلاثاء|الأربعاء|الخميس|الجمعة|السبت|ح|ن|ث|ر|خ|ج|س|0|ق.م|م|قبل الميلاد|ميلادي|ق.م|م|h:mm a|h:mm:ss a|h:mm:ss a z|h:mm:ss a zzzz|{1}، {0}|{1}، {0}|{1}، {0}|{1}، {0}|60|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E، d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|dd-MM-y GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E، d MMM y G|h|h a|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d\u{200F}/M|MEd|E، d\u{200F}/M|MMdd|dd\u{200F}/MM|MMM|LLL|MMMd|d MMM|MMMEd|E، d MMM|MMMMd|d MMMM|MMMMEd|E، d MMMM|MMMMW-count-zero|الأسبوع W من MMMM|MMMMW-count-one|الأسبوع W من MMMM|MMMMW-count-two|الأسبوع W من MMMM|MMMMW-count-few|الأسبوع W من MMMM|MMMMW-count-many|الأسبوع W من MMMM|MMMMW-count-other|الأسبوع W من MMMM|ms|mm:ss|y|y|yM|M\u{200F}/y|yMd|d\u{200F}/M\u{200F}/y|yMEd|E، d\u{200F}/M\u{200F}/y|yMM|MM\u{200F}/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E، d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-zero|الأسبوع w من سنة Y|yw-count-one|الأسبوع w من سنة Y|yw-count-two|الأسبوع w من سنة Y|yw-count-few|الأسبوع w من سنة Y|yw-count-many|الأسبوع w من سنة Y|yw-count-other|الأسبوع w من سنة Y|ahmm|ahmmss|ahmmssz|ahmmsszzzz|X3W,|.|\u{200E}-||||||E2W,|.|\u{200F}-|\u{00A0}¤|\u{200F}|\u{00A0}¤|\u{200F}|\u{00A0}¤|E0W,|.|\u{200E}-|%||%||%|123|AED|د.إ.\u{200F}|AFN|؋|AMD|֏|AOA|Kz|ARS|AR$|AUD|AU$|AZN|₼|BAM|KM|BBD|BB$|BDT|৳|BHD|د.ب.\u{200F}|BMD|BM$|BND|BN$|BOB|Bs|BRL|R$|BSD|BS$|BWP|P|BYN|р.|BZD|BZ$|CAD|CA$|CLP|CL$|CNY|CN¥|COP|CO$|CRC|₡|CUC|$|CUP|CU$|CZK|Kč|DKK|kr|DOP|DO$|DZD|د.ج.\u{200F}|EGP|ج.م.\u{200F}|ESP|₧|EUR|€|FJD|FJ$|FKP|£|GBP|UK£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|GY$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IQD|د.ع.\u{200F}|IRR|ر.إ.|ISK|kr|JMD|JM$|JOD|د.أ.\u{200F}|JPY|JP¥|KGS|\u{20C0}|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KWD|د.ك.\u{200F}|KYD|KY$|KZT|₸|LAK|₭|LBP|ل.ل.\u{200F}|LKR|Rs|LRD|$LR|LTL|Lt|LVL|Ls|LYD|د.ل.\u{200F}|MAD|د.م.\u{200F}|MGA|Ar|MMK|K|MNT|₮|MRU|أ.م.|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|OMR|ر.ع.\u{200F}|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|QAR|ر.ق.\u{200F}|RON|lei|RUB|₽|RWF|RF|SAR|ر.س.\u{200F}|SBD|SB$|SDD|د.س.\u{200F}|SDG|ج.س.|SEK|kr|SGD|$|SHP|£|SRD|SR$|SSP|£|STN|Db|SYP|ل.س.\u{200F}|THB|฿|TND|د.ت.\u{200F}|TOP|T$|TRY|₺|TTD|TT$|TWD|NT$|UAH|₴|USD|US$|UYU|UY$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|YER|ر.ي.\u{200F}|ZAR|R|ZMW|ZK|"
        )
