module Cldr.Locale.Am exposing (am)

{-|


# Locales for the Am language

@docs am

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'am'.

Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
am : Locale
am =
    Locale Internal.Generated.am
