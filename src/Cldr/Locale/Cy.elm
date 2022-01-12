module Cldr.Locale.Cy exposing (cy)

{-|


# Locales for the Cy language

@docs cy

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'cy'.

Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
cy : Locale
cy =
    Locale Internal.Generated.cy
