module Cldr.Locale.Gl exposing (gl)

{-|


# Locales for the Gl language

@docs gl

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'gl'.

Date format strings:

  - Short : dd/MM/yy
  - Medium : d 'de' MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
gl : Locale
gl =
    Locale Internal.Generated.gl
