module Cldr.Locale.Fa exposing (fa, fa_AF)

{-|


# Locales for the Fa language

@docs fa, fa_AF

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'fa'.

Date format strings:

  - Short : y/M/d
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
fa : Locale
fa =
    Locale Internal.Generated.fa


{-| The `Locale` for 'fa-AF'.

Date format strings:

  - Short : y/M/d
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
fa_AF : Locale
fa_AF =
    Locale Internal.Generated.fa_AF
