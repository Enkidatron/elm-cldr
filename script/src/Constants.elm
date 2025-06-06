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


generatedFilenameForLanguage : String -> String
generatedFilenameForLanguage language =
    "./src/Generated/" ++ String.Extra.toTitleCase language ++ ".elm"


generatedFilenameForMainLocale : String
generatedFilenameForMainLocale =
    "./src/Cldr/Locale.elm"
