module Cldr.Locale.Mr exposing (mr)

{-|


# Locales for the Mr language

@docs mr

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'mr'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
mr : Locale
mr =
    Locale Internal.Generated.mr
