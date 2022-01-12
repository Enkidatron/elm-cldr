module Cldr.Locale.Gu exposing (gu)

{-|


# Locales for the Gu language

@docs gu

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'gu'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : hh:mm a
  - Medium : hh:mm:ss a
  - Long : hh:mm:ss a z
  - Full : hh:mm:ss a zzzz

-}
gu : Locale
gu =
    Locale Internal.Generated.gu
