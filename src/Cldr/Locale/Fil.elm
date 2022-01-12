module Cldr.Locale.Fil exposing (fil)

{-|


# Locales for the Fil language

@docs fil

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'fil'.

Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fil : Locale
fil =
    Locale Internal.Generated.fil
