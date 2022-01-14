module DateTimeFormatTest exposing (suite)

import Cldr.Format.DateTime exposing (FormatType(..), format)
import Cldr.Format.Length exposing (Length(..))
import Cldr.Locale exposing (..)
import Expect
import Test exposing (..)
import Time exposing (Posix)


suite : Test
suite =
    describe "Date Formatting"
        [ enTests
        , ruTests
        ]


enTests : Test
enTests =
    describe "en locale"
        [ enShortDate
        , enMediumDate
        , enLongDate
        , enFullDate
        , enShortTime
        , enMediumTime
        , enLongTime
        , enFullTime
        , enShortDateTime
        , enMediumDateTime
        , enLongDateTime
        , enFullDateTime
        ]


ruTests : Test
ruTests =
    describe "ru locale"
        [ ruShortDate
        , ruMediumDate
        , ruLongDate
        , ruFullDate
        , ruShortTime
        , ruMediumTime
        , ruLongTime
        , ruFullTime
        , ruShortDateTime
        , ruMediumDateTime
        , ruLongDateTime
        , ruFullDateTime
        ]


testDateTime : Posix
testDateTime =
    Time.millisToPosix 959829796738


enShortDate : Test
enShortDate =
    test "en locale, Short date format" <|
        \_ ->
            Expect.equal
                (format (DateOnly Short) en Time.utc testDateTime)
                "6/1/00"


enMediumDate : Test
enMediumDate =
    test "en locale, Medium date format" <|
        \_ ->
            Expect.equal
                (format (DateOnly Medium) en Time.utc testDateTime)
                "Jun 1, 2000"


enLongDate : Test
enLongDate =
    test "en locale, Long date format" <|
        \_ ->
            Expect.equal
                (format (DateOnly Long) en Time.utc testDateTime)
                "June 1, 2000"


enFullDate : Test
enFullDate =
    test "en locale, Full date format" <|
        \_ ->
            Expect.equal
                (format (DateOnly Full) en Time.utc testDateTime)
                "Thursday, June 1, 2000"


enShortTime : Test
enShortTime =
    test "en locale, Short time format" <|
        \_ ->
            Expect.equal
                (format (TimeOnly Short) en Time.utc testDateTime)
                "3:23 AM"


enMediumTime : Test
enMediumTime =
    test "en locale, Medium time format" <|
        \_ ->
            Expect.equal
                (format (TimeOnly Medium) en Time.utc testDateTime)
                "3:23:16 AM"


enLongTime : Test
enLongTime =
    test "en locale, Long time format" <|
        \_ ->
            Expect.equal
                (format (TimeOnly Long) en Time.utc testDateTime)
                "3:23:16 AM GMT"


enFullTime : Test
enFullTime =
    test "en locale, Full time format" <|
        \_ ->
            Expect.equal
                (format (TimeOnly Full) en Time.utc testDateTime)
                "3:23:16 AM GMT"


enShortDateTime : Test
enShortDateTime =
    test "en locale, Short datetime format" <|
        \_ ->
            Expect.equal
                (format Cldr.Format.DateTime.short en Time.utc testDateTime)
                "6/1/00, 3:23 AM"


enMediumDateTime : Test
enMediumDateTime =
    test "en locale, Medium datetime format" <|
        \_ ->
            Expect.equal
                (format Cldr.Format.DateTime.medium en Time.utc testDateTime)
                "Jun 1, 2000, 3:23:16 AM"


enLongDateTime : Test
enLongDateTime =
    test "en locale, Long datetime format" <|
        \_ ->
            Expect.equal
                (format Cldr.Format.DateTime.long en Time.utc testDateTime)
                "June 1, 2000 at 3:23:16 AM GMT"


enFullDateTime : Test
enFullDateTime =
    test "en locale, Full datetime format" <|
        \_ ->
            Expect.equal
                (format Cldr.Format.DateTime.full en Time.utc testDateTime)
                "Thursday, June 1, 2000 at 3:23:16 AM GMT"


ruShortDate : Test
ruShortDate =
    test "ru locale, Short date format" <|
        \_ ->
            Expect.equal
                (format (DateOnly Short) ru Time.utc testDateTime)
                "01.06.2000"


ruMediumDate : Test
ruMediumDate =
    test "ru locale, Medium date format" <|
        \_ ->
            Expect.equal
                (format (DateOnly Medium) ru Time.utc testDateTime)
                "1 июн. 2000 г."


ruLongDate : Test
ruLongDate =
    test "ru locale, Long date format" <|
        \_ ->
            Expect.equal
                (format (DateOnly Long) ru Time.utc testDateTime)
                "1 июня 2000 г."


ruFullDate : Test
ruFullDate =
    test "ru locale, Full date format" <|
        \_ ->
            Expect.equal
                (format (DateOnly Full) ru Time.utc testDateTime)
                "четверг, 1 июня 2000 г."


ruShortTime : Test
ruShortTime =
    test "ru locale, Short time format" <|
        \_ ->
            Expect.equal
                (format (TimeOnly Short) ru Time.utc testDateTime)
                "03:23"


ruMediumTime : Test
ruMediumTime =
    test "ru locale, Medium time format" <|
        \_ ->
            Expect.equal
                (format (TimeOnly Medium) ru Time.utc testDateTime)
                "03:23:16"


ruLongTime : Test
ruLongTime =
    test "ru locale, Long time format" <|
        \_ ->
            Expect.equal
                (format (TimeOnly Long) ru Time.utc testDateTime)
                "03:23:16 GMT"


ruFullTime : Test
ruFullTime =
    test "ru locale, Full time format" <|
        \_ ->
            Expect.equal
                (format (TimeOnly Full) ru Time.utc testDateTime)
                "03:23:16 GMT"


ruShortDateTime : Test
ruShortDateTime =
    test "ru locale, Short datetime format" <|
        \_ ->
            Expect.equal
                (format Cldr.Format.DateTime.short ru Time.utc testDateTime)
                "01.06.2000, 03:23"


ruMediumDateTime : Test
ruMediumDateTime =
    test "ru locale, Medium datetime format" <|
        \_ ->
            Expect.equal
                (format Cldr.Format.DateTime.medium ru Time.utc testDateTime)
                "1 июн. 2000 г., 03:23:16"


ruLongDateTime : Test
ruLongDateTime =
    test "ru locale, Long datetime format" <|
        \_ ->
            Expect.equal
                (format Cldr.Format.DateTime.long ru Time.utc testDateTime)
                "1 июня 2000 г., 03:23:16 GMT"


ruFullDateTime : Test
ruFullDateTime =
    test "ru locale, Full datetime format" <|
        \_ ->
            Expect.equal
                (format Cldr.Format.DateTime.full ru Time.utc testDateTime)
                "четверг, 1 июня 2000 г., 03:23:16 GMT"
