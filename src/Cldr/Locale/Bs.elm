module Cldr.Locale.Bs exposing (bs, bs_Latn)

{-|


# Locales for the Bs language

@docs bs, bs_Latn

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'bs'.

Date format strings:

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs : Locale
bs =
    Locale Internal.Generated.bs


{-| The `Locale` for 'bs-Latn'.

Date format strings:

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs_Latn : Locale
bs_Latn =
    Locale Internal.Generated.bs_Latn
