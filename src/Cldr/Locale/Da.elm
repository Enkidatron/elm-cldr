module Cldr.Locale.Da exposing (da, da_GL)

{-|


# Locales for the Da language

@docs da, da_GL

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'da'.

Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da : Locale
da =
    Locale Internal.Generated.da


{-| The `Locale` for 'da-GL'.

Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da_GL : Locale
da_GL =
    Locale Internal.Generated.da_GL
