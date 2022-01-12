module Cldr.Locale.Te exposing (te)

{-|


# Locales for the Te language

@docs te

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'te'.

Date format strings:

  - Short : dd-MM-yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : d, MMMM y, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
te : Locale
te =
    Locale Internal.Generated.te
