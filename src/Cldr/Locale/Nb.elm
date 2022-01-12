module Cldr.Locale.Nb exposing (nb, nb_SJ)

{-|


# Locales for the Nb language

@docs nb, nb_SJ

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'nb'.

Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nb : Locale
nb =
    Locale Internal.Generated.nb


{-| The `Locale` for 'nb-SJ'.

Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nb_SJ : Locale
nb_SJ =
    Locale Internal.Generated.nb_SJ
