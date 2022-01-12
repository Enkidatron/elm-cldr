module Cldr.Locale.Hy exposing (hy)

{-|


# Locales for the Hy language

@docs hy

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'hy'.

Date format strings:

  - Short : dd.MM.yy
  - Medium : dd MMM, y թ.
  - Long : dd MMMM, y թ.
  - Full : y թ. MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
hy : Locale
hy =
    Locale Internal.Generated.hy
