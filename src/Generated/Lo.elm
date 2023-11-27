module Generated.Lo exposing (lo)

{-|

@docs lo

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
        [ ( "lo"
          , [ Internal.DayPeriodRule.FromBefore ( 12, 0 ) ( 16, 0 ) "afternoon1"
            , Internal.DayPeriodRule.FromBefore ( 16, 0 ) ( 20, 0 ) "evening1"
            , Internal.DayPeriodRule.At ( 0, 0 ) "midnight"
            , Internal.DayPeriodRule.FromBefore ( 5, 0 ) ( 12, 0 ) "morning1"
            , Internal.DayPeriodRule.FromBefore ( 20, 0 ) ( 5, 0 ) "night1"
            , Internal.DayPeriodRule.At ( 12, 0 ) "noon"
            ]
          )
        ]


{-| Date format strings:

  - Short : d/M/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE ທີ d MMMM G y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H ໂມງ m ນາທີ ss ວິນາທີ z
  - Full : H ໂມງ m ນາທີ ss ວິນາທີ zzzz

-}
lo : Internal.Locale.Locale
lo =
    Maybe.withDefault
        Internal.Locale.empty
        (Internal.Parse.parse
            dayPeriods
            { language = "lo"
            , script = Nothing
            , territory = Nothing
            , variant = Nothing
            , periodNames =
                { abbreviated =
                    { am = "ກ່ອນທ່ຽງ"
                    , pm = "ຫຼັງທ່ຽງ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ຕອນບ່າຍ" )
                            , ( "evening1", "ຕອນແລງ" )
                            , ( "midnight", "ທ່ຽງຄືນ" )
                            , ( "morning1", "ຕອນເຊົ້າ" )
                            , ( "night1", "ກາງຄືນ" )
                            , ( "noon", "ຕອນທ່ຽງ" )
                            ]
                    }
                , wide =
                    { am = "ກ່ອນທ່ຽງ"
                    , pm = "ຫຼັງທ່ຽງ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ຕອນບ່າຍ" )
                            , ( "evening1", "ຕອນແລງ" )
                            , ( "midnight", "ທ່ຽງຄືນ" )
                            , ( "morning1", "ຕອນເຊົ້າ" )
                            , ( "night1", "ຕອນກາງຄືນ" )
                            , ( "noon", "ຕອນທ່ຽງ" )
                            ]
                    }
                , narrow =
                    { am = "ກ່ອນທ່ຽງ"
                    , pm = "ຫຼັງທ່ຽງ"
                    , dayPeriods =
                        Dict.fromList
                            [ ( "afternoon1", "ຕອນທ່ຽງ" )
                            , ( "evening1", "ຕອນແລງ" )
                            , ( "midnight", "ທ່ຽງຄືນ" )
                            , ( "morning1", "ຕອນເຊົ້າ" )
                            , ( "night1", "ກາງຄືນ" )
                            , ( "noon", "ຕອນທ່ຽງ" )
                            ]
                    }
                }
            , datePatterns =
                { short = "d/M/y"
                , medium = "d MMM y"
                , long = "d MMMM y"
                , full = "EEEE ທີ d MMMM G y"
                }
            , monthFormatNames =
                { abbreviated =
                    { jan = "ມ.ກ."
                    , feb = "ກ.ພ."
                    , mar = "ມ.ນ."
                    , apr = "ມ.ສ."
                    , may = "ພ.ພ."
                    , jun = "ມິ.ຖ."
                    , jul = "ກ.ລ."
                    , aug = "ສ.ຫ."
                    , sep = "ກ.ຍ."
                    , oct = "ຕ.ລ."
                    , nov = "ພ.ຈ."
                    , dec = "ທ.ວ."
                    }
                , wide =
                    { jan = "ມັງກອນ"
                    , feb = "ກຸມພາ"
                    , mar = "ມີນາ"
                    , apr = "ເມສາ"
                    , may = "ພຶດສະພາ"
                    , jun = "ມິຖຸນາ"
                    , jul = "ກໍລະກົດ"
                    , aug = "ສິງຫາ"
                    , sep = "ກັນຍາ"
                    , oct = "ຕຸລາ"
                    , nov = "ພະຈິກ"
                    , dec = "ທັນວາ"
                    }
                , narrow =
                    { jan = "1"
                    , feb = "2"
                    , mar = "3"
                    , apr = "4"
                    , may = "5"
                    , jun = "6"
                    , jul = "7"
                    , aug = "8"
                    , sep = "9"
                    , oct = "10"
                    , nov = "11"
                    , dec = "12"
                    }
                }
            , monthStandaloneNames =
                { abbreviated =
                    { jan = "ມ.ກ."
                    , feb = "ກ.ພ."
                    , mar = "ມ.ນ."
                    , apr = "ມ.ສ."
                    , may = "ພ.ພ."
                    , jun = "ມິ.ຖ."
                    , jul = "ກ.ລ."
                    , aug = "ສ.ຫ."
                    , sep = "ກ.ຍ."
                    , oct = "ຕ.ລ."
                    , nov = "ພ.ຈ."
                    , dec = "ທ.ວ."
                    }
                , wide =
                    { jan = "ມັງກອນ"
                    , feb = "ກຸມພາ"
                    , mar = "ມີນາ"
                    , apr = "ເມສາ"
                    , may = "ພຶດສະພາ"
                    , jun = "ມິຖຸນາ"
                    , jul = "ກໍລະກົດ"
                    , aug = "ສິງຫາ"
                    , sep = "ກັນຍາ"
                    , oct = "ຕຸລາ"
                    , nov = "ພະຈິກ"
                    , dec = "ທັນວາ"
                    }
                , narrow =
                    { jan = "1"
                    , feb = "2"
                    , mar = "3"
                    , apr = "4"
                    , may = "5"
                    , jun = "6"
                    , jul = "7"
                    , aug = "8"
                    , sep = "9"
                    , oct = "10"
                    , nov = "11"
                    , dec = "12"
                    }
                }
            , weekdayFormatNames =
                { abbreviated =
                    { sun = "ອາທິດ"
                    , mon = "ຈັນ"
                    , tue = "ອັງຄານ"
                    , wed = "ພຸດ"
                    , thu = "ພະຫັດ"
                    , fri = "ສຸກ"
                    , sat = "ເສົາ"
                    }
                , wide =
                    { sun = "ວັນອາທິດ"
                    , mon = "ວັນຈັນ"
                    , tue = "ວັນອັງຄານ"
                    , wed = "ວັນພຸດ"
                    , thu = "ວັນພະຫັດ"
                    , fri = "ວັນສຸກ"
                    , sat = "ວັນເສົາ"
                    }
                , narrow =
                    { sun = "ອາ"
                    , mon = "ຈ"
                    , tue = "ອ"
                    , wed = "ພ"
                    , thu = "ພຫ"
                    , fri = "ສຸ"
                    , sat = "ສ"
                    }
                }
            , weekdayStandaloneNames =
                { abbreviated =
                    { sun = "ອາທິດ"
                    , mon = "ຈັນ"
                    , tue = "ອັງຄານ"
                    , wed = "ພຸດ"
                    , thu = "ພະຫັດ"
                    , fri = "ສຸກ"
                    , sat = "ເສົາ"
                    }
                , wide =
                    { sun = "ວັນອາທິດ"
                    , mon = "ວັນຈັນ"
                    , tue = "ວັນອັງຄານ"
                    , wed = "ວັນພຸດ"
                    , thu = "ວັນພະຫັດ"
                    , fri = "ວັນສຸກ"
                    , sat = "ວັນເສົາ"
                    }
                , narrow =
                    { sun = "ອາ"
                    , mon = "ຈ"
                    , tue = "ອ"
                    , wed = "ພ"
                    , thu = "ພຫ"
                    , fri = "ສຸ"
                    , sat = "ສ"
                    }
                }
            , eraNames =
                { abbreviated = { bc = "ກ່ອນ ຄ.ສ.", ad = "ຄ.ສ." }
                , wide = { bc = "ກ່ອນຄຣິດສັກກະລາດ", ad = "ຄຣິດສັກກະລາດ" }
                , narrow = { bc = "ກ່ອນ ຄ.ສ.", ad = "ຄ.ສ." }
                }
            , timePatterns =
                { short = "H:mm"
                , medium = "H:mm:ss"
                , long = "H ໂມງ m ນາທີ ss ວິນາທີ z"
                , full = "H ໂມງ m ນາທີ ss ວິນາທີ zzzz"
                }
            , dateTimePatterns =
                { short = "{1}, {0}"
                , medium = "{1}, {0}"
                , long = "{1}, {0}"
                , full = "{1}, {0}"
                }
            , availableFormats =
                [ ( "Bh", "h B" )
                , ( "Bhm", "h:mm B" )
                , ( "Bhms", "h:mm:ss B" )
                , ( "d", "d" )
                , ( "E", "ccc" )
                , ( "EBhm", "E h:mm B" )
                , ( "EBhms", "E h:mm:ss B" )
                , ( "Ed", "E, d" )
                , ( "Ehm", "E h:mm a" )
                , ( "EHm", "E HH:mm" )
                , ( "Ehms", "E h:mm:ss a" )
                , ( "EHms", "E HH:mm:ss" )
                , ( "Gy", "G y" )
                , ( "GyMd", "d/M/GGGGG y" )
                , ( "GyMMM", "MMM, G y" )
                , ( "GyMMMd", "d MMMM, G y" )
                , ( "GyMMMEd", "E d MMMM, G y" )
                , ( "h", "h ໂມງa" )
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
                , ( "MEd", "E, d/M" )
                , ( "MMM", "LLL" )
                , ( "MMMd", "d MMM" )
                , ( "MMMEd", "E d MMM" )
                , ( "MMMMd", "d MMMM" )
                , ( "MMMMW-count-other", "ອາທິດທີ່ W ຂອງເດືອນ M" )
                , ( "ms", "mm:ss" )
                , ( "y", "y" )
                , ( "yM", "M/y" )
                , ( "yMd", "d/M/y" )
                , ( "yMEd", "E, d/M/y" )
                , ( "yMMM", "MMM y" )
                , ( "yMMMd", "d MMM y" )
                , ( "yMMMEd", "E, d MMM y" )
                , ( "yMMMM", "MMMM y" )
                , ( "yQQQ", "QQQ y" )
                , ( "yQQQQ", "QQQQ y" )
                , ( "yw-count-other", "ອາທິດທີ່ w ຂອງປີ Y" )
                ]
            , timeSkeletons =
                { short = "Hmm"
                , medium = "Hmmss"
                , long = "Hmssz"
                , full = "Hmsszzzz"
                }
            }
        )
