module Cldr.Locale.Cs exposing (cs)

{-|


# Locales for the Cs language

@docs cs

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'cs'.

Date format strings:

  - Short : dd.MM.yy
  - Medium : d. M. y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
cs : Locale
cs =
    Locale Internal.Generated.cs
