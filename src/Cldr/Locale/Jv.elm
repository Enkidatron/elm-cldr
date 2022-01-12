module Cldr.Locale.Jv exposing (jv)

{-|


# Locales for the Jv language

@docs jv

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'jv'.

Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
jv : Locale
jv =
    Locale Internal.Generated.jv
