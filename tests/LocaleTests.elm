module LocaleTests exposing (suite)

import Cldr.Locale exposing (..)
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Locale conversions"
        [ enToUnicode
        , enRoundtrip
        , enGBRoundtrip
        , ruToUnicode
        , ruRoundtrip
        ]


enToUnicode : Test
enToUnicode =
    test "en locale to unicode" <|
        \_ ->
            Expect.equal
                (toUnicode en)
                "en"


enRoundtrip : Test
enRoundtrip =
    localeRoundtrip "en locale roundtrip"
        "en"


enGBRoundtrip : Test
enGBRoundtrip =
    localeRoundtrip "en-GB locale roundtrip"
        "en-GB"


localeRoundtrip : String -> String -> Test
localeRoundtrip label localeString =
    test label <|
        \_ ->
            Expect.equal
                (localeString
                    |> Cldr.Locale.fromString Cldr.Locale.allLocales
                    |> Maybe.map Cldr.Locale.toUnicode
                )
                (Just localeString)


ruToUnicode : Test
ruToUnicode =
    test "ru locale to unicode" <|
        \_ ->
            Expect.equal
                (toUnicode ru)
                "ru"


ruRoundtrip : Test
ruRoundtrip =
    localeRoundtrip "ru locale roundtrip"
        "ru"
