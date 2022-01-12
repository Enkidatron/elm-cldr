module Cldr.Locale.Ka exposing (ka)

{-|


# Locales for the Ka language

@docs ka

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'ka'.

Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM. y
  - Long : d MMMM, y
  - Full : EEEE, dd MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ka : Locale
ka =
    Locale Internal.Generated.ka
