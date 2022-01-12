module Cldr.Locale.Sv exposing (sv, sv_AX, sv_FI)

{-|


# Locales for the Sv language

@docs sv, sv_AX, sv_FI

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'sv'.

Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv : Locale
sv =
    Locale Internal.Generated.sv


{-| The `Locale` for 'sv-AX'.

Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv_AX : Locale
sv_AX =
    Locale Internal.Generated.sv_AX


{-| The `Locale` for 'sv-FI'.

Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv_FI : Locale
sv_FI =
    Locale Internal.Generated.sv_FI
