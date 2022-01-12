module Cldr.Locale.Ur exposing (ur, ur_IN)

{-|


# Locales for the Ur language

@docs ur, ur_IN

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'ur'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM، y
  - Long : d MMMM، y
  - Full : EEEE، d MMMM، y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ur : Locale
ur =
    Locale Internal.Generated.ur


{-| The `Locale` for 'ur-IN'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM، y
  - Long : d MMMM، y
  - Full : EEEE، d MMMM، y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ur_IN : Locale
ur_IN =
    Locale Internal.Generated.ur_IN
