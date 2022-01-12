module Cldr.Locale.Eu exposing (eu)

{-|


# Locales for the Eu language

@docs eu

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'eu'.

Date format strings:

  - Short : yy/M/d
  - Medium : y('e')'ko' MMM d('a')
  - Long : y('e')'ko' MMMM'ren' d('a')
  - Full : y('e')'ko' MMMM'ren' d('a'), EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss (z)
  - Full : HH:mm:ss (zzzz)

-}
eu : Locale
eu =
    Locale Internal.Generated.eu
