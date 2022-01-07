module Format.Length exposing (Length(..))

{-|


# Length

    Provides the length values for `Format.Date` and `Format.DateTime`

    @docs Length

-}


{-| There are four lengths for formatting.
These determine how verbose the formatted output will be.
-}
type Length
    = Full
    | Long
    | Medium
    | Short
