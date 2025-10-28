module DurationFormatTest exposing (suite)

import Cldr.Format.Duration exposing (..)
import Cldr.Locale exposing (..)
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Duration Formatting"
        [ enTests
        , ukTests
        , ltTests
        , daTests
        , itTests
        ]


enTests : Test
enTests =
    describe "en locale"
        [ enLong
        , enShort
        , enNarrow
        , zerosAreDropped
        , enMilliseconds
        ]


ukTests : Test
ukTests =
    describe "uk locale (Ukrainian)"
        [ ukLong
        , ukShort
        , ukNarrow
        ]


ltTests : Test
ltTests =
    describe "lt locale"
        [ ltLong
        , ltShort
        , ltNarrow
        ]


daTests : Test
daTests =
    describe "da locale"
        [ daLong
        , daShort
        , daNarrow
        ]


itTests : Test
itTests =
    describe "it locale"
        [ itLong
        , itShort
        , itNarrow
        , itLargeNumber
        ]


testDuration : Duration
testDuration =
    { years = 1, months = 2, weeks = 3, days = 4, hours = 5, minutes = 6, seconds = 7, milliseconds = 0 }


enLong : Test
enLong =
    test "en locale, Long format" <|
        \_ ->
            Expect.equal
                (format Long en testDuration)
                "1 year, 2 months, 3 weeks, 4 days, 5 hours, 6 minutes, 7 seconds"


enShort : Test
enShort =
    test "en locale, Short format" <|
        \_ ->
            Expect.equal
                (format Short en testDuration)
                "1 yr, 2 mths, 3 wks, 4 days, 5 hr, 6 min, 7 sec"


enNarrow : Test
enNarrow =
    test "en locale, Narrow format" <|
        \_ ->
            Expect.equal
                (format Narrow en testDuration)
                "1y 2m 3w 4d 5h 6m 7s"


zerosAreDropped : Test
zerosAreDropped =
    test "en locale, zeroes are dropped" <|
        \_ ->
            Expect.equal
                (format Long en { testDuration | years = 0, weeks = 0, minutes = 0 })
                "2 months, 4 days, 5 hours, 7 seconds"


enMilliseconds : Test
enMilliseconds =
    test "en locale, testing milliseconds" <|
        \_ ->
            Expect.equal
                (format Long en { zero | seconds = 1, milliseconds = 500 })
                "1 second, 500 milliseconds"


ukLong : Test
ukLong =
    test "uk locale, Long format" <|
        \_ ->
            Expect.equal
                (format Long uk testDuration)
                "1 рік, 2 місяці, 3 тижні, 4 дні, 5 годин, 6 хвилин і 7 секунд"


ukShort : Test
ukShort =
    test "uk locale, Short format" <|
        \_ ->
            Expect.equal
                (format Short uk testDuration)
                "1 р., 2 міс., 3 тиж., 4 дн., 5 год, 6 хв і 7 с"


ukNarrow : Test
ukNarrow =
    test "uk locale, Narrow format" <|
        \_ ->
            Expect.equal
                (format Narrow uk testDuration)
                "1р, 2м, 3т, 4д, 5г, 6х і 7с"


ltLong : Test
ltLong =
    test "lt locale, Long format" <|
        \_ ->
            Expect.equal
                (format Long lt testDuration)
                "1 metai 2 mėnesiai 3 savaitės 4 dienos 5 valandos 6 minutės ir 7 sekundės"


ltShort : Test
ltShort =
    test "lt locale, Short format" <|
        \_ ->
            Expect.equal
                (format Short lt testDuration)
                "1 m. 2 mėn. 3 sav. 4 d. 5 val. 6 min. 7 sek."


ltNarrow : Test
ltNarrow =
    test "lt locale, Narrow format" <|
        \_ ->
            Expect.equal
                (format Narrow lt testDuration)
                "1 m. 2 mėn. 3 sav. 4 d. 5 h 6 min. 7 s"


daLong : Test
daLong =
    test "da locale, Long format" <|
        \_ ->
            Expect.equal
                (format Long da testDuration)
                "1 år, 2 måneder, 3 uger, 4 dage, 5 timer, 6 minutter og 7 sekunder"


daShort : Test
daShort =
    test "da locale, Short format" <|
        \_ ->
            Expect.equal
                (format Short da testDuration)
                "1 år, 2 mdr., 3 uger, 4 dage, 5 t., 6 min. og 7 sek."


daNarrow : Test
daNarrow =
    test "da locale, Narrow format" <|
        \_ ->
            Expect.equal
                (format Narrow da testDuration)
                "1 år, 2 m, 3 u, 4 d, 5 t, 6 m og 7 s"


itLong : Test
itLong =
    test "it locale, Long format" <|
        \_ ->
            Expect.equal
                (format Long it testDuration)
                "1 anno, 2 mesi, 3 settimane, 4 giorni, 5 ore, 6 minuti e 7 secondi"


itShort : Test
itShort =
    test "it locale, Short format" <|
        \_ ->
            Expect.equal
                (format Short it testDuration)
                "1 anno, 2 mesi, 3 sett., 4 giorni, 5 h, 6 min e 7 s"


itNarrow : Test
itNarrow =
    test "it locale, Narrow format" <|
        \_ ->
            Expect.equal
                (format Narrow it testDuration)
                "1anno 2 mesi 3sett. 4gg 5h 6min 7s"


itLargeNumber : Test
itLargeNumber =
    test "it locale, large number to test plural rule that uses 'e'" <|
        \_ ->
            Expect.equal
                (format Long it { years = 0, months = 0, weeks = 0, days = 0, hours = 0, minutes = 0, seconds = 1000000, milliseconds = 0 })
                "1.000.000 secondi"
