module Cldr.Locale.Zu exposing (zu)

{-|


# Locales for the Zu language

@docs zu

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'zu'.

Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
zu : Locale
zu =
    Locale Internal.Generated.zu
