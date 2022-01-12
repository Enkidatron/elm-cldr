module Cldr.Locale.Ms exposing (ms, ms_BN, ms_ID, ms_SG)

{-|


# Locales for the Ms language

@docs ms, ms_BN, ms_ID, ms_SG

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'ms'.

Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms : Locale
ms =
    Locale Internal.Generated.ms


{-| The `Locale` for 'ms-BN'.

Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : dd MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms_BN : Locale
ms_BN =
    Locale Internal.Generated.ms_BN


{-| The `Locale` for 'ms-ID'.

Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
ms_ID : Locale
ms_ID =
    Locale Internal.Generated.ms_ID


{-| The `Locale` for 'ms-SG'.

Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms_SG : Locale
ms_SG =
    Locale Internal.Generated.ms_SG
