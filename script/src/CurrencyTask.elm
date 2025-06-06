module CurrencyTask exposing (task)

import BackendTask exposing (BackendTask)
import BackendTask.File
import Constants exposing (..)
import CurrencyDataInfo exposing (CurrencyDataInfo)
import Dict
import Elm
import Elm.Annotation
import FatalError exposing (FatalError)
import Gen.Dict
import Gen.FormatNumber.Locales
import Pages.Script as Script


task : BackendTask FatalError ()
task =
    readCurrencyFile
        |> BackendTask.andThen writeCurrencyFile


readCurrencyFile : BackendTask FatalError CurrencyDataInfo
readCurrencyFile =
    BackendTask.File.jsonFile CurrencyDataInfo.decoder
        currencyFilePath
        |> BackendTask.allowFatal


writeCurrencyFile : CurrencyDataInfo -> BackendTask FatalError ()
writeCurrencyFile info =
    Script.writeFile
        { path = currencyFilePathOut, body = currencyFile info }
        |> BackendTask.allowFatal


currencyFile : CurrencyDataInfo -> String
currencyFile currencyDataInfo =
    Elm.file [ "Generated", "Currency" ]
        [ decimalsOverrideDeclaration currencyDataInfo ]
        |> .contents


decimalsOverrideDeclaration : CurrencyDataInfo -> Elm.Declaration
decimalsOverrideDeclaration currencyDataInfo =
    Gen.Dict.fromList
        (Dict.toList currencyDataInfo
            |> List.map
                (\( currencyTag, decimals ) ->
                    Elm.tuple
                        (Elm.string currencyTag)
                        (Gen.FormatNumber.Locales.make_.exact (Elm.int decimals))
                )
        )
        |> Elm.withType (Gen.Dict.annotation_.dict Elm.Annotation.string Gen.FormatNumber.Locales.annotation_.decimals)
        |> Elm.declaration "decimalsOverride"
