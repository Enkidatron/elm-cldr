module Generated.Lo exposing (lo)

{-|

@docs lo

-}

import Dict
import Internal.DayPeriodRule
import Internal.Locale
import Internal.Parse


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
            "lo||||ກ່ອນທ່ຽງ|ຫຼັງທ່ຽງ|8|afternoon1|ຕອນບ່າຍ|am|ກ່ອນທ່ຽງ|evening1|ຕອນແລງ|midnight|ທ່ຽງຄືນ|morning1|ຕອນເຊົ້າ|night1|ກາງຄືນ|noon|ຕອນທ່ຽງ|pm|ຫຼັງທ່ຽງ|ກ່ອນທ່ຽງ|ຫຼັງທ່ຽງ|8|afternoon1|ຕອນບ່າຍ|am|ກ່ອນທ່ຽງ|evening1|ຕອນແລງ|midnight|ທ່ຽງຄືນ|morning1|ຕອນເຊົ້າ|night1|ຕອນກາງຄືນ|noon|ຕອນທ່ຽງ|pm|ຫຼັງທ່ຽງ|ກ່ອນທ່ຽງ|ຫຼັງທ່ຽງ|8|afternoon1|ຕອນທ່ຽງ|am|ກ່ອນທ່ຽງ|evening1|ຕອນແລງ|midnight|ທ່ຽງຄືນ|morning1|ຕອນເຊົ້າ|night1|ກາງຄືນ|noon|ຕອນທ່ຽງ|pm|ຫຼັງທ່ຽງ|d/M/y|d MMM y|d MMMM y|EEEE ທີ d MMMM G y|ມ.ກ.|ກ.ພ.|ມ.ນ.|ມ.ສ.|ພ.ພ.|ມິ.ຖ.|ກ.ລ.|ສ.ຫ.|ກ.ຍ.|ຕ.ລ.|ພ.ຈ.|ທ.ວ.|ມັງກອນ|ກຸມພາ|ມີນາ|ເມສາ|ພຶດສະພາ|ມິຖຸນາ|ກໍລະກົດ|ສິງຫາ|ກັນຍາ|ຕຸລາ|ພະຈິກ|ທັນວາ|1|2|3|4|5|6|7|8|9|10|11|12|0|ອາທິດ|ຈັນ|ອັງຄານ|ພຸດ|ພະຫັດ|ສຸກ|ເສົາ|ວັນອາທິດ|ວັນຈັນ|ວັນອັງຄານ|ວັນພຸດ|ວັນພະຫັດ|ວັນສຸກ|ວັນເສົາ|ອາ|ຈ|ອ|ພ|ພຫ|ສຸ|ສ|0|ກ່ອນ ຄ.ສ.|ຄ.ສ.|ກ່ອນຄຣິດສັກກະລາດ|ຄຣິດສັກກະລາດ|ກ່ອນ ຄ.ສ.|ຄ.ສ.|H:mm|H:mm:ss|H ໂມງ m ນາທີ ss ວິນາທີ z|H ໂມງ m ນາທີ ss ວິນາທີ zzzz|{1}, {0}|{1}, {0}|{1}, {0}|{1}, {0}|47|Bh|h B|Bhm|h:mm B|Bhms|h:mm:ss B|d|d|E|ccc|EBhm|E h:mm B|EBhms|E h:mm:ss B|Ed|E, d|Ehm|E h:mm a|EHm|E HH:mm|Ehms|E h:mm:ss a|EHms|E HH:mm:ss|Gy|G y|GyMd|d/M/GGGGG y|GyMMM|MMM, G y|GyMMMd|d MMMM, G y|GyMMMEd|E d MMMM, G y|h|h ໂມງa|H|HH|hm|h:mm a|Hm|HH:mm|hms|h:mm:ss a|Hms|HH:mm:ss|hmsv|h:mm:ss a v|Hmsv|HH:mm:ss v|hmv|h:mm a v|Hmv|HH:mm v|M|L|Md|d/M|MEd|E, d/M|MMM|LLL|MMMd|d MMM|MMMEd|E d MMM|MMMMd|MMMM d|MMMMW-count-other|ອາທິດທີ່ W ຂອງເດືອນ M|ms|mm:ss|y|y|yM|M/y|yMd|d/M/y|yMEd|E, d/M/y|yMMM|MMM y|yMMMd|d MMM y|yMMMEd|E, d MMM y|yMMMM|MMMM y|yQQQ|QQQ y|yQQQQ|QQQQ y|yw-count-other|ອາທິດທີ່ w ຂອງປີ Y|Hmm|Hmmss|Hmssz|Hmsszzzz|"
        )
