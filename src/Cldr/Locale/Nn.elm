module Cldr.Locale.Nn exposing (nn)

{-|


# Locales for the Nn language

@docs nn

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'nn'.

Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : 'kl'. HH:mm:ss zzzz

-}
nn : Locale
nn =
    Locale Internal.Generated.nn
