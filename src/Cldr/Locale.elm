module Cldr.Locale exposing
    ( Locale
    , fromString
    , allLocales, basicLocales
    , toUnicode
    )

{-|


# Locale

@docs Locale


## Create

@docs fromString
@docs allLocales, basicLocales


## Convert

@docs toUnicode

-}

import DateFormat exposing (..)
import Internal.Generated
import Internal.Locale


{-| Represents the locale to use for formatting.
You can parse a value from JS like `navigator.language` or use hardcoded locales.
-}
type alias Locale =
    Internal.Locale.Locale


{-| Get the [Unicode](https://unicode.org/reports/tr35/#Identifiers) representation of a locale.

    import Locale.En exposing (en_US)

    toUnicode en_US
    --> "en-US"

-}
toUnicode : Locale -> String
toUnicode (Internal.Locale.Locale internal) =
    Internal.Locale.toUnicode internal


{-| Parse a `Locale` from a Unicode or BCP47 identifier.

    import Cldr.Locale.En exposing (en, en_GB)

    fromString basicLocales "en"
    --> Just en

    fromString allLocales "en-GB"
    --> Just en_GB

-}
fromString : List Locale -> String -> Maybe Locale
fromString candidateLocales =
    Internal.Locale.languageIdFromString
        >> Maybe.andThen (Internal.Locale.matchNearestLocale candidateLocales)


{-| A list of every locale listed in the JSON version of the CLDR.
-}
allLocales : List Locale
allLocales =
    List.map Internal.Locale.Locale Internal.Generated.allLocales


{-| A list of every "basic" locale listed in the JSON version of the CLDR.

A "basic" locale is a locale without a region, script, or variant subtag,
such as `en` or `ru`.

-}
basicLocales : List Locale
basicLocales =
    List.map Internal.Locale.Locale Internal.Generated.basicLocales
