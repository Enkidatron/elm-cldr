module Cldr.Locale.Lo exposing (lo)

{-|


# Locales for the Lo language

@docs lo

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'lo'.

Date format strings:

  - Short : d/M/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE ທີ d MMMM G y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H ໂມງ m ນາທີ ss ວິນາທີ z
  - Full : H ໂມງ m ນາທີ ss ວິນາທີ zzzz

-}
lo : Locale
lo =
    Locale Internal.Generated.lo
