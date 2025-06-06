module CurrencyDataInfo exposing (CurrencyDataInfo, decoder)

import Dict exposing (Dict)
import Json.Decode as JD exposing (Decoder)
import Json.Decode.Extra as JDExtra


type alias CurrencyDataInfo =
    Dict String Int


decoder : Decoder CurrencyDataInfo
decoder =
    JD.at [ "supplemental", "currencyData", "fractions" ]
        (JD.dict
            (JD.field "_digits" JD.string
                |> JD.andThen
                    (String.toInt
                        >> Result.fromMaybe "Cannot parse text as integer"
                        >> JDExtra.fromResult
                    )
            )
        )
