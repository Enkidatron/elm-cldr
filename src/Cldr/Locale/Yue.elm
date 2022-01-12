module Cldr.Locale.Yue exposing (yue, yue_Hant)

{-|


# Locales for the Yue language

@docs yue, yue_Hant

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'yue'.

Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日 EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
yue : Locale
yue =
    Locale Internal.Generated.yue


{-| The `Locale` for 'yue-Hant'.

Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日 EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
yue_Hant : Locale
yue_Hant =
    Locale Internal.Generated.yue_Hant
