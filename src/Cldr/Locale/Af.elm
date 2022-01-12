module Cldr.Locale.Af exposing (af, af_NA)

{-|


# Locales for the Af language

@docs af, af_NA

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'af'.

Date format strings:

  - Short : y-MM-dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
af : Locale
af =
    Locale Internal.Generated.af


{-| The `Locale` for 'af-NA'.

Date format strings:

  - Short : y-MM-dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE dd MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
af_NA : Locale
af_NA =
    Locale Internal.Generated.af_NA
