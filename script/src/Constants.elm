module Constants exposing (..)

import String.Extra


cldrVersion : String
cldrVersion =
    "47.0.0"


currencyFilePath : String
currencyFilePath =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-core/supplemental/currencyData.json"


currencyFilePathOut : String
currencyFilePathOut =
    "./src/Generated/Currency.elm"


dayPeriodsFilePath : String
dayPeriodsFilePath =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-core/supplemental/dayPeriods.json"


coverageLevelsFilePath : String
coverageLevelsFilePath =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-core/coverageLevels.json"


gregorianFilePathForLanguage : String -> String
gregorianFilePathForLanguage language =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-dates-full/main/" ++ language ++ "/ca-gregorian.json"


numberFilePathForLanguage : String -> String
numberFilePathForLanguage language =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-numbers-full/main/" ++ language ++ "/numbers.json"


currencyFilePathForLanguage : String -> String
currencyFilePathForLanguage language =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-numbers-full/main/" ++ language ++ "/currencies.json"


unitsFilePathForLanguage : String -> String
unitsFilePathForLanguage language =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-units-full/main/" ++ language ++ "/units.json"


listPatternsFilePathForLanguage : String -> String
listPatternsFilePathForLanguage language =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-misc-full/main/" ++ language ++ "/listPatterns.json"


pluralFilePath : String
pluralFilePath =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-core/supplemental/plurals.json"


generatedFilenameForLanguage : String -> String
generatedFilenameForLanguage language =
    "./src/Generated/" ++ String.Extra.toTitleCase language ++ ".elm"


generatedFilenameForMainLocale : String
generatedFilenameForMainLocale =
    "./src/Cldr/Locale.elm"


aliasFilePath : String
aliasFilePath =
    "cldr-json-" ++ cldrVersion ++ "/cldr-json/cldr-core/supplemental/aliases.json"


aliasFilePathOut : String
aliasFilePathOut =
    "./src/Generated/Alias.elm"
