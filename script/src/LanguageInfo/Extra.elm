module LanguageInfo.Extra exposing (decoder, fullFormatParser, skewerCase, snakeIdentifier)

import FormatNumber.Locales
import Internal.LanguageInfo exposing (LanguageInfo)
import Internal.Structures exposing (EraNames, MonthNames, Pattern3, Patterns, PeriodNames, WeekdayNames)
import Json.Decode as JD exposing (Decoder)
import Json.Decode.Extra as JDExtra
import Json.Decode.Pipeline as JDPipe
import Maybe.Extra
import Parser exposing ((|.), (|=), Parser)
import Set exposing (Set)


decoder : String -> Decoder LanguageInfo
decoder langCode =
    gregorianDecoder langCode
        |> JD.andThen (numbersDecoder langCode)
        |> JD.andThen (currenciesDecoder langCode)


gregorianDecoder :
    String
    ->
        Decoder
            (FormatNumber.Locales.Locale
             -> FormatNumber.Locales.Locale
             -> FormatNumber.Locales.Locale
             -> List ( String, String )
             -> LanguageInfo
            )
gregorianDecoder langCode =
    JD.at [ "gregorian", "main", langCode ]
        (JD.succeed LanguageInfo
            |> JDPipe.requiredAt [ "identity", "language" ] JD.string
            |> JDPipe.optionalAt [ "identity", "script" ] (JD.nullable JD.string) Nothing
            |> JDPipe.optionalAt [ "identity", "territory" ] (JD.nullable JD.string) Nothing
            |> JDPipe.optionalAt [ "identity", "variant" ] (JD.nullable JD.string) Nothing
            |> JDPipe.custom periodNamesDecoder
            |> JDPipe.custom datePatternsDecoder
            |> JDPipe.custom monthFormatNamesDecoder
            |> JDPipe.custom monthStandaloneNamesDecoder
            |> JDPipe.custom weekdayFormatNamesDecoder
            |> JDPipe.custom weekdayStandaloneNamesDecoder
            |> JDPipe.custom eraNamesDecoder
            |> JDPipe.custom timePatternsDecoder
            |> JDPipe.custom dateTimePatternsDecoder
            |> JDPipe.custom availableFormatsDecoder
            |> JDPipe.custom timeSkeletonsDecoder
        )


numbersDecoder :
    String
    ->
        (FormatNumber.Locales.Locale
         -> FormatNumber.Locales.Locale
         -> FormatNumber.Locales.Locale
         -> b
        )
    -> Decoder b
numbersDecoder langCode decodedSoFar =
    JD.at [ "numbers", "main", langCode ]
        (JD.succeed decodedSoFar
            |> JDPipe.custom decimalNumberFormatDecoder
            |> JDPipe.custom currencyNumberFormatDecoder
            |> JDPipe.custom percentNumberFormatDecoder
        )


currenciesDecoder : String -> (List ( String, String ) -> b) -> Decoder b
currenciesDecoder langCode decodedSoFar =
    JD.at [ "currencies", "main", langCode ]
        (JD.succeed decodedSoFar
            |> JDPipe.custom currencySymbolsDecoder
        )


periodNamesDecoder : Decoder (Pattern3 PeriodNames)
periodNamesDecoder =
    JD.at [ "dates", "calendars", "gregorian", "dayPeriods", "format" ]
        (pattern3Decoder genericPeriodNamesDecoder)


genericPeriodNamesDecoder : Decoder PeriodNames
genericPeriodNamesDecoder =
    JD.succeed PeriodNames
        |> JDPipe.required "am" JD.string
        |> JDPipe.required "pm" JD.string
        |> JDPipe.custom (JD.dict JD.string)


datePatternsDecoder : Decoder (Patterns String)
datePatternsDecoder =
    JD.at [ "dates", "calendars", "gregorian", "dateFormats" ]
        (patternDecoder JD.string)


timePatternsDecoder : Decoder (Patterns String)
timePatternsDecoder =
    JD.at [ "dates", "calendars", "gregorian", "timeFormats" ]
        (patternDecoder JD.string)


dateTimePatternsDecoder : Decoder (Patterns String)
dateTimePatternsDecoder =
    JD.at [ "dates", "calendars", "gregorian", "dateTimeFormats" ]
        (patternDecoder JD.string)


availableFormatsDecoder : Decoder (List ( String, String ))
availableFormatsDecoder =
    JD.at [ "dates", "calendars", "gregorian", "dateTimeFormats", "availableFormats" ]
        (JD.keyValuePairs JD.string)


timeSkeletonsDecoder : Decoder (Patterns String)
timeSkeletonsDecoder =
    JD.at [ "dates", "calendars", "gregorian", "timeSkeletons" ]
        (patternDecoder JD.string)


monthFormatNamesDecoder : Decoder (Pattern3 MonthNames)
monthFormatNamesDecoder =
    JD.at [ "dates", "calendars", "gregorian", "months", "format" ]
        (pattern3Decoder genericMonthNamesDecoder)


monthStandaloneNamesDecoder : Decoder (Pattern3 MonthNames)
monthStandaloneNamesDecoder =
    JD.at [ "dates", "calendars", "gregorian", "months", "stand-alone" ]
        (pattern3Decoder genericMonthNamesDecoder)


weekdayFormatNamesDecoder : Decoder (Pattern3 WeekdayNames)
weekdayFormatNamesDecoder =
    JD.at [ "dates", "calendars", "gregorian", "days", "format" ]
        (pattern3Decoder genericWeekdayNamesDecoder)


weekdayStandaloneNamesDecoder : Decoder (Pattern3 WeekdayNames)
weekdayStandaloneNamesDecoder =
    JD.at [ "dates", "calendars", "gregorian", "days", "stand-alone" ]
        (pattern3Decoder genericWeekdayNamesDecoder)


eraNamesDecoder : Decoder (Pattern3 EraNames)
eraNamesDecoder =
    JD.at [ "dates", "calendars", "gregorian", "eras" ] <|
        JD.map3 Pattern3
            (JD.field "eraAbbr" genericEraNamesDecoder)
            (JD.field "eraNames" genericEraNamesDecoder)
            (JD.field "eraNarrow" genericEraNamesDecoder)


patternDecoder : Decoder a -> Decoder (Patterns a)
patternDecoder innerDecoder =
    JD.succeed Patterns
        |> JDPipe.required "short" innerDecoder
        |> JDPipe.required "medium" innerDecoder
        |> JDPipe.required "long" innerDecoder
        |> JDPipe.required "full" innerDecoder


pattern3Decoder : Decoder a -> Decoder (Pattern3 a)
pattern3Decoder innerDecoder =
    JD.succeed Pattern3
        |> JDPipe.required "abbreviated" innerDecoder
        |> JDPipe.required "wide" innerDecoder
        |> JDPipe.required "narrow" innerDecoder


genericMonthNamesDecoder : Decoder MonthNames
genericMonthNamesDecoder =
    JD.succeed MonthNames
        |> JDPipe.required "1" JD.string
        |> JDPipe.required "2" JD.string
        |> JDPipe.required "3" JD.string
        |> JDPipe.required "4" JD.string
        |> JDPipe.required "5" JD.string
        |> JDPipe.required "6" JD.string
        |> JDPipe.required "7" JD.string
        |> JDPipe.required "8" JD.string
        |> JDPipe.required "9" JD.string
        |> JDPipe.required "10" JD.string
        |> JDPipe.required "11" JD.string
        |> JDPipe.required "12" JD.string


genericWeekdayNamesDecoder : Decoder WeekdayNames
genericWeekdayNamesDecoder =
    JD.succeed WeekdayNames
        |> JDPipe.required "sun" JD.string
        |> JDPipe.required "mon" JD.string
        |> JDPipe.required "tue" JD.string
        |> JDPipe.required "wed" JD.string
        |> JDPipe.required "thu" JD.string
        |> JDPipe.required "fri" JD.string
        |> JDPipe.required "sat" JD.string


genericEraNamesDecoder : Decoder EraNames
genericEraNamesDecoder =
    JD.succeed EraNames
        |> JDPipe.required "0" JD.string
        |> JDPipe.required "1" JD.string


snakeIdentifier : LanguageInfo -> String
snakeIdentifier { language, script, territory, variant } =
    String.join "_"
        (List.filterMap identity
            [ Just language
            , script
            , territory
            , variant
            ]
        )
        |> fixReservedKeywords


skewerCase : LanguageInfo -> String
skewerCase { language, script, territory, variant } =
    String.join "-"
        (List.filterMap identity
            [ Just language
            , script
            , territory
            , variant
            ]
        )


reservedWords : Set String
reservedWords =
    Set.fromList
        [ "as" ]


fixReservedKeywords : String -> String
fixReservedKeywords word =
    if Set.member word reservedWords then
        "locale_" ++ word

    else
        word



-- Number and Currencies


type alias FullFormatParsed =
    { positive : FormatParsed
    , negative : Maybe FormatParsed
    }


type alias FormatParsed =
    { prefix : String
    , system : FormatNumber.Locales.System
    , decimals : FormatNumber.Locales.Decimals
    , suffix : String
    }


fullFormatParser : Parser FullFormatParsed
fullFormatParser =
    Parser.succeed FullFormatParsed
        |= formatParser
        |= negativeFormatParser
        |. Parser.end


formatParser : Parser FormatParsed
formatParser =
    Parser.succeed FormatParsed
        |= prefixParser
        |= systemParser
        |= decimalsParser
        |= suffixParser


negativeFormatParser : Parser (Maybe FormatParsed)
negativeFormatParser =
    Parser.oneOf
        [ Parser.map (\_ -> Nothing) Parser.end
        , Parser.succeed Just
            |. Parser.chompIf (\char -> char == ';')
            |= formatParser
        ]


prefixParser : Parser String
prefixParser =
    Parser.chompUntil "#"
        |> Parser.getChompedString


systemParser : Parser FormatNumber.Locales.System
systemParser =
    Parser.chompWhile (\char -> List.member char [ '#', ',', '0' ])
        |> Parser.getChompedString
        |> Parser.andThen
            (\words ->
                case words of
                    "#,##0" ->
                        Parser.succeed FormatNumber.Locales.Western

                    "#,##,##0" ->
                        Parser.succeed FormatNumber.Locales.Indian

                    _ ->
                        Parser.problem ("Cannot parse a system from: " ++ words)
            )


decimalsParser : Parser FormatNumber.Locales.Decimals
decimalsParser =
    Parser.chompWhile (\char -> List.member char [ '.', '0', '#' ])
        |> Parser.getChompedString
        |> Parser.andThen
            (\words ->
                case words of
                    "" ->
                        Parser.succeed (FormatNumber.Locales.Exact 0)

                    ".00" ->
                        Parser.succeed (FormatNumber.Locales.Exact 2)

                    ".##" ->
                        Parser.succeed (FormatNumber.Locales.Max 2)

                    ".###" ->
                        Parser.succeed (FormatNumber.Locales.Max 3)

                    _ ->
                        Parser.problem ("Cannot parse the correct number of decimals from: " ++ words)
            )


suffixParser : Parser String
suffixParser =
    Parser.chompWhile (\char -> char /= ';')
        |> Parser.getChompedString


numberLocaleDecoder : String -> Decoder FormatNumber.Locales.Locale
numberLocaleDecoder formatName =
    JD.succeed
        (\formatString group decimal minusSign ->
            let
                parseResult =
                    Parser.run fullFormatParser formatString
            in
            Result.map
                (\parsed ->
                    { decimals = parsed.positive.decimals
                    , system = parsed.positive.system
                    , thousandSeparator = group
                    , decimalSeparator = decimal
                    , negativePrefix = Maybe.Extra.unwrap (minusSign ++ parsed.positive.prefix) .prefix parsed.negative
                    , negativeSuffix = Maybe.Extra.unwrap parsed.positive.suffix .suffix parsed.negative
                    , positivePrefix = parsed.positive.prefix
                    , positiveSuffix = parsed.positive.suffix
                    , zeroPrefix = parsed.positive.prefix
                    , zeroSuffix = parsed.positive.suffix
                    }
                )
                parseResult
                |> Result.mapError Parser.deadEndsToString
                |> JDExtra.fromResult
        )
        |> JDPipe.requiredAt [ "numbers", formatName, "standard" ] JD.string
        |> JDPipe.requiredAt [ "numbers", "symbols-numberSystem-latn", "group" ] JD.string
        |> JDPipe.requiredAt [ "numbers", "symbols-numberSystem-latn", "decimal" ] JD.string
        |> JDPipe.requiredAt [ "numbers", "symbols-numberSystem-latn", "minusSign" ] JD.string
        |> JDPipe.resolve


decimalNumberFormatDecoder : Decoder FormatNumber.Locales.Locale
decimalNumberFormatDecoder =
    numberLocaleDecoder "decimalFormats-numberSystem-latn"


currencyNumberFormatDecoder : Decoder FormatNumber.Locales.Locale
currencyNumberFormatDecoder =
    numberLocaleDecoder "currencyFormats-numberSystem-latn"


percentNumberFormatDecoder : Decoder FormatNumber.Locales.Locale
percentNumberFormatDecoder =
    numberLocaleDecoder "percentFormats-numberSystem-latn"


currencySymbolsDecoder : Decoder (List ( String, String ))
currencySymbolsDecoder =
    JD.at [ "numbers", "currencies" ]
        (JD.keyValuePairs
            (JD.maybe
                (JD.oneOf
                    [ JD.field "symbol" JD.string
                    , JD.field "symbol-alt-narrow" JD.string
                    ]
                )
            )
            |> JD.map
                (List.filterMap
                    (\( key, maybeSymbol ) ->
                        Maybe.map (Tuple.pair key) maybeSymbol
                    )
                )
        )
