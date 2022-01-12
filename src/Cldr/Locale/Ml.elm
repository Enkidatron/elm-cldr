module Cldr.Locale.Ml exposing (ml)

{-|


# Locales for the Ml language

@docs ml

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'ml'.

Date format strings:

  - Short : d/M/yy
  - Medium : y, MMM d
  - Long : y, MMMM d
  - Full : y, MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ml : Locale
ml =
    Locale Internal.Generated.ml
