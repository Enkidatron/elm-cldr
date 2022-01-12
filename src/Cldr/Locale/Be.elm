module Cldr.Locale.Be exposing (be, be_TARASK)

{-|


# Locales for the Be language

@docs be, be_TARASK

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'be'.

Date format strings:

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be : Locale
be =
    Locale Internal.Generated.be


{-| The `Locale` for 'be-TARASK'.

Date format strings:

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be_TARASK : Locale
be_TARASK =
    Locale Internal.Generated.be_TARASK
