module DateFormatTest exposing (suite)

import Cldr.Format.Date exposing (format)
import Cldr.Format.Length exposing (Length(..))
import Cldr.Locale exposing (..)
import Cldr.Locale.En exposing (en)
import Cldr.Locale.Ru exposing (ru)
import Date exposing (Date)
import Expect
import Test exposing (..)
import Time exposing (Month(..))


suite : Test
suite =
    describe "DateTime Formatting"
        [ enTests
        , ruTests
        ]


enTests : Test
enTests =
    describe "en locale"
        [ enShort, enMedium, enLong, enFull ]


ruTests : Test
ruTests =
    describe "ru locale"
        [ ruShort, ruMedium, ruLong, ruFull ]


testDate : Date
testDate =
    Date.fromCalendarDate 2000 Jun 1


enShort : Test
enShort =
    test "en locale, Short format" <|
        \_ ->
            Expect.equal
                (format Short en testDate)
                "6/1/00"


enMedium : Test
enMedium =
    test "en locale, Medium format" <|
        \_ ->
            Expect.equal
                (format Medium en testDate)
                "Jun 1, 2000"


enLong : Test
enLong =
    test "en locale, Long format" <|
        \_ ->
            Expect.equal
                (format Long en testDate)
                "June 1, 2000"


enFull : Test
enFull =
    test "en locale, Full format" <|
        \_ ->
            Expect.equal
                (format Full en testDate)
                "Thursday, June 1, 2000"


ruShort : Test
ruShort =
    test "ru locale, Short format" <|
        \_ ->
            Expect.equal
                (format Short ru testDate)
                "01.06.2000"


ruMedium : Test
ruMedium =
    test "ru locale, Medium format" <|
        \_ ->
            Expect.equal
                (format Medium ru testDate)
                "1 июн. 2000 г."


ruLong : Test
ruLong =
    test "ru locale, Long format" <|
        \_ ->
            Expect.equal
                (format Long ru testDate)
                "1 июня 2000 г."


ruFull : Test
ruFull =
    test "ru locale, Full format" <|
        \_ ->
            Expect.equal
                (format Full ru testDate)
                "четверг, 1 июня 2000 г."
