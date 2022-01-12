module Cldr.Locale.Lv exposing (lv)

{-|


# Locales for the Lv language

@docs lv

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'lv'.

Date format strings:

  - Short : dd.MM.yy
  - Medium : y. 'gada' d. MMM
  - Long : y. 'gada' d. MMMM
  - Full : EEEE, y. 'gada' d. MMMM

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lv : Locale
lv =
    Locale Internal.Generated.lv
