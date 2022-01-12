module Cldr.Locale.Sk exposing (sk)

{-|


# Locales for the Sk language

@docs sk

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'sk'.

Date format strings:

  - Short : d. M. y
  - Medium : d. M. y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
sk : Locale
sk =
    Locale Internal.Generated.sk
