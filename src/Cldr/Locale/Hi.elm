module Cldr.Locale.Hi exposing (hi)

{-|


# Locales for the Hi language

@docs hi

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'hi'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
hi : Locale
hi =
    Locale Internal.Generated.hi
