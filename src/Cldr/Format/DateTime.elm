module Format.DateTime exposing
    ( FormatType(..)
    , short, medium, long, full
    , format
    )

{-|


# DateTime Formatting

@docs FormatType
@docs short, medium, long, full

@docs format

-}

import DateFormat
import Cldr.Format.Length exposing (Length(..))
import Internal.Length
import Internal.Locale exposing (Locale(..))
import Time exposing (Posix)


{-| The different combinations of date and time that can be formatted.
-}
type FormatType
    = DateOnly Length
    | TimeOnly Length
    | DateAndTime { date : Length, time : Length }


{-| Use `Short` for both date and time
-}
short : FormatType
short =
    DateAndTime { date = Short, time = Short }


{-| Use `Medium` for both date and time
-}
medium : FormatType
medium =
    DateAndTime { date = Medium, time = Medium }


{-| Use `Long` for both date and time
-}
long : FormatType
long =
    DateAndTime { date = Long, time = Long }


{-| Use `Full` for both date and time
-}
full : FormatType
full =
    DateAndTime { date = Full, time = Full }


{-| Format a `Time.Posix` value, using the format for a specified `Locale` and the specified `Time.Zone`

    import Time
    import Cldr.Locale.En exposing (en)

    format short en Time.utc (Time.millisToPosix 959829796738)
    --> "6/1/00, 3:23 AM"

-}
format : FormatType -> Locale -> Time.Zone -> Posix -> String
format formatType (Locale internal) zone =
    DateFormat.formatWithLanguage (Locale.Internal.toDateTimeLanguage internal)
        (tokensForFormatType formatType internal zone)
        zone


tokensForFormatType : FormatType -> Locale.Internal.Internal -> Time.Zone -> List DateFormat.Token
tokensForFormatType formatType internal zone =
    case formatType of
        DateOnly length ->
            Locale.Internal.getPattern internal.dateTokens length

        TimeOnly length ->
            Locale.Internal.getPattern internal.timeTokens length
                |> List.map (Locale.Internal.convertToken zone)

        DateAndTime { date, time } ->
            Locale.Internal.getPattern internal.dateTimeTokens (Internal.Length.max date time)
                |> List.concatMap
                    (Locale.Internal.convertDateTimeToken
                        { internal = internal
                        , zone = zone
                        , date = date
                        , time = time
                        }
                    )
