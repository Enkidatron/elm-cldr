module Cldr.Locale.Vi exposing (vi)

{-|


# Locales for the Vi language

@docs vi

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'vi'.

Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
vi : Locale
vi =
    Locale Internal.Generated.vi
