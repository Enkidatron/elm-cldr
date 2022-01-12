module Cldr.Locale.Tk exposing (tk)

{-|


# Locales for the Tk language

@docs tk

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'tk'.

Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
tk : Locale
tk =
    Locale Internal.Generated.tk
