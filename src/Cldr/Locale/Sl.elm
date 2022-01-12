module Cldr.Locale.Sl exposing (sl)

{-|


# Locales for the Sl language

@docs sl

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'sl'.

Date format strings:

  - Short : d. MM. yy
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sl : Locale
sl =
    Locale Internal.Generated.sl
