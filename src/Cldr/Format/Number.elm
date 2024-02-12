module Cldr.Format.Number exposing
    ( format
    , FormatType(..)
    )

{-|


# Number Formatting

@docs format


## Format Type

@docs FormatType

-}

import Dict exposing (Dict)
import FormatNumber
import FormatNumber.Locales
import Generated.Currency
import Internal.Locale exposing (Locale(..))


{-| Numbers can be formatted as decimals, currency, or percentages.
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
