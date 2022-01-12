module Cldr.Locale.Uk exposing (uk)

{-|


# Locales for the Uk language

@docs uk

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'uk'.

Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y 'р'.
  - Long : d MMMM y 'р'.
  - Full : EEEE, d MMMM y 'р'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
uk : Locale
uk =
    Locale Internal.Generated.uk
