module Generated.Fa exposing (fa, fa_AF)

{-|

@docs fa, fa_AF

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
        [ ( "fa"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 13, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 13, 0 ) ( 19, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 1, 0 ) ( 4, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 19, 0 ) ( 24, 0 ) "night1"
            , Internal.DayPeriodRule.FromBefore ( 0, 0 ) ( 1, 0 ) "night2"
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

  - Short : y/M/d
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
fa : Internal.Locale.Locale
fa =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fa||||ق.ظ.|ب.ظ.|8|afternoon1|ظهر|afternoon2|عصر|am|ق.ظ.|morning1|بامداد|morning2|صبح|night1|شب|night2|نیمه\u{200C}شب|pm|ب.ظ.|قبل\u{200C}ازظهر|بعدازظهر|8|afternoon1|بعدازظهر|afternoon2|عصر|am|قبل\u{200C}ازظهر|morning1|بامداد|morning2|صبح|night1|شب|night2|نیمه\u{200C}شب|pm|بعدازظهر|ق|ب|8|afternoon1|ظهر|afternoon2|عصر|am|ق|morning1|بامداد|morning2|صبح|night1|شب|night2|نیمه\u{200C}شب|pm|ب|y/M/d|d MMM y|d MMMM y|EEEE d MMMM y|ژانویه|فوریه|مارس|آوریل|مه|ژوئن|ژوئیه|اوت|سپتامبر|اکتبر|نوامبر|دسامبر|ژانویهٔ|فوریهٔ|مارس|آوریل|مهٔ|ژوئن|ژوئیهٔ|اوت|سپتامبر|اکتبر|نوامبر|دسامبر|ژ|ف|م|آ|م|ژ|ژ|ا|س|ا|ن|د|1|ژانویه|فوریه|مارس|آوریل|مه|ژوئن|ژوئیه|اوت|سپتامبر|اکتبر|نوامبر|دسامبر|ژانویه|فوریه|مارس|آوریل|مه|ژوئن|ژوئیه|اوت|سپتامبر|اکتبر|نوامبر|دسامبر|ژ|ف|م|آ|م|ژ|ژ|ا|س|ا|ن|د|یکشنبه|دوشنبه|سه\u{200C}شنبه|چهارشنبه|پنجشنبه|جمعه|شنبه|یکشنبه|دوشنبه|سه\u{200C}شنبه|چهارشنبه|پنجشنبه|جمعه|شنبه|ی|د|س|چ|پ|ج|ش|0|ق.م.|م.|قبل از میلاد|میلادی|ق|م|H:mm|H:mm:ss|H:mm:ss (z)|H:mm:ss (zzzz)|{1}،\u{200F} {0}|{1}،\u{200F} {0}|{1}، ساعت {0}|{1}، ساعت {0}|53|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E d|Ehm|E h:mm a|EHm|E H:mm|Ehms|E h:mm:ss a|EHms|E H:mm:ss|Gy|y G|GyMd|y/M/d GGGGG|GyMMM|MMM y G|GyMMMd|d MMM y G|GyMMMEd|E d MMM y G|h|h\u{202F}a|H|H|HHmmZ|HH:mm (Z)|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmv|h:mm a v|Hmv|H:mm v|M|L|Md|M/d|MEd|E M/d|MMM|LLL|MMMd|d LLL|MMMEd|E d LLL|MMMMd|d LLLL|MMMMEd|E d LLLL|MMMMW-count-one|هفتهٔ Wم LLLL|MMMMW-count-other|هفتهٔ Wم LLLL|mmss|mm:ss|ms|m:ss|y|y|yM|y/M|yMd|y/M/d|yMEd|E y/M/d|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E d MMM y|yMMMM|MMMM y|yMMMMEEEEd|EEEE d MMMM y|yQQQ|QQQQ y|yQQQQ|QQQQ y|yw-count-one|هفتهٔ wم Y|yw-count-other|هفتهٔ wم Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W,|.|\u{200E}−||||||E2W,|.|\u{200E}−\u{200E}¤\u{00A0}||\u{200E}¤\u{00A0}||\u{200E}¤\u{00A0}||E0W,|.|\u{200E}−|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|Br|BZD|$|CAD|$CA|CLP|$|CNY|¥CN|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|$HK|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IRR|ریال|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|$MX|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|$EC|XCG|Cg.|XOF|فرانک\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} سال|1|{0} سال|0||0||0||0|||{0} ماه|1|{0} ماه|0||0||0||0|||{0} هفته|1|{0} هفته|0||0||0||0|||{0} روز|1|{0} روز|0||0||0||0|||{0} ساعت|1|{0} ساعت|0||0||0||0|||{0} دقیقه|1|{0} دقیقه|0||0||0||0|||{0} ثانیه|1|{0} ثانیه|0||0||0||0|||{0} میلی\u{200C}ثانیه|1|{0} میلی\u{200C}ثانیه|0||0||0||0|||{0} سال|1|{0} سال|0||0||0||0|||{0} ماه|1|{0} ماه|0||0||0||0|||{0} هفته|1|{0} هفته|0||0||0||0|||{0} روز|1|{0} روز|0||0||0||0|||{0} ساعت|1|{0} ساعت|0||0||0||0|||{0} دقیقه|1|{0} دقیقه|0||0||0||0|||{0} ثانیه|1|{0} ثانیه|0||0||0||0|||{0} میلی\u{200C}ثانیه|1|{0} میلی\u{200C}ثانیه|0||0||0||0|||{0} سال|1|{0} سال|0||0||0||0|||{0} ماه|1|{0} ماه|0||0||0||0|||{0} هفته|1|{0} هفته|0||0||0||0|||{0} روز|1|{0} روز|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}،\u{200F} {1}|{0}،\u{200F} {1}|{0}، و {1}|{0}،\u{200F} {1}|{0}،\u{200F} {1}|{0}،\u{200F} {1}|{0}، و {1}|{0} و {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )


{-| Date format strings:

  - Short : y/M/d
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
fa_AF : Internal.Locale.Locale
fa_AF =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "fa||AF||ق.ظ.|ب.ظ.|8|afternoon1|ظهر|afternoon2|بعدازچاشت|am|ق.ظ.|morning1|بامداد|morning2|صبح|night1|شب|night2|نیمه\u{200C}شب|pm|ب.ظ.|قبل\u{200C}ازظهر|بعدازظهر|8|afternoon1|ظهر|afternoon2|بعدازچاشت|am|قبل\u{200C}ازظهر|morning1|بامداد|morning2|صبح|night1|شب|night2|نیمه\u{200C}شب|pm|بعدازظهر|ق|ب|8|afternoon1|ظهر|afternoon2|بعدازچاشت|am|ق|morning1|بامداد|morning2|صبح|night1|شب|night2|نیمه\u{200C}شب|pm|ب|y/M/d|d MMM y|d MMMM y|EEEE d MMMM y|جنو|فبروری|مارچ|اپریل|می|جون|جول|اگست|سپتمبر|اکتوبر|نومبر|دسم|جنوری|فبروری|مارچ|اپریل|می|جون|جولای|اگست|سپتمبر|اکتوبر|نومبر|دسمبر|ج|ف|م|ا|م|ج|ج|ا|س|ا|ن|د|1|جنوری|فبروری|مارچ|اپریل|می|جون|جولای|اگست|سپتمبر|اکتوبر|نومبر|دسمبر|جنوری|فبروری|مارچ|اپریل|می|جون|جولای|اگست|سپتمبر|اکتوبر|نومبر|دسمبر|ج|ف|م|ا|م|ج|ج|ا|س|ا|ن|د|یکشنبه|دوشنبه|سه\u{200C}شنبه|چهارشنبه|پنجشنبه|جمعه|شنبه|یکشنبه|دوشنبه|سه\u{200C}شنبه|چهارشنبه|پنجشنبه|جمعه|شنبه|ی|د|س|چ|پ|ج|ش|0|ق.م.|م.|قبل از میلاد|میلادی|ق|م|H:mm|H:mm:ss|H:mm:ss (z)|H:mm:ss (zzzz)|{1}،\u{200F} {0}|{1}،\u{200F} {0}|{1}، ساعت {0}|{1}، ساعت {0}|53|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|d E|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|y G|GyMd|y/M/d GGGGG|GyMMM|MMM y G|GyMMMd|MMM d, y G|GyMMMEd|E, MMM d, y G|h|h\u{202F}a|H|HH|HHmmZ|HH:mm (Z)|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|H:mm:ss v|hmv|h:mm a v|Hmv|H:mm v|M|L|Md|M/d|MEd|E, M/d|MMM|LLL|MMMd|MMM d|MMMEd|E, MMM d|MMMMd|MMMM d|MMMMEd|E d LLLL|MMMMW-count-one|هفتهٔ Wم LLLL|MMMMW-count-other|هفتهٔ Wم LLLL|mmss|mm:ss|ms|m:ss|y|y|yM|M/y|yMd|M/d/y|yMEd|E, M/d/y|yMMM|MMM y|yMMMd|MMM d, y|yMMMEd|E, MMM d, y|yMMMM|MMMM y|yMMMMEEEEd|EEEE d MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-one|هفتهٔ wم Y|yw-count-other|هفتهٔ wم Y|Hmm|Hmmss|Hmmssz|Hmmsszzzz|X3W,|.|\u{200E}−||||||E2W,|.|\u{200E}−¤\u{00A0}||¤\u{00A0}||¤\u{00A0}||E0W,|.|\u{200E}−|%||%||%|108|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|Br|BZD|$|CAD|$CA|CLP|$|CNY|¥CN|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|$HK|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|IRR|ریال|ISK|kr|JMD|$|JPY|¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|$MX|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|$NZ|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|$EC|XCG|Cg.|XOF|فرانک\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} سال|1|{0} سال|0||0||0||0|||{0} ماه|1|{0} ماه|0||0||0||0|||{0} هفته|1|{0} هفته|0||0||0||0|||{0} روز|1|{0} روز|0||0||0||0|||{0} ساعت|1|{0} ساعت|0||0||0||0|||{0} دقیقه|1|{0} دقیقه|0||0||0||0|||{0} ثانیه|1|{0} ثانیه|0||0||0||0|||{0} میلی\u{200C}ثانیه|1|{0} میلی\u{200C}ثانیه|0||0||0||0|||{0} سال|1|{0} سال|0||0||0||0|||{0} ماه|1|{0} ماه|0||0||0||0|||{0} هفته|1|{0} هفته|0||0||0||0|||{0} روز|1|{0} روز|0||0||0||0|||{0} ساعت|1|{0} ساعت|0||0||0||0|||{0} دقیقه|1|{0} دقیقه|0||0||0||0|||{0} ثانیه|1|{0} ثانیه|0||0||0||0|||{0} میلی\u{200C}ثانیه|1|{0} میلی\u{200C}ثانیه|0||0||0||0|||{0} سال|1|{0} سال|0||0||0||0|||{0} ماه|1|{0} ماه|0||0||0||0|||{0} هفته|1|{0} هفته|0||0||0||0|||{0} روز|1|{0} روز|0||0||0||0|||{0}h|1|{0}h|0||0||0||0|||{0}m|1|{0}m|0||0||0||0|||{0}s|1|{0}s|0||0||0||0|||{0}ms|1|{0}ms|0||0||0||0|||{0}،\u{200F} {1}|{0}،\u{200F} {1}|{0}، و {1}|{0}،\u{200F} {1}|{0}،\u{200F} {1}|{0}،\u{200F} {1}|{0}، و {1}|{0} و {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
