module Cldr.Locale.Is exposing (is)

{-|


# Locales for the Is language

@docs is

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'is'.

Date format strings:

  - Short : d.M.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
is : Locale
is =
    Locale Internal.Generated.is
