module Cldr.Locale.My exposing (my)

{-|


# Locales for the My language

@docs my

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'my'.

Date format strings:

  - Short : dd-MM-yy
  - Medium : y- MMM d
  - Long : y- MMMM d
  - Full : y- MMMM d- EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
my : Locale
my =
    Locale Internal.Generated.my
