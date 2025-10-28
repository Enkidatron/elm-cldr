module PluralRulesInfo exposing (..)

import Dict exposing (Dict)
import Elm
import Gen.Internal.PluralRule
import Internal.PluralRule exposing (..)
import Json.Decode as JD exposing (Decoder)
import Json.Decode.Extra as JDExtra
import Parser exposing ((|.), (|=), Parser)


type alias AllPluralRules =
    Dict String PluralRulesInfo


decoder : Decoder AllPluralRules
decoder =
    JD.at [ "supplemental", "plurals-type-cardinal" ]
        (JD.dict
            (JD.map5 PluralRulesInfo
                (JDExtra.optionalField "pluralRule-count-one" pluralRuleDecoder)
                (JDExtra.optionalField "pluralRule-count-two" pluralRuleDecoder)
                (JDExtra.optionalField "pluralRule-count-zero" pluralRuleDecoder)
                (JDExtra.optionalField "pluralRule-count-few" pluralRuleDecoder)
                (JDExtra.optionalField "pluralRule-count-many" pluralRuleDecoder)
            )
        )


pluralRuleDecoder : Decoder PluralRule
pluralRuleDecoder =
    JD.string
        |> JD.andThen
            (\words ->
                Parser.run pluralRuleParser (Debug.log "rule words" words)
                    |> Result.mapError (Debug.log "plural rule parser error")
                    |> Result.mapError (\_ -> "Cannot parse plural rule: " ++ words)
                    |> Result.map (Debug.log "result of parsing")
                    |> JDExtra.fromResult
            )


pluralRuleParser : Parser PluralRule
pluralRuleParser =
    orClauseParser
        |. Parser.spaces
        |> Parser.andThen
            (\firstClause ->
                Parser.oneOf
                    [ Parser.succeed (Or firstClause [])
                        |. Parser.symbol "@"
                    , Parser.sequence
                        { start = "or"
                        , separator = "or"
                        , end = "@"
                        , spaces = Parser.spaces
                        , item = orClauseParser
                        , trailing = Parser.Forbidden
                        }
                        |> Parser.map (Or firstClause)
                    ]
            )


orClauseParser : Parser OrClause
orClauseParser =
    Parser.sequence
        { start = ""
        , separator = "and"
        , end = ""
        , spaces = Parser.spaces
        , item = pluralRuleClauseParser
        , trailing = Parser.Forbidden
        }
        |> Parser.andThen
            (\clauses ->
                case clauses of
                    [] ->
                        Parser.problem "No rule clauses found to bind with 'and'"

                    item :: rest ->
                        Parser.succeed (And item rest)
            )


pluralRuleClauseParser : Parser Clause
pluralRuleClauseParser =
    Parser.succeed Clause
        |= (Parser.chompIf Char.isAlpha
                |> Parser.getChompedString
                |> Parser.andThen
                    (\chomped ->
                        case chomped of
                            "n" ->
                                Parser.succeed N

                            "i" ->
                                Parser.succeed I

                            "v" ->
                                Parser.succeed V

                            "f" ->
                                Parser.succeed F

                            "t" ->
                                Parser.succeed T

                            "e" ->
                                Parser.succeed E

                            _ ->
                                Parser.problem ("Unrecognized variable type in rule definition: '" ++ chomped ++ "'")
                    )
           )
        |. Parser.spaces
        |= Parser.oneOf
            [ Parser.succeed Just
                |. Parser.symbol "%"
                |. Parser.spaces
                |= Parser.int
            , Parser.succeed Nothing
            ]
        |. Parser.spaces
        |= Parser.oneOf
            [ Parser.succeed Equals |. Parser.symbol "="
            , Parser.succeed NotEquals |. Parser.symbol "!="
            ]
        |. Parser.spaces
        |= matchableIntNonemptyListParser


matchableIntNonemptyListParser : Parser ( MatchableInt, List MatchableInt )
matchableIntNonemptyListParser =
    Parser.sequence
        { start = ""
        , separator = ","
        , end = ""
        , spaces = Parser.spaces
        , item = matchableIntParser
        , trailing = Parser.Forbidden
        }
        |> Parser.andThen
            (\items ->
                case items of
                    [] ->
                        Parser.problem "There must be at least one target number after the operator"

                    first :: rest ->
                        Parser.succeed ( first, rest )
            )


matchableIntParser : Parser MatchableInt
matchableIntParser =
    (Parser.chompWhile Char.isDigit
        |> Parser.getChompedString
        |> Parser.andThen
            (\chomped ->
                case String.toInt chomped of
                    Just num ->
                        Parser.succeed num

                    Nothing ->
                        Parser.problem ("Cannot parse '" ++ chomped ++ "' as an int")
            )
    )
        |> Parser.andThen
            (\num ->
                Parser.oneOf
                    [ Parser.succeed (Range num)
                        |. Parser.symbol ".."
                        |= Parser.int
                    , Parser.succeed (Exactly num)
                    ]
            )


expression : PluralRule -> Elm.Expression
expression rule =
    case rule of
        Or orClause rest ->
            Gen.Internal.PluralRule.make_.or
                (orClauseExpression orClause)
                (Elm.list (List.map orClauseExpression rest))


orClauseExpression : OrClause -> Elm.Expression
orClauseExpression orClause =
    case orClause of
        And clause others ->
            Gen.Internal.PluralRule.make_.and
                (clauseExpression clause)
                (Elm.list (List.map clauseExpression others))


clauseExpression : Clause -> Elm.Expression
clauseExpression clause =
    Gen.Internal.PluralRule.make_.clause
        { variable =
            case clause.variable of
                N ->
                    Gen.Internal.PluralRule.make_.n

                I ->
                    Gen.Internal.PluralRule.make_.i

                V ->
                    Gen.Internal.PluralRule.make_.v

                F ->
                    Gen.Internal.PluralRule.make_.f

                T ->
                    Gen.Internal.PluralRule.make_.t

                E ->
                    Gen.Internal.PluralRule.make_.e
        , modBy = Elm.maybe (Maybe.map Elm.int clause.modBy)
        , operator =
            case clause.operator of
                Equals ->
                    Gen.Internal.PluralRule.make_.equals

                NotEquals ->
                    Gen.Internal.PluralRule.make_.notEquals
        , target =
            Elm.tuple
                (Tuple.first clause.target |> matchableIntExpression)
                (Tuple.second clause.target |> List.map matchableIntExpression |> Elm.list)
        }


matchableIntExpression : MatchableInt -> Elm.Expression
matchableIntExpression matchable =
    case matchable of
        Exactly n ->
            Gen.Internal.PluralRule.make_.exactly (Elm.int n)

        Range low high ->
            Gen.Internal.PluralRule.make_.range (Elm.int low) (Elm.int high)
