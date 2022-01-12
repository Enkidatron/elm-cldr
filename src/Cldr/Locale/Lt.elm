module Cldr.Locale.Lt exposing (lt)

{-|


# Locales for the Lt language

@docs lt

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'lt'.

Date format strings:

  - Short : y-MM-dd
  - Medium : y-MM-dd
  - Long : y 'm'. MMMM d 'd'.
  - Full : y 'm'. MMMM d 'd'., EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lt : Locale
lt =
    Locale Internal.Generated.lt
