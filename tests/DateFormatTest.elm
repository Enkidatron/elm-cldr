module DateFormatTest exposing (suite)

import Cldr.Format.Date exposing (FormatType(..), format)
import Cldr.Format.Length exposing (Length(..))
import Cldr.Format.Options as Opt
import Cldr.Format.OptionsBuilder as OptBuilder
import Cldr.Locale exposing (..)
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
        [ enShort
        , enMedium
        , enLong
        , enFull
        , enOpts_EyMd
        , enOpts_yMd
        , enOpts_yM
        , enOpts_Md
        ]


ruTests : Test
ruTests =
    describe "ru locale"
        [ ruShort
        , ruMedium
        , ruLong
        , ruFull
        , ruOpts_EyMd
        , ruOpts_yMd
        , Test.skip ruOpts_yM
        , ruOpts_Md
        ]


testDate : Date
testDate =
    Date.fromCalendarDate 2000 Jun 1


enShort : Test
enShort =
    test "en locale, Short format" <|
        \_ ->
            Expect.equal
                (format (WithLength Short) en testDate)
                "6/1/00"


enMedium : Test
enMedium =
    test "en locale, Medium format" <|
        \_ ->
            Expect.equal
                (format (WithLength Medium) en testDate)
                "Jun 1, 2000"


enLong : Test
enLong =
    test "en locale, Long format" <|
        \_ ->
            Expect.equal
                (format (WithLength Long) en testDate)
                "June 1, 2000"


enFull : Test
enFull =
    test "en locale, Full format" <|
        \_ ->
            Expect.equal
                (format (WithLength Full) en testDate)
                "Thursday, June 1, 2000"


enOpts_EyMd : Test
enOpts_EyMd =
    test "en locale, Options test: EyMd" <|
        \_ ->
            let
                options =
                    OptBuilder.initDate
                        |> OptBuilder.setWeekday Opt.Long
                        |> OptBuilder.setYear Opt.Numeric
                        |> OptBuilder.setMonthText Opt.Long
                        |> OptBuilder.setDay Opt.Numeric
                        |> OptBuilder.toOptions
            in
            Expect.equal
                (format (WithOptions options) en testDate)
                "Thursday, June 1, 2000"


enOpts_yMd : Test
enOpts_yMd =
    test "en locale, Options test: yMd" <|
        \_ ->
            let
                options =
                    OptBuilder.initDate
                        |> OptBuilder.setYear Opt.Numeric
                        |> OptBuilder.setMonthText Opt.Long
                        |> OptBuilder.setDay Opt.Numeric
                        |> OptBuilder.toOptions
            in
            Expect.equal
                (format (WithOptions options) en testDate)
                "June 1, 2000"


enOpts_yM : Test
enOpts_yM =
    test "en locale, Options test: yM" <|
        \_ ->
            let
                options =
                    OptBuilder.initDate
                        |> OptBuilder.setYear Opt.Numeric
                        |> OptBuilder.setMonthText Opt.Long
                        |> OptBuilder.toOptions
            in
            Expect.equal
                (format (WithOptions options) en testDate)
                "June 2000"


enOpts_Md : Test
enOpts_Md =
    test "en locale, Options test: Md" <|
        \_ ->
            let
                options =
                    OptBuilder.initDate
                        |> OptBuilder.setMonthText Opt.Long
                        |> OptBuilder.setDay Opt.Numeric
                        |> OptBuilder.toOptions
            in
            Expect.equal
                (format (WithOptions options) en testDate)
                "June 1"


ruShort : Test
ruShort =
    test "ru locale, Short format" <|
        \_ ->
            Expect.equal
                (format (WithLength Short) ru testDate)
                "01.06.2000"


ruMedium : Test
ruMedium =
    test "ru locale, Medium format" <|
        \_ ->
            Expect.equal
                (format (WithLength Medium) ru testDate)
                "1 июн. 2000 г."


ruLong : Test
ruLong =
    test "ru locale, Long format" <|
        \_ ->
            Expect.equal
                (format (WithLength Long) ru testDate)
                "1 июня 2000 г."


ruFull : Test
ruFull =
    test "ru locale, Full format" <|
        \_ ->
            Expect.equal
                (format (WithLength Full) ru testDate)
                "четверг, 1 июня 2000 г."


ruOpts_EyMd : Test
ruOpts_EyMd =
    test "ru locale, Options test: EyMd" <|
        \_ ->
            let
                options =
                    OptBuilder.initDate
                        |> OptBuilder.setWeekday Opt.Long
                        |> OptBuilder.setYear Opt.Numeric
                        |> OptBuilder.setMonthText Opt.Long
                        |> OptBuilder.setDay Opt.Numeric
                        |> OptBuilder.toOptions
            in
            Expect.equal
                (format (WithOptions options) ru testDate)
                "четверг, 1 июня 2000 г."


ruOpts_yMd : Test
ruOpts_yMd =
    test "ru locale, Options test: yMd" <|
        \_ ->
            let
                options =
                    OptBuilder.initDate
                        |> OptBuilder.setYear Opt.Numeric
                        |> OptBuilder.setMonthText Opt.Long
                        |> OptBuilder.setDay Opt.Numeric
                        |> OptBuilder.toOptions
            in
            Expect.equal
                (format (WithOptions options) ru testDate)
                "1 июня 2000 г."


ruOpts_yM : Test
ruOpts_yM =
    test "ru locale, Options test: yM" <|
        \_ ->
            let
                options =
                    OptBuilder.initDate
                        |> OptBuilder.setYear Opt.Numeric
                        |> OptBuilder.setMonthText Opt.Long
                        |> OptBuilder.toOptions
            in
            Expect.equal
                (format (WithOptions options) ru testDate)
                "июнь 2000 г."


ruOpts_Md : Test
ruOpts_Md =
    test "ru locale, Options test: Md" <|
        \_ ->
            let
                options =
                    OptBuilder.initDate
                        |> OptBuilder.setMonthText Opt.Long
                        |> OptBuilder.setDay Opt.Numeric
                        |> OptBuilder.toOptions
            in
            Expect.equal
                (format (WithOptions options) ru testDate)
                "1 июня"
