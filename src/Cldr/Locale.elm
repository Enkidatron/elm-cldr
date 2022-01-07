module Locale exposing
    ( Locale
    , fromString
    , toUnicode
    )

{-|


# Locale

@docs Locale

@docs fromString
@docs toUnicode

-}

import DateFormat exposing (..)
import Internal.Locale
import Internal.Generated


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
toUnicode (Locale.Internal.Locale internal) =
    Locale.Internal.toUnicode internal


{-| Parse a `Locale` from a Unicode or BCP47 identifier.

    import Cldr.Locale.En exposing (en_US)

    fromString "en-US"
    --> Just en_US

-}
fromString : String -> Maybe Locale
fromString =
    Internal.Locale.languageIdFromString
        >> Maybe.andThen Internal.Generated.matchNearestLocale
        >> Maybe.map Internal.Locale.Locale
