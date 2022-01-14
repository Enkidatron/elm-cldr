module Cldr.Format.DateTime exposing
    ( format
    , FormatType(..)
    , short, medium, long, full
    )

{-|


# DateTime Formatting

@docs format


## Format Type

@docs FormatType
@docs short, medium, long, full

-}

import Cldr.Format.Length exposing (Length(..))
import DateFormat
import Internal.Length
import Internal.Locale exposing (Locale(..))
import Internal.Structures
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


{-| Format a `Time.Posix` value, using the format for a specified `FormatType`, `Locale`, and `Time.Zone`

    import Time
    import Cldr.Locale exposing (en)

    format short en Time.utc (Time.millisToPosix 959829796738)
    --> "6/1/00, 3:23 AM"

-}
format : FormatType -> Locale -> Time.Zone -> Posix -> String
format formatType (Locale internal) zone =
    DateFormat.formatWithLanguage (Internal.Locale.toDateTimeLanguage internal)
        (tokensForFormatType formatType internal zone)
        zone


tokensForFormatType : FormatType -> Internal.Locale.Internal -> Time.Zone -> List DateFormat.Token
tokensForFormatType formatType internal zone =
    case formatType of
        DateOnly length ->
            Internal.Structures.getPattern internal.dateTokens length
                |> List.map (Internal.Locale.convertToken internal.eraNames zone)

        TimeOnly length ->
            Internal.Structures.getPattern internal.timeTokens length
                |> List.map (Internal.Locale.convertToken internal.eraNames zone)

        DateAndTime { date, time } ->
            Internal.Structures.getPattern internal.dateTimeTokens (Internal.Length.max date time)
                |> List.concatMap
                    (Internal.Locale.convertDateTimeToken
                        { internal = internal
                        , zone = zone
                        , date = date
                        , time = time
                        }
                    )
