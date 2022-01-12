module Cldr.Locale.Or exposing (or)

{-|


# Locales for the Or language

@docs or

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'or'.

Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
or : Locale
or =
    Locale Internal.Generated.or
