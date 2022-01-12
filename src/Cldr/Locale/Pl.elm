module Cldr.Locale.Pl exposing (pl)

{-|


# Locales for the Pl language

@docs pl

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'pl'.

Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pl : Locale
pl =
    Locale Internal.Generated.pl
