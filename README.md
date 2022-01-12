# elm-cldr

This Elm packages provides locale-aware formatting of [`Date`][datePackage]s and [`time`][timePackage]s. Formats for each locale are taken from the [Unicode CLDR Project][cldr]. It is intended to be accessible to developers who are familiar with the JS `Intl` API. 

[datePackage]: https://package.elm-lang.org/packages/justinmimbs/date/latest/Date
[timePackage]: https://package.elm-lang.org/packages/elm/time/latest
[cldr]: https://cldr.unicode.org/index

## Installation

```sh
elm install enkidatron/elm-cldr
```


## Overview
- Parse a `Locale` from a locale identifier string to store in your `Model`: [`fromString`][fromString]
- Or choose a hardcoded date, such as [`en`][en]
- Format a `Date` from [`justinmimbs/date`][datePackage]: [`Format.Date.format`][dateFormat]
- Format a `Posix` from [`elm/time`][timePackage]: [`Format.DateTime.format`][dateTimeFormat]

[fromString]: Cldr/Locale#fromString
[en]: Cldr/Locale/En#en
[dateFormat]: Cldr/Format/Date#format
[dateTimeFormat]: Cldr/Format/DateTime#format

## Examples

See `examples` directory for full examples. 

### Use a dynamic Locale
```elm
import Cldr.Format.Date
import Cldr.Format.Length exposing (Length(..))
import Cldr.Locale
import Cldr.Locale.En exposing (en)
import Date
import Time

localeStringFromFlags = "ru"

locale = Cldr.Locale.fromString Cldr.Locale.allLocales localeStringFromFlags

date = Date.fromCalendarDate 2022 Time.Jan 10

formatted = Cldr.Format.Date.format Short (Maybe.withDefault en locale) date
```
