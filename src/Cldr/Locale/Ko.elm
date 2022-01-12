module Cldr.Locale.Ko exposing (ko, ko_KP)

{-|


# Locales for the Ko language

@docs ko, ko_KP

-}

import Internal.Generated
import Internal.Locale exposing (Locale(..))


{-| The `Locale` for 'ko'.

Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 M월 d일
  - Full : y년 M월 d일 EEEE

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h시 m분 s초 z
  - Full : a h시 m분 s초 zzzz

-}
ko : Locale
ko =
    Locale Internal.Generated.ko


{-| The `Locale` for 'ko-KP'.

Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 M월 d일
  - Full : y년 M월 d일 EEEE

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h시 m분 s초 z
  - Full : a h시 m분 s초 zzzz

-}
ko_KP : Locale
ko_KP =
    Locale Internal.Generated.ko_KP
