module NumberTest exposing (suite)

import Cldr.Format.Number exposing (FormatType(..), format)
import Cldr.Locale exposing (en, en_IN, fr, ja, nl, tr, uk)
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Number Formatting"
        [ enTests
        , jaTests
        , ukTests
        , trTests
        , nlTests
        , enInTests
        , frTests
        ]


testNumber : Float
testNumber =
    123456789.12345


testNegativeNumber : Float
testNegativeNumber =
    -123456789.12345


type alias Results =
    { decimal : String
    , usd : String
    , eur : String
    , jpy : String
    , percent : String
    , decimalNegative : String
    , usdNegative : String
    , eurNegative : String
    , jpyNegative : String
    , percentNegative : String
    }


tests : String -> Cldr.Locale.Locale -> Results -> Test
tests name locale results =
    describe (name ++ " locale")
        [ testFormat "decimal format" Decimal locale testNumber results.decimal
        , testFormat "USD currency" (Currency "USD") locale testNumber results.usd
        , testFormat "EUR currency" (Currency "EUR") locale testNumber results.eur
        , testFormat "JPY currency" (Currency "JPY") locale testNumber results.jpy
        , testFormat "percent" Percent locale testNumber results.percent
        , testFormat "decimal format (negative)" Decimal locale testNegativeNumber results.decimalNegative
        , testFormat "USD currency (negative)" (Currency "USD") locale testNegativeNumber results.usdNegative
        , testFormat "EUR currency (negative)" (Currency "EUR") locale testNegativeNumber results.eurNegative
        , testFormat "JPY currency (negative)" (Currency "JPY") locale testNegativeNumber results.jpyNegative
        , testFormat "percent (negative)" Percent locale testNegativeNumber results.percentNegative
        ]


testFormat : String -> FormatType -> Cldr.Locale.Locale -> Float -> String -> Test
testFormat testName formatType locale numberForTest result =
    test testName <|
        \_ ->
            Expect.equal
                (format formatType locale numberForTest)
                result


enTests : Test
enTests =
    tests "en"
        en
        { decimal = "123,456,789.123"
        , usd = "$123,456,789.12"
        , eur = "€123,456,789.12"
        , jpy = "¥123,456,789"
        , percent = "12,345,678,912%"
        , decimalNegative = "-123,456,789.123"
        , usdNegative = "-$123,456,789.12"
        , eurNegative = "-€123,456,789.12"
        , jpyNegative = "-¥123,456,789"
        , percentNegative = "-12,345,678,912%"
        }


jaTests : Test
jaTests =
    tests "ja"
        ja
        { decimal = "123,456,789.123"
        , usd = "$123,456,789.12"
        , eur = "€123,456,789.12"
        , jpy = "￥123,456,789"
        , percent = "12,345,678,912%"
        , decimalNegative = "-123,456,789.123"
        , usdNegative = "-$123,456,789.12"
        , eurNegative = "-€123,456,789.12"
        , jpyNegative = "-￥123,456,789"
        , percentNegative = "-12,345,678,912%"
        }


ukTests : Test
ukTests =
    tests "uk"
        uk
        { decimal = "123\u{00A0}456\u{00A0}789,123"
        , usd = "123\u{00A0}456\u{00A0}789,12\u{00A0}USD"
        , eur = "123\u{00A0}456\u{00A0}789,12\u{00A0}EUR"
        , jpy = "123\u{00A0}456\u{00A0}789\u{00A0}¥"
        , percent = "12\u{00A0}345\u{00A0}678\u{00A0}912%"
        , decimalNegative = "-123\u{00A0}456\u{00A0}789,123"
        , usdNegative = "-123\u{00A0}456\u{00A0}789,12\u{00A0}USD"
        , eurNegative = "-123\u{00A0}456\u{00A0}789,12\u{00A0}EUR"
        , jpyNegative = "-123\u{00A0}456\u{00A0}789\u{00A0}¥"
        , percentNegative = "-12\u{00A0}345\u{00A0}678\u{00A0}912%"
        }


trTests : Test
trTests =
    tests "tr"
        tr
        { decimal = "123.456.789,123"
        , usd = "$123.456.789,12"
        , eur = "€123.456.789,12"
        , jpy = "¥123.456.789"
        , percent = "%12.345.678.912"
        , decimalNegative = "-123.456.789,123"
        , usdNegative = "-$123.456.789,12"
        , eurNegative = "-€123.456.789,12"
        , jpyNegative = "-¥123.456.789"
        , percentNegative = "-%12.345.678.912"
        }


nlTests : Test
nlTests =
    tests "nl"
        nl
        { decimal = "123.456.789,123"
        , usd = "US$\u{00A0}123.456.789,12"
        , eur = "€\u{00A0}123.456.789,12"
        , jpy = "JP¥\u{00A0}123.456.789"
        , percent = "12.345.678.912%"
        , decimalNegative = "-123.456.789,123"
        , usdNegative = "US$\u{00A0}-123.456.789,12"
        , eurNegative = "€\u{00A0}-123.456.789,12"
        , jpyNegative = "JP¥\u{00A0}-123.456.789"
        , percentNegative = "-12.345.678.912%"
        }


enInTests : Test
enInTests =
    tests "en-IN"
        en_IN
        { decimal = "12,34,56,789.123"
        , usd = "$12,34,56,789.12"
        , eur = "€12,34,56,789.12"
        , jpy = "JP¥12,34,56,789"
        , percent = "12,34,56,78,912%"
        , decimalNegative = "-12,34,56,789.123"
        , usdNegative = "-$12,34,56,789.12"
        , eurNegative = "-€12,34,56,789.12"
        , jpyNegative = "-JP¥12,34,56,789"
        , percentNegative = "-12,34,56,78,912%"
        }


frTests : Test
frTests =
    tests "fr"
        fr
        { decimal = "123\u{202F}456\u{202F}789,123"
        , usd = "123\u{202F}456\u{202F}789,12\u{00A0}$US"
        , eur = "123\u{202F}456\u{202F}789,12\u{00A0}€"
        , jpy = "123\u{202F}456\u{202F}789\u{00A0}JPY"
        , percent = "12\u{202F}345\u{202F}678\u{202F}912\u{00A0}%"
        , decimalNegative = "-123\u{202F}456\u{202F}789,123"
        , usdNegative = "-123\u{202F}456\u{202F}789,12\u{00A0}$US"
        , eurNegative = "-123\u{202F}456\u{202F}789,12\u{00A0}€"
        , jpyNegative = "-123\u{202F}456\u{202F}789\u{00A0}JPY"
        , percentNegative = "-12\u{202F}345\u{202F}678\u{202F}912\u{00A0}%"
        }
