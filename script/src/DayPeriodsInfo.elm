module DayPeriodsInfo exposing (DayPeriodsInfo, dayPeriodRuleFunDecoder, dayPeriodRuleSetDecoder, decoder, hourMinuteDecoder)

import Dict exposing (Dict)
import Internal.DayPeriodRule exposing (DayPeriodRule(..))
import Json.Decode as JD exposing (Decoder)
import Json.Decode.Pipeline as JDPipe


type alias DayPeriodsInfo =
    Dict String (List DayPeriodRule)


decoder : Decoder DayPeriodsInfo
decoder =
    JD.at [ "supplemental", "dayPeriodRuleSet" ] <|
        JD.dict dayPeriodRuleSetDecoder


dayPeriodRuleSetDecoder : Decoder (List DayPeriodRule)
dayPeriodRuleSetDecoder =
    JD.keyValuePairs dayPeriodRuleFunDecoder
        |> JD.map (List.map (\( key, function ) -> function key))


dayPeriodRuleFunDecoder : Decoder (String -> DayPeriodRule)
dayPeriodRuleFunDecoder =
    JD.oneOf
        [ JD.succeed At
            |> JDPipe.required "_at" hourMinuteDecoder
        , JD.succeed FromBefore
            |> JDPipe.required "_from" hourMinuteDecoder
            |> JDPipe.required "_before" hourMinuteDecoder
        ]


hourMinuteDecoder : Decoder Internal.DayPeriodRule.HourMinute
hourMinuteDecoder =
    JD.string
        |> JD.map (String.split ":" >> List.map String.toInt)
        |> JD.andThen
            (\maybeNums ->
                case maybeNums of
                    (Just hour) :: (Just minute) :: [] ->
                        JD.succeed ( hour, minute )

                    _ ->
                        JD.fail "Invalid hour:minute value"
            )
