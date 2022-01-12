module Cldr.Locale.Mk exposing (mk)

{-|


# Locales for the Mk language

@docs mk

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'mk'.

Date format strings:

  - Short : d.M.yy
  - Medium : d.M.y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
mk : Locale
mk =
    Locale Internal.Generated.mk
