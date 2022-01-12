module Cldr.Locale.As exposing (locale_as)

{-|


# Locales for the As language

@docs locale_as

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'as'.

Date format strings:

  - Short : d-M-y
  - Medium : dd-MM-y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h.mm
  - Medium : a h.mm.ss
  - Long : a h.mm.ss z
  - Full : a h.mm.ss zzzz

-}
locale_as : Locale
locale_as =
    Locale Internal.Generated.locale_as
