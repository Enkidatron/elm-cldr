module Cldr.Locale.Bg exposing (bg)

{-|


# Locales for the Bg language

@docs bg

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'bg'.

Date format strings:

  - Short : d.MM.yy 'г'.
  - Medium : d.MM.y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : H:mm 'ч'.
  - Medium : H:mm:ss 'ч'.
  - Long : H:mm:ss 'ч'. z
  - Full : H:mm:ss 'ч'. zzzz

-}
bg : Locale
bg =
    Locale Internal.Generated.bg
