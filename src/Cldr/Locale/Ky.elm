module Cldr.Locale.Ky exposing (ky)

{-|


# Locales for the Ky language

@docs ky

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'ky'.

Date format strings:

  - Short : d/M/yy
  - Medium : y-'ж'., d-MMM
  - Long : y-'ж'., d-MMMM
  - Full : y-'ж'., d-MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ky : Locale
ky =
    Locale Internal.Generated.ky
