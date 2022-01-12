module Cldr.Locale.Et exposing (et)

{-|


# Locales for the Et language

@docs et

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'et'.

Date format strings:

  - Short : dd.MM.yy
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
et : Locale
et =
    Locale Internal.Generated.et
