module Cldr.Locale.Uz exposing (uz, uz_Latn)

{-|


# Locales for the Uz language

@docs uz, uz_Latn

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'uz'.

Date format strings:

  - Short : dd/MM/yy
  - Medium : d-MMM, y
  - Long : d-MMMM, y
  - Full : EEEE, d-MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
uz : Locale
uz =
    Locale Internal.Generated.uz


{-| The `Locale` for 'uz-Latn'.

Date format strings:

  - Short : dd/MM/yy
  - Medium : d-MMM, y
  - Long : d-MMMM, y
  - Full : EEEE, d-MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
uz_Latn : Locale
uz_Latn =
    Locale Internal.Generated.uz_Latn
