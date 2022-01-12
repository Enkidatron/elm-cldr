module Cldr.Locale.Sd exposing (sd, sd_Arab)

{-|


# Locales for the Sd language

@docs sd, sd_Arab

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'sd'.

Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd : Locale
sd =
    Locale Internal.Generated.sd


{-| The `Locale` for 'sd-Arab'.

Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd_Arab : Locale
sd_Arab =
    Locale Internal.Generated.sd_Arab
