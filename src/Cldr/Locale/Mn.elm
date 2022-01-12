module Cldr.Locale.Mn exposing (mn)

{-|


# Locales for the Mn language

@docs mn

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'mn'.

Date format strings:

  - Short : y.MM.dd
  - Medium : y 'оны' MMM'ын' d
  - Long : y 'оны' MMMM'ын' d
  - Full : y 'оны' MMMM'ын' d, EEEE 'гараг'

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss (z)
  - Full : HH:mm:ss (zzzz)

-}
mn : Locale
mn =
    Locale Internal.Generated.mn
