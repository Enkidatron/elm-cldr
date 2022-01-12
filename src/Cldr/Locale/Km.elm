module Cldr.Locale.Km exposing (km)

{-|


# Locales for the Km language

@docs km

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'km'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
km : Locale
km =
    Locale Internal.Generated.km
