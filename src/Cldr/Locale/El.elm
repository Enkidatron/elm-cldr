module Cldr.Locale.El exposing (el, el_CY)

{-|


# Locales for the El language

@docs el, el_CY

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'el'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el : Locale
el =
    Locale Internal.Generated.el


{-| The `Locale` for 'el-CY'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el_CY : Locale
el_CY =
    Locale Internal.Generated.el_CY
