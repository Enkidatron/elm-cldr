module Cldr.Locale.Fi exposing (fi)

{-|


# Locales for the Fi language

@docs fi

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'fi'.

Date format strings:

  - Short : d.M.y
  - Medium : d.M.y
  - Long : d. MMMM y
  - Full : cccc d. MMMM y

Time format strings:

  - Short : H.mm
  - Medium : H.mm.ss
  - Long : H.mm.ss z
  - Full : H.mm.ss zzzz

-}
fi : Locale
fi =
    Locale Internal.Generated.fi
