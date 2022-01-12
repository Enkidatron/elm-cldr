module Cldr.Locale.Si exposing (si)

{-|


# Locales for the Si language

@docs si

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'si'.

Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
si : Locale
si =
    Locale Internal.Generated.si
