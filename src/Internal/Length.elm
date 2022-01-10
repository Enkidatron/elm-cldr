module Internal.Length exposing (max)

import Cldr.Format.Length exposing (Length(..))


max : Length -> Length -> Length
max a b =
    case ( a, b ) of
        ( Full, _ ) ->
            Full

        ( _, Full ) ->
            Full

        ( Long, _ ) ->
            Long

        ( _, Long ) ->
            Long

        ( Medium, _ ) ->
            Medium

        ( _, Medium ) ->
            Medium

        ( Short, Short ) ->
            Short
