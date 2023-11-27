module Internal.FormatSymbols exposing
    ( DateSymbol(..)
    , DateWithLiteral
    , FormatSymbol(..)
    , FormatWithLiteral
    , NameWidth(..)
    , NumberWidth(..)
    , TextWidth(..)
    , TimeSymbol(..)
    , TimeWithLiteral
    , Width(..)
    , WithLiteral(..)
    , mapLiteral
    , unwrap
    )


type WithLiteral a
    = Literal String
    | Symbol a


type alias FormatWithLiteral =
    WithLiteral FormatSymbol


type alias DateWithLiteral =
    WithLiteral DateSymbol


type alias TimeWithLiteral =
    WithLiteral TimeSymbol


type FormatSymbol
    = Date DateSymbol
    | Time TimeSymbol


type DateSymbol
    = Era TextWidth
    | Year NumberWidth
    | YearOfWeek NumberWidth
    | Month Width
    | MonthStandalone Width
    | Weekday TextWidth
    | WeekdayStandalone TextWidth
    | Day NumberWidth


type TimeSymbol
    = Period TextWidth
    | FlexibleDayPeriod TextWidth
    | Hour12From1 NumberWidth
    | Hour24From0 NumberWidth
    | Hour12From0 NumberWidth
    | Hour24From1 NumberWidth
    | Minute NumberWidth
    | Second NumberWidth
    | FractionalSeconds Int
    | ZoneNonLocationFormat NameWidth
    | ZoneIso8601Basic
    | ZoneGmtFormat NameWidth
    | ZoneGenericNonLocationFormat NameWidth


type TextWidth
    = Abbreviated
    | Wide
    | Narrow


type NumberWidth
    = MinimumDigits
    | TwoDigit


type Width
    = Text TextWidth
    | Number NumberWidth


type NameWidth
    = Short
    | Long


mapLiteral : (a -> b) -> WithLiteral a -> WithLiteral b
mapLiteral fun withLiteral =
    case withLiteral of
        Literal words ->
            Literal words

        Symbol a ->
            Symbol (fun a)


unwrap : (a -> String) -> WithLiteral a -> String
unwrap fun withLiteral =
    case withLiteral of
        Literal words ->
            words

        Symbol a ->
            fun a
