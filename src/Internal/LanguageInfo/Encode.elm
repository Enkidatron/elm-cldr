module Internal.LanguageInfo.Encode exposing (encode)

import Dict
import FormatNumber.Locales
import Internal.LanguageInfo exposing (Compact)
import Internal.Structures exposing (EraNames, MonthNames, Pattern3, Patterns, PeriodNames, WeekdayNames)


encode : Compact -> String
encode info =
    String.concat
        [ info.language
        , "|"
        , Maybe.withDefault "" info.script
        , "|"
        , Maybe.withDefault "" info.territory
        , "|"
        , Maybe.withDefault "" info.variant
        , "|"
        , encodePattern3 encodePeriodNames info.periodNames
        , encodePatterns pipeEndedString info.datePatterns
        , encodePattern3 encodeMonthNames info.monthFormatNames
        , encodeMaybe (encodePattern3 encodeMonthNames) info.monthStandaloneNames
        , encodePattern3 encodeWeekdayNames info.weekdayFormatNames
        , encodeMaybe (encodePattern3 encodeWeekdayNames) info.weekdayStandaloneNames
        , encodePattern3 encodeEraNames info.eraNames
        , encodePatterns pipeEndedString info.timePatterns
        , encodePatterns pipeEndedString info.dateTimePatterns
        , encodeListOfPairsOfString info.availableFormats
        , encodePatterns pipeEndedString info.timeSkeletons
        , encodeNumberFormat info.decimalNumberFormat
        , encodeNumberFormat info.currencyNumberFormat
        , encodeNumberFormat info.percentNumberFormat
        , encodeListOfPairsOfString info.currencySymbols
        ]


encodePattern3 : (a -> String) -> Pattern3 a -> String
encodePattern3 fun pattern =
    String.concat
        [ fun pattern.abbreviated
        , fun pattern.wide
        , fun pattern.narrow
        ]


encodePeriodNames : PeriodNames -> String
encodePeriodNames { am, pm, dayPeriods } =
    String.join "|"
        [ am
        , pm
        , encodeListOfPairsOfString (Dict.toList dayPeriods)
        ]


encodeListOfPairsOfString : List ( String, String ) -> String
encodeListOfPairsOfString list =
    String.concat
        [ String.fromInt (List.length list)
        , "|"
        , List.map (\( first, second ) -> String.concat [ first, "|", second, "|" ]) list |> String.concat
        ]


encodePatterns : (a -> String) -> Patterns a -> String
encodePatterns fun pattern =
    String.concat
        [ fun pattern.short
        , fun pattern.medium
        , fun pattern.long
        , fun pattern.full
        ]


pipeEndedString : String -> String
pipeEndedString words =
    words ++ "|"


encodeMonthNames : MonthNames -> String
encodeMonthNames months =
    [ months.jan
    , months.feb
    , months.mar
    , months.apr
    , months.may
    , months.jun
    , months.jul
    , months.aug
    , months.sep
    , months.oct
    , months.nov
    , months.dec
    ]
        |> List.map pipeEndedString
        |> String.concat


encodeMaybe : (a -> String) -> Maybe a -> String
encodeMaybe inner maybeItem =
    case maybeItem of
        Nothing ->
            "0|"

        Just item ->
            "1|" ++ inner item


encodeWeekdayNames : WeekdayNames -> String
encodeWeekdayNames week =
    [ week.sun
    , week.mon
    , week.tue
    , week.wed
    , week.thu
    , week.fri
    , week.sat
    ]
        |> List.map pipeEndedString
        |> String.concat


encodeEraNames : EraNames -> String
encodeEraNames eras =
    [ eras.bc
    , eras.ad
    ]
        |> List.map pipeEndedString
        |> String.concat


encodeNumberFormat : FormatNumber.Locales.Locale -> String
encodeNumberFormat locale =
    String.concat
        [ case locale.decimals of
            FormatNumber.Locales.Min min ->
                "N" ++ String.fromInt min

            FormatNumber.Locales.Max max ->
                "X" ++ String.fromInt max

            FormatNumber.Locales.Exact exact ->
                "E" ++ String.fromInt exact
        , case locale.system of
            FormatNumber.Locales.Western ->
                "W"

            FormatNumber.Locales.Indian ->
                "I"
        , String.join "|"
            [ locale.thousandSeparator
            , locale.decimalSeparator
            , locale.negativePrefix
            , locale.negativeSuffix
            , locale.positivePrefix
            , locale.positiveSuffix
            , locale.zeroPrefix
            , locale.zeroSuffix
            ]
        , "|"
        ]
