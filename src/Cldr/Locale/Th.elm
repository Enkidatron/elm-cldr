module Cldr.Locale.Th exposing (th)

{-|


# Locales for the Th language

@docs th

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'th'.

Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM G y
  - Full : EEEEที่ d MMMM G y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H นาฬิกา mm นาที ss วินาที z
  - Full : H นาฬิกา mm นาที ss วินาที zzzz

-}
th : Locale
th =
    Locale Internal.Generated.th
