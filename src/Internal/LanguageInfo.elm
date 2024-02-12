module Internal.LanguageInfo exposing (..)

import Dict exposing (Dict)
import FormatNumber.Locales
import Internal.DayPeriodRule exposing (DayPeriodRule)
import Internal.Structures exposing (EraNames, MonthNames, Pattern3, Patterns, PeriodNames, WeekdayNames)


type alias DayPeriodsInfo =
    Dict String (List DayPeriodRule)


type alias LanguageInfo =
    { language : String
    , script : Maybe String
    , territory : Maybe String
    , variant : Maybe String
    , periodNames : Pattern3 PeriodNames
    , datePatterns : Patterns String
    , monthFormatNames : Pattern3 MonthNames
    , monthStandaloneNames : Pattern3 MonthNames
    , weekdayFormatNames : Pattern3 WeekdayNames
    , weekdayStandaloneNames : Pattern3 WeekdayNames
    , eraNames : Pattern3 EraNames
    , timePatterns : Patterns String
    , dateTimePatterns : Patterns String
    , availableFormats : List ( String, String )
    , timeSkeletons : Patterns String
    , decimalNumberFormat : FormatNumber.Locales.Locale
    , currencyNumberFormat : FormatNumber.Locales.Locale
    , percentNumberFormat : FormatNumber.Locales.Locale
    , currencySymbols : List ( String, String )
    }


type alias Compact =
    { language : String
    , script : Maybe String
    , territory : Maybe String
    , variant : Maybe String
    , periodNames : Pattern3 PeriodNames
    , datePatterns : Patterns String
    , monthFormatNames : Pattern3 MonthNames
    , monthStandaloneNames : Maybe (Pattern3 MonthNames)
    , weekdayFormatNames : Pattern3 WeekdayNames
    , weekdayStandaloneNames : Maybe (Pattern3 WeekdayNames)
    , eraNames : Pattern3 EraNames
    , timePatterns : Patterns String
    , dateTimePatterns : Patterns String
    , availableFormats : List ( String, String )
    , timeSkeletons : Patterns String
    , decimalNumberFormat : FormatNumber.Locales.Locale
    , currencyNumberFormat : FormatNumber.Locales.Locale
    , percentNumberFormat : FormatNumber.Locales.Locale
    , currencySymbols : List ( String, String )
    }


compact : LanguageInfo -> Compact
compact info =
    { language = info.language
    , script = info.script
    , territory = info.territory
    , variant = info.variant
    , periodNames = info.periodNames
    , datePatterns = info.datePatterns
    , monthFormatNames = info.monthFormatNames
    , monthStandaloneNames =
        if info.monthFormatNames == info.monthStandaloneNames then
            Nothing

        else
            Just info.monthStandaloneNames
    , weekdayFormatNames = info.weekdayFormatNames
    , weekdayStandaloneNames =
        if info.weekdayFormatNames == info.weekdayStandaloneNames then
            Nothing

        else
            Just info.weekdayStandaloneNames
    , eraNames = info.eraNames
    , timePatterns = info.timePatterns
    , dateTimePatterns = info.dateTimePatterns
    , availableFormats = info.availableFormats
    , timeSkeletons = info.timeSkeletons
    , decimalNumberFormat = info.decimalNumberFormat
    , currencyNumberFormat = info.currencyNumberFormat
    , percentNumberFormat = info.percentNumberFormat
    , currencySymbols = info.currencySymbols
    }


expand : Compact -> LanguageInfo
expand info =
    { language = info.language
    , script = info.script
    , territory = info.territory
    , variant = info.variant
    , periodNames = info.periodNames
    , datePatterns = info.datePatterns
    , monthFormatNames = info.monthFormatNames
    , monthStandaloneNames = Maybe.withDefault info.monthFormatNames info.monthStandaloneNames
    , weekdayFormatNames = info.weekdayFormatNames
    , weekdayStandaloneNames = Maybe.withDefault info.weekdayFormatNames info.weekdayStandaloneNames
    , eraNames = info.eraNames
    , timePatterns = info.timePatterns
    , dateTimePatterns = info.dateTimePatterns
    , availableFormats = info.availableFormats
    , timeSkeletons = info.timeSkeletons
    , decimalNumberFormat = info.decimalNumberFormat
    , currencyNumberFormat = info.currencyNumberFormat
    , percentNumberFormat = info.percentNumberFormat
    , currencySymbols = info.currencySymbols
    }
