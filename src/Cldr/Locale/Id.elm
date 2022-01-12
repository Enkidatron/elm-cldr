module Cldr.Locale.Id exposing (id)

{-|


# Locales for the Id language

@docs id

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'id'.

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
id : Locale
id =
    Locale Internal.Generated.id
