module Cldr.Locale.No exposing (no)

{-|


# Locales for the No language

@docs no

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'no'.

Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
no : Locale
no =
    Locale Internal.Generated.no
