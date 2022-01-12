module Cldr.Locale.Root exposing (root)

{-|


# Locales for the Root language

@docs root

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'root'.

Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
root : Locale
root =
    Locale Internal.Generated.root
