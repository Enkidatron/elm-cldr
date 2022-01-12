module Cldr.Locale.Ps exposing (ps, ps_PK)

{-|


# Locales for the Ps language

@docs ps, ps_PK

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'ps'.

Date format strings:

  - Short : y/M/d
  - Medium : y MMM d
  - Long : د y د MMMM d
  - Full : EEEE د y د MMMM d

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
ps : Locale
ps =
    Locale Internal.Generated.ps


{-| The `Locale` for 'ps-PK'.

Date format strings:

  - Short : y/M/d
  - Medium : y MMM d
  - Long : د y د MMMM d
  - Full : EEEE د y د MMMM d

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ps_PK : Locale
ps_PK =
    Locale Internal.Generated.ps_PK
