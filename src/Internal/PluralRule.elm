module Internal.PluralRule exposing (..)


type alias PluralRulesInfo =
    { one : Maybe PluralRule
    , two : Maybe PluralRule
    , zero : Maybe PluralRule
    , few : Maybe PluralRule
    , many : Maybe PluralRule
    }


type PluralRule
    = Or OrClause (List OrClause)


type OrClause
    = And Clause (List Clause)


type alias Clause =
    { variable : Variable
    , modBy : Maybe Int
    , operator : Operator
    , target : ( MatchableInt, List MatchableInt )
    }


type Variable
    = N
    | I
    | V
    | F
    | T
    | E


type Operator
    = Equals
    | NotEquals


type MatchableInt
    = Exactly Int
    | Range Int Int


match : PluralRule -> Int -> Bool
match rule x =
    case rule of
        Or clause [] ->
            matchOr x clause

        Or clause others ->
            matchOr x clause || List.any (matchOr x) others


matchOr : Int -> OrClause -> Bool
matchOr x rule =
    case rule of
        And clause others ->
            matchClause x clause && List.all (matchClause x) others


matchClause : Int -> Clause -> Bool
matchClause x rule =
    x
        |> makeVariable rule.variable
        |> adjustByMod rule.modBy
        |> matchesMatchables rule.target
        |> adjustForOperator rule.operator


makeVariable : Variable -> Int -> Int
makeVariable variable x =
    case variable of
        N ->
            abs x

        I ->
            x

        V ->
            0

        F ->
            0

        T ->
            0

        E ->
            String.length (String.fromInt x) - 1


adjustByMod : Maybe Int -> Int -> Int
adjustByMod mod x =
    case mod of
        Just m ->
            x |> modBy m

        Nothing ->
            x


matchesMatchables : ( MatchableInt, List MatchableInt ) -> Int -> Bool
matchesMatchables ( first, rest ) x =
    List.any (matchesMatchable x) (first :: rest)


matchesMatchable : Int -> MatchableInt -> Bool
matchesMatchable x matchable =
    case matchable of
        Exactly y ->
            x == y

        Range low high ->
            (low <= x) && (x <= high)


adjustForOperator : Operator -> Bool -> Bool
adjustForOperator operator =
    case operator of
        Equals ->
            identity

        NotEquals ->
            not
