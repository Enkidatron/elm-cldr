module Generated.Hy exposing (hy)

{-|

@docs hy

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
        [ ( "hy"
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
    , many = Nothing
    }


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd MMM, y թ.
  - Long : dd MMMM, y թ.
  - Full : y թ. MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
hy : Internal.Locale.Locale
hy =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            pluralRules
            "hy||||AM|PM|8|afternoon1|ցերեկը|am|AM|evening1|երեկոյան|midnight|կեսգիշեր|morning1|առավոտյան|night1|գիշերը|noon|կեսօր|pm|PM|AM|PM|8|afternoon1|ցերեկվա|am|AM|evening1|երեկոյան|midnight|կեսգիշերին|morning1|առավոտյան|night1|գիշերվա|noon|կեսօրին|pm|PM|ա|հ|8|afternoon1|ցրկ|am|ա|evening1|երկ|midnight|կգ․|morning1|առվ|night1|գշր|noon|կօ․|pm|հ|dd.MM.yy|dd MMM, y թ.|dd MMMM, y թ.|y թ. MMMM d, EEEE|հնվ|փտվ|մրտ|ապր|մյս|հնս|հլս|օգս|սեպ|հոկ|նոյ|դեկ|հունվարի|փետրվարի|մարտի|ապրիլի|մայիսի|հունիսի|հուլիսի|օգոստոսի|սեպտեմբերի|հոկտեմբերի|նոյեմբերի|դեկտեմբերի|Հ|Փ|Մ|Ա|Մ|Հ|Հ|Օ|Ս|Հ|Ն|Դ|1|հնվ|փտվ|մրտ|ապր|մյս|հնս|հլս|օգս|սեպ|հոկ|նոյ|դեկ|հունվար|փետրվար|մարտ|ապրիլ|մայիս|հունիս|հուլիս|օգոստոս|սեպտեմբեր|հոկտեմբեր|նոյեմբեր|դեկտեմբեր|Հ|Փ|Մ|Ա|Մ|Հ|Հ|Օ|Ս|Հ|Ն|Դ|կիր|երկ|երք|չրք|հնգ|ուր|շբթ|կիրակի|երկուշաբթի|երեքշաբթի|չորեքշաբթի|հինգշաբթի|ուրբաթ|շաբաթ|Կ|Ե|Ե|Չ|Հ|Ո|Շ|0|մ.թ.ա.|մ.թ.|Քրիստոսից առաջ|Քրիստոսից հետո|մ.թ.ա.|մ.թ.|HH:mm|HH:mm:ss|HH:mm:ss z|HH:mm:ss zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|49|Bh|B h-ին|Bhm|B h:mm-ին|Bhms|B h:mm:ss|d|d|E|ccc|EBhm|E B h:mm-ին|EBhms|E B h:mm:ss|Ed|d, ccc|Ehm|E, h:mm a|EHm|E, HH:mm|Ehms|E, h:mm:ss a|EHms|E, HH:mm:ss|Gy|G y թ.|GyMd|dd.MM.y GGGGG|GyMMM|G y թ. MMM|GyMMMd|G y թ․ MMM d|GyMMMEd|G y թ. MMM d, E|h|h\u{202F}a|H|H|hm|h:mm a|Hm|H:mm|hms|h:mm:ss a|Hms|H:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|dd.MM|MEd|dd.MM, E|MMM|LLL|MMMd|d MMM|MMMEd|d MMM, E|MMMMd|d MMMM|MMMMW-count-one|MMMM W-ին շաբաթ|MMMMW-count-other|MMMM W-րդ շաբաթ|ms|mm:ss|y|y|yM|MM.y|yMd|dd.MM.y|yMEd|d.MM.y թ., E|yMMM|y թ. LLL|yMMMd|d MMM, y թ.|yMMMEd|y թ. MMM d, E|yMMMM|y թ․ LLLL|yQQQ|y թ. QQQ|yQQQQ|y թ. QQQQ|yw-count-one|Y թ․ w-ին շաբաթ|yw-count-other|Y թ․ w-րդ շաբաթ|HHmm|HHmmss|HHmmssz|HHmmsszzzz|X3W\u{00A0}|,|-||||||E2W\u{00A0}|,|-|\u{00A0}¤||\u{00A0}¤||\u{00A0}¤|E0W\u{00A0}|,|-|%||%||%|107|AFN|؋|AMD|֏|AOA|Kz|ARS|$|AUD|A$|AZN|₼|BAM|KM|BBD|$|BDT|৳|BMD|$|BND|$|BOB|Bs|BRL|R$|BSD|$|BWP|P|BYN|р.|BZD|$|CAD|CA$|CLP|$|CNY|CN¥|COP|$|CRC|₡|CUC|$|CUP|$|CZK|Kč|DKK|kr|DOP|$|EGP|E£|ESP|₧|EUR|€|FJD|$|FKP|£|GBP|£|GEL|₾|GHS|GH₵|GIP|£|GNF|FG|GTQ|Q|GYD|$|HKD|HK$|HNL|L|HRK|kn|HUF|Ft|IDR|Rp|ILS|₪|INR|₹|ISK|kr|JMD|$|JPY|JP¥|KGS|⃀|KHR|៛|KMF|CF|KPW|₩|KRW|₩|KYD|$|KZT|₸|LAK|₭|LBP|L£|LKR|Rs|LRD|$|LTL|Lt|LVL|Ls|MGA|Ar|MMK|K|MNT|₮|MUR|Rs|MXN|MX$|MYR|RM|NAD|$|NGN|₦|NIO|C$|NOK|kr|NPR|Rs|NZD|NZ$|PHP|PHP|PKR|Rs|PLN|zł|PYG|₲|RON|lei|RUB|₽|RWF|RF|SBD|$|SEK|kr|SGD|$|SHP|£|SRD|$|SSP|£|STN|Db|SYP|£|THB|฿|TOP|T$|TRY|₺|TTD|$|TWD|NT$|UAH|₴|USD|$|UYU|$|VEF|Bs|VND|₫|XAF|FCFA|XCD|EC$|XCG|Cg.|XOF|F\u{202F}CFA|XPF|CFPF|XXX|¤|ZAR|R|ZMW|ZK|{0} տ|1|{0} տ|0||0||0||0|||{0} ամս|1|{0} ամս|0||0||0||0|||{0} շաբ|1|{0} շաբ|0||0||0||0|||{0} օր|1|{0} օր|0||0||0||0|||{0} ժ|1|{0} ժ|0||0||0||0|||{0} ր|1|{0} ր|0||0||0||0|||{0} վրկ|1|{0} վրկ|0||0||0||0|||{0} մվ|1|{0} մվ|0||0||0||0|||{0} տարի|1|{0} տարի|0||0||0||0|||{0} ամիս|1|{0} ամիս|0||0||0||0|||{0} շաբաթ|1|{0} շաբաթ|0||0||0||0|||{0} օր|1|{0} օր|0||0||0||0|||{0} ժամ|1|{0} ժամ|0||0||0||0|||{0} րոպե|1|{0} րոպե|0||0||0||0|||{0} վայրկյան|1|{0} վայրկյան|0||0||0||0|||{0} միլիվայրկյան|1|{0} միլիվայրկյան|0||0||0||0|||{0} տ|1|{0} տ|0||0||0||0|||{0}ա|1|{0}ա|0||0||0||0|||{0} շ|1|{0} շ|0||0||0||0|||{0} օ|1|{0} օ|0||0||0||0|||{0}ժ|1|{0}ժ|0||0||0||0|||{0}ր|1|{0}ր|0||0||0||0|||{0} վ|1|{0} վ|0||0||0||0|||{0} մվ|1|{0} մվ|0||0||0||0|||{0} {1}|{0} {1}|{0} և {1}|{0} և {1}|{0}, {1}|{0}, {1}|{0} և {1}|{0} և {1}|{0} {1}|{0} {1}|{0} {1}|{0} {1}|"
        )
