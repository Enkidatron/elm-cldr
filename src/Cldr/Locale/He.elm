module Cldr.Locale.He exposing (he)

{-|


# Locales for the He language

@docs he

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'he'.

Date format strings:

  - Short : d.M.y
  - Medium : d בMMM y
  - Long : d בMMMM y
  - Full : EEEE, d בMMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
he : Locale
he =
    Locale Internal.Generated.he
