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
        , inAliasRoundtrip
        , allLocalesParseCorrectly
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


inAliasRoundtrip : Test
inAliasRoundtrip =
    test "'in' should alias to 'id'" <|
        \_ ->
            Expect.equal
                ("in"
                    |> Cldr.Locale.fromString Cldr.Locale.allLocales
                    |> Maybe.map Cldr.Locale.toUnicode
                )
                (Just "id")


allLocalesParseCorrectly : Test
allLocalesParseCorrectly =
    describe "all locales parse correctly"
        (List.indexedMap testParse allLocales)


testParse : Int -> Locale -> Test
testParse index locale =
    test (String.fromInt index ++ ": " ++ toUnicode locale) <|
        \_ ->
            Expect.notEqual
                (toUnicode locale)
                ""
