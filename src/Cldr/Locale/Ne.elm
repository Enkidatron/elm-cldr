module Cldr.Locale.Ne exposing (ne, ne_IN)

{-|


# Locales for the Ne language

@docs ne, ne_IN

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'ne'.

Date format strings:

  - Short : yy/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ne : Locale
ne =
    Locale Internal.Generated.ne


{-| The `Locale` for 'ne-IN'.

Date format strings:

  - Short : yy/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ne_IN : Locale
ne_IN =
    Locale Internal.Generated.ne_IN
