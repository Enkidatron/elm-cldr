module Cldr.Locale.Sq exposing (sq, sq_MK, sq_XK)

{-|


# Locales for the Sq language

@docs sq, sq_MK, sq_XK

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'sq'.

Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a, z
  - Full : h:mm:ss a, zzzz

-}
sq : Locale
sq =
    Locale Internal.Generated.sq


{-| The `Locale` for 'sq-MK'.

Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sq_MK : Locale
sq_MK =
    Locale Internal.Generated.sq_MK


{-| The `Locale` for 'sq-XK'.

Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sq_XK : Locale
sq_XK =
    Locale Internal.Generated.sq_XK
