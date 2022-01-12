module Cldr.Locale.Kn exposing (kn)

{-|


# Locales for the Kn language

@docs kn

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'kn'.

Date format strings:

  - Short : d/M/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : hh:mm a
  - Medium : hh:mm:ss a
  - Long : hh:mm:ss a z
  - Full : hh:mm:ss a zzzz

-}
kn : Locale
kn =
    Locale Internal.Generated.kn
