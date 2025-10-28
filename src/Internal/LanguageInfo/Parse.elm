module Internal.LanguageInfo.Parse exposing (parse, parser)

import Dict exposing (Dict)
import FormatNumber.Locales
import Internal.LanguageInfo exposing (Compact, LanguageInfo)
import Internal.Structures exposing (DurationUnits, EraNames, ListPatternsUnit, MonthNames, Pattern3, Patterns, PeriodNames, Plural, WeekdayNames)
import Parser exposing ((|.), (|=), Parser)
import String.Extra


parse : String -> Maybe LanguageInfo
parse words =
    Parser.run parser words
        |> Result.toMaybe
        |> Maybe.map Internal.LanguageInfo.expand


parser : Parser Compact
parser =
    Parser.succeed Compact
        |= pipeDelimitedString
        |. pipe
        |= maybeStringParser
        |. pipe
        |= maybeStringParser
        |. pipe
        |= maybeStringParser
        |. pipe
        |= pattern3Parser periodNamesParser
        |= patternsParser (pipeDelimitedString |. pipe)
        |= pattern3Parser monthNamesParser
        |= maybeParser (pattern3Parser monthNamesParser)
        |= pattern3Parser weekdayNamesParser
        |= maybeParser (pattern3Parser weekdayNamesParser)
        |= pattern3Parser eraNamesParser
        |= patternsParser (pipeDelimitedString |. pipe)
        |= patternsParser (pipeDelimitedString |. pipe)
        |= listOfPairOfStringParser
        |= patternsParser (pipeDelimitedString |. pipe)
        |= formatNumberLocaleParser
        |= formatNumberLocaleParser
        |= formatNumberLocaleParser
        |= listOfPairOfStringParser
        |= pattern3Parser durationUnitNamesParser
        |= pattern3Parser listPatternsUnitParser
        |. Parser.end


pipe : Parser ()
pipe =
    Parser.symbol "|"


pipeDelimitedString : Parser String
pipeDelimitedString =
    Parser.chompWhile (\char -> char /= '|')
        |> Parser.getChompedString


maybeStringParser : Parser (Maybe String)
maybeStringParser =
    pipeDelimitedString
        |> Parser.map String.Extra.nonEmpty


pattern3Parser : Parser a -> Parser (Pattern3 a)
pattern3Parser innerParser =
    Parser.succeed Pattern3
        |= innerParser
        |= innerParser
        |= innerParser


periodNamesParser : Parser PeriodNames
periodNamesParser =
    Parser.succeed PeriodNames
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= dayPeriodsParser


dayPeriodsParser : Parser (Dict String String)
dayPeriodsParser =
    listOfPairOfStringParser
        |> Parser.map Dict.fromList


listOfPairOfStringParser : Parser (List ( String, String ))
listOfPairOfStringParser =
    Parser.int
        |. pipe
        |> Parser.andThen
            (\count ->
                Parser.loop ( count, [] )
                    (\( x, revItems ) ->
                        if x > 0 then
                            Parser.succeed Tuple.pair
                                |= pipeDelimitedString
                                |. pipe
                                |= pipeDelimitedString
                                |. pipe
                                |> Parser.map (\item -> Parser.Loop ( x - 1, item :: revItems ))

                        else
                            Parser.succeed (Parser.Done (List.reverse revItems))
                    )
            )



-- Parser.sequence
--     { start = "["
--     , separator = "|"
--     , end = "]"
--     , spaces = Parser.spaces
--     , item =
--         Parser.succeed Tuple.pair
--             |= pipeDelimitedString
--             |. pipe
--             |= pipeDelimitedString
--     , trailing = Parser.Mandatory
--     }


patternsParser : Parser a -> Parser (Patterns a)
patternsParser innerParser =
    Parser.succeed Patterns
        |= innerParser
        |= innerParser
        |= innerParser
        |= innerParser


monthNamesParser : Parser MonthNames
monthNamesParser =
    Parser.succeed MonthNames
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe


maybeParser : Parser a -> Parser (Maybe a)
maybeParser innerParser =
    Parser.int
        |. pipe
        |> Parser.andThen
            (\x ->
                case x of
                    0 ->
                        Parser.succeed Nothing

                    1 ->
                        Parser.map Just innerParser

                    _ ->
                        Parser.problem "Unexpected number encountered while evaulating a Maybe"
            )


weekdayNamesParser : Parser WeekdayNames
weekdayNamesParser =
    Parser.succeed WeekdayNames
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe


eraNamesParser : Parser EraNames
eraNamesParser =
    Parser.succeed EraNames
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe


formatNumberLocaleParser : Parser FormatNumber.Locales.Locale
formatNumberLocaleParser =
    Parser.succeed FormatNumber.Locales.Locale
        |= formatNumberDecimalsParser
        |= formatNumberSystemParser
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe


formatNumberDecimalsParser : Parser FormatNumber.Locales.Decimals
formatNumberDecimalsParser =
    Parser.chompIf (\char -> List.member char [ 'N', 'X', 'E' ])
        |> Parser.getChompedString
        |> Parser.andThen
            (\tag ->
                case tag of
                    "N" ->
                        Parser.map FormatNumber.Locales.Min Parser.int

                    "X" ->
                        Parser.map FormatNumber.Locales.Max Parser.int

                    "E" ->
                        Parser.map FormatNumber.Locales.Exact Parser.int

                    other ->
                        Parser.problem ("Error while parsing a FormatNumber.Locales.Decimals, found: " ++ other)
            )


formatNumberSystemParser : Parser FormatNumber.Locales.System
formatNumberSystemParser =
    Parser.chompIf (\char -> List.member char [ 'W', 'I' ])
        |> Parser.getChompedString
        |> Parser.andThen
            (\tag ->
                case tag of
                    "W" ->
                        Parser.succeed FormatNumber.Locales.Western

                    "I" ->
                        Parser.succeed FormatNumber.Locales.Indian

                    other ->
                        Parser.problem ("Error while parsing a FormatNumber.Locales.System, found: " ++ other)
            )


durationUnitNamesParser : Parser (DurationUnits String)
durationUnitNamesParser =
    Parser.succeed DurationUnits
        |= pluralStringParser
        |. pipe
        |= pluralStringParser
        |. pipe
        |= pluralStringParser
        |. pipe
        |= pluralStringParser
        |. pipe
        |= pluralStringParser
        |. pipe
        |= pluralStringParser
        |. pipe
        |= pluralStringParser
        |. pipe
        |= pluralStringParser
        |. pipe


pluralStringParser : Parser (Plural String)
pluralStringParser =
    Parser.succeed Plural
        |= pipeDelimitedString
        |. pipe
        |= maybeParser pipeDelimitedString
        |. pipe
        |= maybeParser pipeDelimitedString
        |. pipe
        |= maybeParser pipeDelimitedString
        |. pipe
        |= maybeParser pipeDelimitedString
        |. pipe
        |= maybeParser pipeDelimitedString
        |. pipe


listPatternsUnitParser : Parser ListPatternsUnit
listPatternsUnitParser =
    Parser.succeed ListPatternsUnit
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
        |= pipeDelimitedString
        |. pipe
