module Cldr.Locale.Bn exposing (bn, bn_IN)

{-|


# Locales for the Bn language

@docs bn, bn_IN

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'bn'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
bn : Locale
bn =
    Locale Internal.Generated.bn


{-| The `Locale` for 'bn-IN'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
bn_IN : Locale
bn_IN =
    Locale Internal.Generated.bn_IN
