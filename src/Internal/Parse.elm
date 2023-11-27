module Internal.Parse exposing (..)

import Cldr.Format.Options as Opts
import Dict
import Internal.DayPeriodRule
import Internal.FormatSymbols as Sym exposing (NameWidth(..), NumberWidth(..), TextWidth(..), Width(..))
import Internal.LanguageInfo exposing (DayPeriodsInfo, LanguageInfo)
import Internal.LanguageInfo.Parse
import Internal.Locale exposing (DateTimeToken(..))
import Internal.Options
import Internal.Structures exposing (Patterns)
import Maybe.Extra
import Parser exposing ((|.), (|=), Parser)
import Set exposing (Set)
import Tagged exposing (Tagged(..))


parse : DayPeriodsInfo -> String -> Maybe Internal.Locale.Locale
parse dayPeriods text =
    Internal.LanguageInfo.Parse.parse text
        |> Maybe.andThen (parseInfo dayPeriods)


parseInfo : DayPeriodsInfo -> LanguageInfo -> Maybe Internal.Locale.Locale
parseInfo dayPeriods info =
    Just Internal.Locale.Internal
        |> Maybe.map ((|>) info.monthFormatNames)
        |> Maybe.map ((|>) info.monthStandaloneNames)
        |> Maybe.map ((|>) info.weekdayFormatNames)
        |> Maybe.map ((|>) info.weekdayStandaloneNames)
        |> Maybe.map ((|>) info.eraNames)
        |> Maybe.map ((|>) info.periodNames)
        |> Maybe.map ((|>) (dayPeriodRules dayPeriods info))
        |> Maybe.Extra.andMap (dateSymbols info)
        |> Maybe.Extra.andMap (timeSymbols info)
        |> Maybe.Extra.andMap (dateTimeTokens info)
        |> Maybe.map ((|>) (toLanguageId info))
        |> Maybe.Extra.andMap (availableFormatList info)
        |> Maybe.Extra.andMap (twelveHourByDefault info)
        |> Maybe.map Internal.Locale.Locale


dayPeriodRules : DayPeriodsInfo -> LanguageInfo -> List Internal.DayPeriodRule.DayPeriodRule
dayPeriodRules dayPeriods info =
    let
        fullTag =
            [ Just info.language
            , info.script
            , info.territory
            , info.variant
            ]
                |> List.filterMap identity
                |> String.join "-"
    in
    Maybe.Extra.or
        (Dict.get fullTag dayPeriods)
        (Dict.get info.language dayPeriods)
        |> Maybe.withDefault []


dateSymbols : LanguageInfo -> Maybe (Patterns (List Sym.DateWithLiteral))
dateSymbols info =
    andThenMaybePattern
        (Parser.run (symbolListParserHelper (withLiteralParser dateSymbolParser))
            >> Result.toMaybe
        )
        info.datePatterns


timeSymbols : LanguageInfo -> Maybe (Patterns (List Sym.TimeWithLiteral))
timeSymbols info =
    andThenMaybePattern
        (Parser.run (symbolListParserHelper (withLiteralParser timeSymbolParser))
            >> Result.toMaybe
        )
        info.timePatterns


dateTimeTokens : LanguageInfo -> Maybe (Patterns (List Internal.Locale.DateTimeToken))
dateTimeTokens info =
    andThenMaybePattern
        (Parser.run (symbolListParserHelper dateTimeTokenParser)
            >> Result.toMaybe
        )
        info.dateTimePatterns


toLanguageId : LanguageInfo -> Internal.Locale.LanguageId
toLanguageId info =
    if info.language == "root" then
        Internal.Locale.Root

    else
        Internal.Locale.Lang
            (Tagged info.language)
            (Maybe.map Tagged info.script)
            (Maybe.map Tagged info.territory)
            (Maybe.map Tagged info.variant)
            |> Internal.Locale.normalize


availableFormatList : LanguageInfo -> Maybe (List Internal.Locale.AvailableFormat)
availableFormatList info =
    info.availableFormats
        |> List.filter (Tuple.first >> isSupportedKey)
        |> List.map parseAvailableFormat
        |> Maybe.Extra.combine



-- Helpers


andThenMaybePattern : (a -> Maybe b) -> Patterns a -> Maybe (Patterns b)
andThenMaybePattern innerFun pattern =
    Maybe.map4 Patterns
        (innerFun pattern.short)
        (innerFun pattern.medium)
        (innerFun pattern.long)
        (innerFun pattern.full)


symbolListParserHelper : Parser a -> Parser (List a)
symbolListParserHelper innerParser =
    Parser.sequence
        { start = ""
        , separator = ""
        , end = ""
        , spaces = Parser.succeed ()
        , item = innerParser
        , trailing = Parser.Optional
        }
        |. Parser.end


withLiteralParser : Parser a -> Parser (Sym.WithLiteral a)
withLiteralParser innerParser =
    Parser.oneOf
        [ Parser.map Sym.Symbol innerParser
        , Parser.variable
            { start = \c -> not (Char.isAlpha c) && c /= '\''
            , inner = \c -> not (Char.isAlpha c) && c /= '\''
            , reserved = Set.empty
            }
            |> Parser.map Sym.Literal
        , Parser.succeed Sym.Literal
            |. Parser.symbol "'"
            |= Parser.getChompedString (Parser.chompUntil "'")
            |. Parser.symbol "'"
        ]


parseWord : String -> a -> Parser a
parseWord word item =
    Parser.map (\_ -> item) (Parser.symbol word)


parseTextWidth5 : String -> (Sym.TextWidth -> a) -> Parser a
parseTextWidth5 baseCharacter toItem =
    Parser.oneOf
        [ parseWord (String.repeat 5 baseCharacter) (toItem Sym.Narrow)
        , parseWord (String.repeat 4 baseCharacter) (toItem Sym.Wide)
        , parseWord (String.repeat 3 baseCharacter) (toItem Sym.Abbreviated)
        , parseWord (String.repeat 2 baseCharacter) (toItem Sym.Abbreviated)
        , parseWord baseCharacter (toItem Sym.Abbreviated)
        ]


parseNumberWidth2 : String -> (Sym.NumberWidth -> a) -> Parser a
parseNumberWidth2 baseCharacter toItem =
    Parser.oneOf
        [ parseWord (String.repeat 2 baseCharacter) (toItem Sym.TwoDigit)
        , parseWord baseCharacter (toItem Sym.MinimumDigits)
        ]


parseWidth5 : String -> (Sym.Width -> a) -> Parser a
parseWidth5 baseCharacter toItem =
    Parser.oneOf
        [ parseWord (String.repeat 5 baseCharacter) (toItem (Sym.Text Sym.Narrow))
        , parseWord (String.repeat 4 baseCharacter) (toItem (Sym.Text Sym.Wide))
        , parseWord (String.repeat 3 baseCharacter) (toItem (Sym.Text Sym.Abbreviated))
        , parseWord (String.repeat 2 baseCharacter) (toItem (Sym.Number Sym.TwoDigit))
        , parseWord baseCharacter (toItem (Sym.Number Sym.MinimumDigits))
        ]


dateSymbolParser : Parser Sym.DateSymbol
dateSymbolParser =
    Parser.oneOf
        [ parseTextWidth5 "G" Sym.Era
        , parseNumberWidth2 "y" Sym.Year
        , parseNumberWidth2 "Y" Sym.YearOfWeek
        , parseWidth5 "M" Sym.Month
        , parseWidth5 "L" Sym.MonthStandalone
        , parseTextWidth5 "E" Sym.Weekday
        , parseWord "ccccc" (Sym.WeekdayStandalone Sym.Narrow)
        , parseWord "cccc" (Sym.WeekdayStandalone Sym.Wide)
        , parseWord "ccc" (Sym.WeekdayStandalone Sym.Abbreviated)
        , parseNumberWidth2 "d" Sym.Day
        ]


timeSymbolParser : Parser Sym.TimeSymbol
timeSymbolParser =
    Parser.oneOf
        [ parseTextWidth5 "a" Sym.Period
        , parseTextWidth5 "B" Sym.FlexibleDayPeriod
        , parseNumberWidth2 "h" Sym.Hour12From1
        , parseNumberWidth2 "H" Sym.Hour24From0
        , parseNumberWidth2 "K" Sym.Hour12From0
        , parseNumberWidth2 "k" Sym.Hour24From1
        , parseNumberWidth2 "m" Sym.Minute
        , parseNumberWidth2 "s" Sym.Second
        , parseWord "SSS" (Sym.FractionalSeconds 3)
        , parseWord "SS" (Sym.FractionalSeconds 2)
        , parseWord "S" (Sym.FractionalSeconds 1)
        , parseWord "zzzz" (Sym.ZoneNonLocationFormat Sym.Long)
        , parseWord "zzz" (Sym.ZoneNonLocationFormat Sym.Short)
        , parseWord "zz" (Sym.ZoneNonLocationFormat Sym.Short)
        , parseWord "z" (Sym.ZoneNonLocationFormat Sym.Short)
        , parseWord "Z" Sym.ZoneIso8601Basic
        , parseWord "OOOO" (Sym.ZoneGmtFormat Sym.Long)
        , parseWord "O" (Sym.ZoneGmtFormat Sym.Short)
        , parseWord "vvvv" (Sym.ZoneGenericNonLocationFormat Sym.Long)
        , parseWord "v" (Sym.ZoneGenericNonLocationFormat Sym.Short)
        ]


dateTimeTokenParser : Parser Internal.Locale.DateTimeToken
dateTimeTokenParser =
    Parser.oneOf
        [ parseWord "{1}" Internal.Locale.DateGoesHere
        , parseWord "{0}" Internal.Locale.TimeGoesHere
        , Parser.variable
            { start = \c -> not (Char.isAlpha c) && c /= '\'' && c /= '{'
            , inner = \c -> not (Char.isAlpha c) && c /= '\'' && c /= '{'
            , reserved = Set.empty
            }
            |> Parser.map Internal.Locale.Text
        , Parser.succeed Internal.Locale.Text
            |. Parser.symbol "'"
            |= Parser.getChompedString (Parser.chompUntil "'")
            |. Parser.symbol "'"
        ]


isSupportedKey : String -> Bool
isSupportedKey key =
    not (Set.member key unsupportedKeys)
        && not (String.endsWith "-alt-ascii" key)


unsupportedKeys : Set String
unsupportedKeys =
    Set.fromList
        [ "MMMMW-count-zero"
        , "MMMMW-count-one"
        , "MMMMW-count-two"
        , "MMMMW-count-few"
        , "MMMMW-count-many"
        , "MMMMW-count-other"
        , "MEd-alt-variant"
        , "Md-alt-variant"
        , "MMdd-alt-variant"
        , "yQ"
        , "yQQQ"
        , "yQQQQ"
        , "yMEd-alt-variant"
        , "yMd-alt-variant"
        , "yw-count-zero"
        , "yw-count-one"
        , "yw-count-two"
        , "yw-count-few"
        , "yw-count-many"
        , "yw-count-other"
        ]


parseAvailableFormat : ( String, String ) -> Maybe Internal.Locale.AvailableFormat
parseAvailableFormat ( key, pattern ) =
    parseOptionsFromAvailableFormatKey key
        |> Result.toMaybe
        |> Maybe.andThen (\opts -> availableFormatForOptions opts pattern)


parseOptionsFromAvailableFormatKey : String -> Result (List Parser.DeadEnd) Opts.DateTimeOptions
parseOptionsFromAvailableFormatKey =
    Parser.run availableFormatKeyOptionsParser


availableFormatKeyOptionsParser : Parser Opts.DateTimeOptions
availableFormatKeyOptionsParser =
    Parser.succeed buildKeyOptions
        |= parseEra
        |= parseYear
        |= parseMonth
        |= parseWeekday
        |= parseDay
        |= parsePeriod
        |= parseDayPeriod
        |= parseHour
        |= parseMinute
        |= parseSecond
        |= parseZone
        |. Parser.end


buildKeyOptions : Maybe Opts.TextOption -> Maybe Opts.NumberOption -> Maybe Opts.NumberOrTextOption -> Maybe Opts.TextOption -> Maybe Opts.NumberOption -> Maybe Opts.TextOption -> Maybe Opts.TextOption -> Maybe ( Opts.NumberOption, Opts.HourType ) -> Maybe Opts.NumberOption -> Maybe Opts.NumberOption -> Maybe Opts.NameOption -> Opts.DateTimeOptions
buildKeyOptions era year month weekday day period dayPeriod hourAndType minute second zone =
    { era = era
    , year = year
    , month = month
    , day = day
    , weekday = weekday
    , period = period
    , dayPeriod = dayPeriod
    , hour = Maybe.map Tuple.first hourAndType
    , minute = minute
    , second = second
    , fractionalSecondDigits = Nothing
    , zone = zone
    , hour12 = Maybe.map Tuple.second hourAndType
    }


parseOptionalWords : List ( String, a ) -> Parser (Maybe a)
parseOptionalWords list =
    Parser.oneOf
        (List.map
            (\( word, item ) ->
                parseWord word (Just item)
            )
            list
            ++ [ Parser.succeed Nothing ]
        )


parseEra : Parser (Maybe Opts.TextOption)
parseEra =
    parseOptionalWords
        [ ( "GGGGG", Opts.Narrow )
        , ( "GGGG", Opts.Long )
        , ( "G", Opts.Short )
        ]


parseYear : Parser (Maybe Opts.NumberOption)
parseYear =
    parseOptionalWords
        [ ( "yy", Opts.TwoDigit )
        , ( "y", Opts.Numeric )
        ]


parseMonth : Parser (Maybe Opts.NumberOrTextOption)
parseMonth =
    parseOptionalWords
        [ ( "MMMMM", Opts.Text Opts.Narrow )
        , ( "MMMM", Opts.Text Opts.Long )
        , ( "MMM", Opts.Text Opts.Short )
        , ( "MM", Opts.Number Opts.TwoDigit )
        , ( "M", Opts.Number Opts.Numeric )
        ]


parseDay : Parser (Maybe Opts.NumberOption)
parseDay =
    parseOptionalWords
        [ ( "dd", Opts.TwoDigit )
        , ( "d", Opts.Numeric )
        ]


parseWeekday : Parser (Maybe Opts.TextOption)
parseWeekday =
    parseOptionalWords
        [ ( "EEEEE", Opts.Narrow )
        , ( "EEEE", Opts.Long )
        , ( "E", Opts.Short )
        , ( "cccc", Opts.Long )
        ]


parsePeriod : Parser (Maybe Opts.TextOption)
parsePeriod =
    parseOptionalWords
        [ ( "aaaaa", Opts.Narrow )
        , ( "aaaa", Opts.Long )
        , ( "a", Opts.Short )
        ]


parseDayPeriod : Parser (Maybe Opts.TextOption)
parseDayPeriod =
    parseOptionalWords
        [ ( "BBBBB", Opts.Narrow )
        , ( "BBBB", Opts.Long )
        , ( "BBB", Opts.Short )
        , ( "BB", Opts.Short )
        , ( "B", Opts.Short )
        ]


parseHour : Parser (Maybe ( Opts.NumberOption, Opts.HourType ))
parseHour =
    parseOptionalWords
        [ ( "hh", ( Opts.TwoDigit, Opts.Hour12 ) )
        , ( "h", ( Opts.Numeric, Opts.Hour12 ) )
        , ( "HH", ( Opts.TwoDigit, Opts.Hour24 ) )
        , ( "H", ( Opts.Numeric, Opts.Hour24 ) )
        ]


parseMinute : Parser (Maybe Opts.NumberOption)
parseMinute =
    parseOptionalWords
        [ ( "mm", Opts.TwoDigit )
        , ( "m", Opts.Numeric )
        ]


parseSecond : Parser (Maybe Opts.NumberOption)
parseSecond =
    parseOptionalWords
        [ ( "ss", Opts.TwoDigit )
        , ( "s", Opts.Numeric )
        ]


parseZone : Parser (Maybe Opts.NameOption)
parseZone =
    parseOptionalWords
        [ ( "zzzz", Opts.LongName )
        , ( "z", Opts.ShortName )
        , ( "vvvv", Opts.LongName )
        , ( "v", Opts.ShortName )
        , ( "Z", Opts.ShortName )
        ]


availableFormatForOptions : Opts.DateTimeOptions -> String -> Maybe Internal.Locale.AvailableFormat
availableFormatForOptions options pattern =
    case Internal.Options.shrinkOptions options of
        Internal.Options.DateTimeSet dtOpts ->
            Parser.run (symbolListParserHelper (withLiteralParser formatSymbolParser)) pattern
                |> Result.toMaybe
                |> Maybe.map
                    (\symbols ->
                        Internal.Locale.DateTimeAF
                            { options = dtOpts
                            , formatSymbols = symbols
                            }
                    )

        Internal.Options.DateSet dOpts ->
            Parser.run (symbolListParserHelper (withLiteralParser dateSymbolParser)) pattern
                |> Result.toMaybe
                |> Maybe.map
                    (\symbols ->
                        Internal.Locale.DateAF
                            { options = dOpts
                            , formatSymbols = symbols
                            }
                    )

        Internal.Options.TimeSet tOpts ->
            Parser.run (symbolListParserHelper (withLiteralParser timeSymbolParser)) pattern
                |> Result.toMaybe
                |> Maybe.map
                    (\symbols ->
                        Internal.Locale.TimeAF
                            { options = tOpts
                            , formatSymbols = symbols
                            }
                    )

        Internal.Options.EmptySet ->
            Nothing


formatSymbolParser : Parser Sym.FormatSymbol
formatSymbolParser =
    Parser.oneOf
        [ Parser.map Sym.Date dateSymbolParser
        , Parser.map Sym.Time timeSymbolParser
        ]


twelveHourByDefault : LanguageInfo -> Maybe Bool
twelveHourByDefault info =
    let
        allPatterns =
            [ info.timeSkeletons.short
            , info.timeSkeletons.medium
            , info.timeSkeletons.long
            , info.timeSkeletons.full
            ]

        contains24Hour =
            List.any (String.contains "H") allPatterns

        contains12Hour =
            List.any (String.contains "h") allPatterns
    in
    case ( contains12Hour, contains24Hour ) of
        ( True, True ) ->
            Nothing

        ( True, False ) ->
            Just True

        ( False, True ) ->
            Just False

        ( False, False ) ->
            Nothing
