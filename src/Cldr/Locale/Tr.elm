module Cldr.Locale.Tr exposing (tr, tr_CY)

{-|


# Locales for the Tr language

@docs tr, tr_CY

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'tr'.

Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
tr : Locale
tr =
    Locale Internal.Generated.tr


{-| The `Locale` for 'tr-CY'.

Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
tr_CY : Locale
tr_CY =
    Locale Internal.Generated.tr_CY
