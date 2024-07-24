module Cldr.Format.Number exposing
    ( format, round
    , FormatType(..)
    )

{-|


# Number Formatting

@docs format, round


## Format Type

@docs FormatType

-}

import Dict exposing (Dict)
import FormatNumber
import FormatNumber.Locales
import Generated.Currency
import Internal.Locale exposing (Locale(..))


{-| Numbers can be formatted as decimals, currency, or percentages.

A `CurrencyCode` is just a `String`.

-}
type FormatType
    = Decimal
    | Currency CurrencyCode
    | Percent


type alias CurrencyCode =
    String


{-| Formats a `Float` using the specified `Locale`.

    import Cldr.Locale exposing (en)

    format Decimal en 123456789
    --> "123,456,789"

-}
format : FormatType -> Locale -> Float -> String
format formatType (Locale internal) number =
    case formatType of
        Decimal ->
            FormatNumber.format internal.decimalNumberFormat number

        Currency code ->
            FormatNumber.format (applyCurrencyCode code internal) number

        Percent ->
            FormatNumber.format internal.percentNumberFormat (number * 100)


{-| Rounds and formats a `Float` using the specified `Locale`.

    import Cldr.Format.Number as Number
    import Cldr.Locale exposing (en)
    import FormatNumber.Locales exposing (Decimals(..))

    Number.round (Exact 1) Decimal en 123456789
    --> "123,456,789.0"

-}
round : FormatNumber.Locales.Decimals -> FormatType -> Locale -> Float -> String
round decimalRounding formatType (Locale internal) number =
    case formatType of
        Decimal ->
            FormatNumber.format (applyRounding decimalRounding internal.decimalNumberFormat) number

        Currency code ->
            FormatNumber.format (applyRounding decimalRounding (applyCurrencyCode code internal)) number

        Percent ->
            FormatNumber.format (applyRounding decimalRounding internal.percentNumberFormat) (number * 100)


applyRounding : FormatNumber.Locales.Decimals -> FormatNumber.Locales.Locale -> FormatNumber.Locales.Locale
applyRounding decimalRounding formatLocale =
    { formatLocale | decimals = decimalRounding }


applyCurrencyCode :
    CurrencyCode
    ->
        { a
            | currencyNumberFormat : FormatNumber.Locales.Locale
            , decimalNumberFormat : FormatNumber.Locales.Locale
            , currencySymbols : Dict String String
        }
    -> FormatNumber.Locales.Locale
applyCurrencyCode code { decimalNumberFormat, currencyNumberFormat, currencySymbols } =
    case currencyHandling code currencySymbols of
        InvalidCurrencyCode ->
            decimalNumberFormat

        CurrencyFormat currencySymbol currencyTag decimalOverride ->
            { currencyNumberFormat
                | negativePrefix =
                    currencyNumberFormat.negativePrefix
                        |> String.replace "¤"
                            (Maybe.withDefault (currencyTag ++ " ") currencySymbol)
                        |> String.replace "  " " "
                , negativeSuffix =
                    currencyNumberFormat.negativeSuffix
                        |> String.replace "¤"
                            (Maybe.withDefault (" " ++ currencyTag) currencySymbol)
                        |> String.replace "  " " "
                , positivePrefix =
                    currencyNumberFormat.positivePrefix
                        |> String.replace "¤"
                            (Maybe.withDefault (currencyTag ++ " ") currencySymbol)
                        |> String.replace "  " " "
                , positiveSuffix =
                    currencyNumberFormat.positiveSuffix
                        |> String.replace "¤"
                            (Maybe.withDefault (" " ++ currencyTag) currencySymbol)
                        |> String.replace "  " " "
                , zeroPrefix =
                    currencyNumberFormat.zeroPrefix
                        |> String.replace "¤"
                            (Maybe.withDefault (currencyTag ++ " ") currencySymbol)
                        |> String.replace "  " " "
                , zeroSuffix =
                    currencyNumberFormat.zeroSuffix
                        |> String.replace "¤"
                            (Maybe.withDefault (" " ++ currencyTag) currencySymbol)
                        |> String.replace "  " " "
                , decimals = Maybe.withDefault currencyNumberFormat.decimals decimalOverride
            }


type CurrencyFormat
    = InvalidCurrencyCode
    | CurrencyFormat (Maybe String) String (Maybe FormatNumber.Locales.Decimals)


currencyHandling : CurrencyCode -> Dict String String -> CurrencyFormat
currencyHandling code currencySymbols =
    let
        upperCaseCode =
            String.toUpper code

        currencyTag =
            Dict.get upperCaseCode currencySymbols

        decimalsOverride =
            Dict.get upperCaseCode Generated.Currency.decimalsOverride
    in
    if String.length upperCaseCode /= 3 then
        InvalidCurrencyCode

    else
        CurrencyFormat currencyTag upperCaseCode decimalsOverride
