module Cldr.Locale.Pa exposing (pa, pa_Guru)

{-|


# Locales for the Pa language

@docs pa, pa_Guru

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'pa'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa : Locale
pa =
    Locale Internal.Generated.pa


{-| The `Locale` for 'pa-Guru'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa_Guru : Locale
pa_Guru =
    Locale Internal.Generated.pa_Guru
