module Cldr.Format.Length exposing (Length(..))

{-|


# Length

Provides the length values for `Cldr.Format.Date` and `Cldr.Format.DateTime`

@docs Length

-}


{-| There are four lengths for formatting.
These determine how verbose the formatted output will be.
-}
type Length
    = Short
    | Medium
    | Long
    | Full
