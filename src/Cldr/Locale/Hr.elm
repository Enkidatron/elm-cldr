module Cldr.Locale.Hr exposing (hr, hr_BA)

{-|


# Locales for the Hr language

@docs hr, hr_BA

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'hr'.

Date format strings:

  - Short : dd. MM. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr : Locale
hr =
    Locale Internal.Generated.hr


{-| The `Locale` for 'hr-BA'.

Date format strings:

  - Short : d. M. yy.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr_BA : Locale
hr_BA =
    Locale Internal.Generated.hr_BA
