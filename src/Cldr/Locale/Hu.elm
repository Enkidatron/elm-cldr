module Cldr.Locale.Hu exposing (hu)

{-|


# Locales for the Hu language

@docs hu

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'hu'.

Date format strings:

  - Short : y. MM. dd.
  - Medium : y. MMM d.
  - Long : y. MMMM d.
  - Full : y. MMMM d., EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
hu : Locale
hu =
    Locale Internal.Generated.hu
