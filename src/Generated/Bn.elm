module Generated.Bn exposing (bn, bn_IN)

{-|

@docs bn, bn_IN

-}

import Dict
import Internal.DayPeriodRule
import Internal.LanguageInfo
import Internal.Locale
import Internal.Parse
import Internal.Structures


dayPeriods : Dict.Dict String (List Internal.DayPeriodRule.DayPeriodRule)
dayPeriods =
    Dict.fromList
        [ ( "bn"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 18, 0 ) "afternoon2"
            , Internal.DayPeriodRule.FromBefore ( 18, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.FromBefore ( 4, 0 ) ( 6, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 6, 0 ) ( 12, 0 ) "morning2"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 4, 0 ) "night1"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
bn : Internal.Locale.Locale
bn =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "bn"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "দুপুর" )
                            , ( "afternoon2", "বিকাল" )
                            , ( "evening1", "সন্ধ্যা" )
                            , ( "morning1", "ভোর" )
                            , ( "morning2", "সকাল" )
                            , ( "night1", "রাত্রি" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "দুপুরবেলায়" )
                            , ( "afternoon2", "বিকাল" )
                            , ( "evening1", "সন্ধ্যাবেলায়" )
                            , ( "morning1", "ভোরবেলায়" )
                            , ( "morning2", "সকালবেলায়" )
                            , ( "night1", "রাত্রিবেলায়" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "দুপুর" )
                            , ( "afternoon2", "বিকাল" )
                            , ( "evening1", "সন্ধ্যা" )
                            , ( "morning1", "ভোর" )
                            , ( "morning2", "সকাল" )
                            , ( "night1", "রাত্রি" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE, d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "জানু"
                    , feb = "ফেব"
                    , mar = "মার্চ"
                    , apr = "এপ্রি"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুল"
                    , aug = "আগ"
                    , sep = "সেপ"
                    , oct = "অক্টো"
                    , nov = "নভে"
                    , dec = "ডিসে"
                    }
                , wide =
                    { jan = "জানুয়ারী"
                    , feb = "ফেব্রুয়ারী"
                    , mar = "মার্চ"
                    , apr = "এপ্রিল"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগস্ট"
                    , sep = "সেপ্টেম্বর"
                    , oct = "অক্টোবর"
                    , nov = "নভেম্বর"
                    , dec = "ডিসেম্বর"
                    }
                , narrow =
                    { jan = "জা"
                    , feb = "ফে"
                    , mar = "মা"
                    , apr = "এ"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জু"
                    , aug = "আ"
                    , sep = "সে"
                    , oct = "অ"
                    , nov = "ন"
                    , dec = "ডি"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "জানু"
                    , feb = "ফেব"
                    , mar = "মার্চ"
                    , apr = "এপ্রিল"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগস্ট"
                    , sep = "সেপ্টেম্বর"
                    , oct = "অক্টোবর"
                    , nov = "নভেম্বর"
                    , dec = "ডিসেম্বর"
                    }
                , wide =
                    { jan = "জানুয়ারী"
                    , feb = "ফেব্রুয়ারী"
                    , mar = "মার্চ"
                    , apr = "এপ্রিল"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগস্ট"
                    , sep = "সেপ্টেম্বর"
                    , oct = "অক্টোবর"
                    , nov = "নভেম্বর"
                    , dec = "ডিসেম্বর"
                    }
                , narrow =
                    { jan = "জা"
                    , feb = "ফে"
                    , mar = "মা"
                    , apr = "এ"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জু"
                    , aug = "আ"
                    , sep = "সে"
                    , oct = "অ"
                    , nov = "ন"
                    , dec = "ডি"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "রবি"
                    , mon = "সোম"
                    , tue = "মঙ্গল"
                    , wed = "বুধ"
                    , thu = "বৃহস্পতি"
                    , fri = "শুক্র"
                    , sat = "শনি"
                    }
                , wide =
                    { sun = "রবিবার"
                    , mon = "সোমবার"
                    , tue = "মঙ্গলবার"
                    , wed = "বুধবার"
                    , thu = "বৃহস্পতিবার"
                    , fri = "শুক্রবার"
                    , sat = "শনিবার"
                    }
                , narrow =
                    { sun = "র"
                    , mon = "সো"
                    , tue = "ম"
                    , wed = "বু"
                    , thu = "বৃ"
                    , fri = "শু"
                    , sat = "শ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "রবি"
                    , mon = "সোম"
                    , tue = "মঙ্গল"
                    , wed = "বুধ"
                    , thu = "বৃহস্পতি"
                    , fri = "শুক্র"
                    , sat = "শনি"
                    }
                , wide =
                    { sun = "রবিবার"
                    , mon = "সোমবার"
                    , tue = "মঙ্গলবার"
                    , wed = "বুধবার"
                    , thu = "বৃহস্পতিবার"
                    , fri = "শুক্রবার"
                    , sat = "শনিবার"
                    }
                , narrow =
                    { sun = "র"
                    , mon = "সো"
                    , tue = "ম"
                    , wed = "বু"
                    , thu = "বৃ"
                    , fri = "শু"
                    , sat = "শ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "খ্রিস্টপূর্ব", ad = "খৃষ্টাব্দ" }
                , wide = { bc = "খ্রিস্টপূর্ব", ad = "খ্রীষ্টাব্দ" }
                , narrow = { bc = "খ্রিস্টপূর্ব", ad = "খৃষ্টাব্দ" }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM, y G" )
                , ( "GyMMMEd", "E, d MMM, y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d-M" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMW-count-one", "MMMM এর Wয় সপ্তাহ" )
                , ( "MMMMW-count-other", "MMMM এর Wয় সপ্তাহ" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "E, d MMM, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y এর wতম সপ্তাহ" )
                , ( "yw-count-other", "Y এর wতম সপ্তাহ" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
bn_IN : Internal.Locale.Locale
bn_IN =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "bn"
            , script = Nothing
            , territory = Just "IN"
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "দুপুর" )
                            , ( "afternoon2", "বিকাল" )
                            , ( "evening1", "সন্ধ্যা" )
                            , ( "morning1", "ভোর" )
                            , ( "morning2", "সকাল" )
                            , ( "night1", "রাত্রি" )
                            ]
                    }
                , wide =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "দুপুরবেলায়" )
                            , ( "afternoon2", "বিকাল" )
                            , ( "evening1", "সন্ধ্যাবেলায়" )
                            , ( "morning1", "ভোরবেলায়" )
                            , ( "morning2", "সকালবেলায়" )
                            , ( "night1", "রাত্রি" )
                            ]
                    }
                , narrow =
                    { am = "AM"
                    , pm = "PM"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "দুপুর" )
                            , ( "afternoon2", "বিকাল" )
                            , ( "evening1", "সন্ধ্যা" )
                            , ( "morning1", "ভোর" )
                            , ( "morning2", "সকাল" )
                            , ( "night1", "রাত্রি" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/yy"
                , medium = "d MMM, y"
                , long = "d MMMM, y"
                , full = "EEEE, d MMMM, y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "জানু"
                    , feb = "ফেব"
                    , mar = "মার্চ"
                    , apr = "এপ্রি"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুল"
                    , aug = "আগ"
                    , sep = "সেপ্টেঃ"
                    , oct = "অক্টোঃ"
                    , nov = "নভেঃ"
                    , dec = "ডিসেঃ"
                    }
                , wide =
                    { jan = "জানুয়ারী"
                    , feb = "ফেব্রুয়ারী"
                    , mar = "মার্চ"
                    , apr = "এপ্রিল"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগস্ট"
                    , sep = "সেপ্টেম্বর"
                    , oct = "অক্টোবর"
                    , nov = "নভেম্বর"
                    , dec = "ডিসেম্বর"
                    }
                , narrow =
                    { jan = "জা"
                    , feb = "ফে"
                    , mar = "মা"
                    , apr = "এ"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুল"
                    , aug = "আ"
                    , sep = "সে"
                    , oct = "অ"
                    , nov = "ন"
                    , dec = "ডি"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "জানু"
                    , feb = "ফেব"
                    , mar = "মার্চ"
                    , apr = "এপ্রিল"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগস্ট"
                    , sep = "সেপ্টেঃ"
                    , oct = "অক্টোঃ"
                    , nov = "নভেঃ"
                    , dec = "ডিসেঃ"
                    }
                , wide =
                    { jan = "জানুয়ারী"
                    , feb = "ফেব্রুয়ারী"
                    , mar = "মার্চ"
                    , apr = "এপ্রিল"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুলাই"
                    , aug = "আগস্ট"
                    , sep = "সেপ্টেম্বর"
                    , oct = "অক্টোবর"
                    , nov = "নভেম্বর"
                    , dec = "ডিসেম্বর"
                    }
                , narrow =
                    { jan = "জা"
                    , feb = "ফে"
                    , mar = "মা"
                    , apr = "এ"
                    , may = "মে"
                    , jun = "জুন"
                    , jul = "জুল"
                    , aug = "আ"
                    , sep = "সে"
                    , oct = "অ"
                    , nov = "ন"
                    , dec = "ডি"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "রবি"
                    , mon = "সোম"
                    , tue = "মঙ্গল"
                    , wed = "বুধ"
                    , thu = "বৃহস্পতি"
                    , fri = "শুক্র"
                    , sat = "শনি"
                    }
                , wide =
                    { sun = "রবিবার"
                    , mon = "সোমবার"
                    , tue = "মঙ্গলবার"
                    , wed = "বুধবার"
                    , thu = "বৃহস্পতিবার"
                    , fri = "শুক্রবার"
                    , sat = "শনিবার"
                    }
                , narrow =
                    { sun = "র"
                    , mon = "সো"
                    , tue = "ম"
                    , wed = "বু"
                    , thu = "বৃ"
                    , fri = "শু"
                    , sat = "শ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "রবি"
                    , mon = "সোম"
                    , tue = "মঙ্গল"
                    , wed = "বুধ"
                    , thu = "বৃহস্পতি"
                    , fri = "শুক্র"
                    , sat = "শনি"
                    }
                , wide =
                    { sun = "রবিবার"
                    , mon = "সোমবার"
                    , tue = "মঙ্গলবার"
                    , wed = "বুধবার"
                    , thu = "বৃহস্পতিবার"
                    , fri = "শুক্রবার"
                    , sat = "শনিবার"
                    }
                , narrow =
                    { sun = "র"
                    , mon = "সো"
                    , tue = "ম"
                    , wed = "বু"
                    , thu = "বৃ"
                    , fri = "শু"
                    , sat = "শ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "খ্রিঃপূঃ", ad = "খ্রিঃ" }
                , wide = { bc = "খ্রিঃপূঃ", ad = "খ্রিষ্টাব্দ" }
                , narrow = { bc = "খ্রিঃপূঃ", ad = "খ্রিঃ" }
                }
            , timePatterns =
                { short = "h:mm a"
                , medium = "h:mm:ss a"
                , long = "h:mm:ss a z"
                , full = "h:mm:ss a zzzz"
                }
            , dateTimePatterns =
                { short = "{1} {0}"
                , medium = "{1} {0}"
                , long = "{1} {0}"
                , full = "{1} {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "d E" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "y G" )
                , ( "GyMd", "dd-MM-y GGGGG" )
                , ( "GyMMM", "MMM y G" )
                , ( "GyMMMd", "d MMM, y G" )
                , ( "GyMMMEd", "E, d MMM, y G" )
                , ( "h", "h a" )
                , ( "H", "HH" )
                , ( "hm", "h:mm a" )
                , ( "Hm", "HH:mm" )
                , ( "hms", "h:mm:ss a" )
                , ( "Hms", "HH:mm:ss" )
                , ( "hmsv", "h:mm:ss a v" )
                , ( "Hmsv", "HH:mm:ss v" )
                , ( "hmv", "h:mm a v" )
                , ( "Hmv", "HH:mm v" )
                , ( "M", "L" )
                , ( "Md", "d/M" )
                , ( "MEd", "E, d-M" )
                , ( "MMdd", "dd-MM" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMEd", "E d MMMM" )
                , ( "MMMMW-count-one", "MMMM এর W নম্বর সপ্তাহ" )
                , ( "MMMMW-count-other", "MMMM এর W নম্বর সপ্তাহ" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMM", "MM-y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM, y" )
                , ( "yMMMEd", "E, d MMM, y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-one", "Y এর wতম সপ্তাহ" )
                , ( "yw-count-other", "Y এর wতম সপ্তাহ" )
                ]
            , timeSkeletons =
                { short = "ahmm"
                , medium = "ahmmss"
                , long = "ahmmssz"
                , full = "ahmmsszzzz"
                }
            }
        )
