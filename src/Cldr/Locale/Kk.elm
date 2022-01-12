module Cldr.Locale.Kk exposing (kk)

{-|


# Locales for the Kk language

@docs kk

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'kk'.

Date format strings:

  - Short : dd.MM.yy
  - Medium : y 'ж'. dd MMM
  - Long : y 'ж'. d MMMM
  - Full : y 'ж'. d MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
kk : Locale
kk =
    Locale Internal.Generated.kk
