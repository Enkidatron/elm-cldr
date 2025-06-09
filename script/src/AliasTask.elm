module AliasTask exposing (task)

import BackendTask exposing (BackendTask)
import BackendTask.File
import Constants exposing (..)
import Dict exposing (Dict)
import Elm
import FatalError exposing (FatalError)
import Gen.Dict
import Json.Decode as JD exposing (Decoder)
import Pages.Script as Script exposing (Script)
import Script.Extra exposing (withMessage)


task : BackendTask FatalError ()
task =
    readAliasFile
        |> BackendTask.andThen writeAliasFile


type alias Aliases =
    { lang : Dict String String
    , script : Dict String String
    , territory : Dict String String
    , variant : Dict String String
    }


decoder : Decoder Aliases
decoder =
    JD.map4 Aliases
        (JD.at [ "supplemental", "metadata", "alias", "languageAlias" ]
            replacementDictDecoder
        )
        (JD.at [ "supplemental", "metadata", "alias", "scriptAlias" ]
            replacementDictDecoder
        )
        (JD.at [ "supplemental", "metadata", "alias", "territoryAlias" ]
            replacementDictDecoder
        )
        (JD.at [ "supplemental", "metadata", "alias", "variantAlias" ]
            replacementDictDecoder
        )


replacementDictDecoder : Decoder (Dict String String)
replacementDictDecoder =
    JD.dict (JD.field "_replacement" JD.string)


readAliasFile : BackendTask FatalError Aliases
readAliasFile =
    BackendTask.File.jsonFile decoder aliasFilePath
        |> BackendTask.allowFatal
        |> withMessage "Reading alias file..."


writeAliasFile : Aliases -> BackendTask FatalError ()
writeAliasFile aliases =
    Script.writeFile
        { path = aliasFilePathOut
        , body = aliasFile aliases
        }
        |> BackendTask.allowFatal
        |> withMessage "Writing alias file..."


aliasFile : Aliases -> String
aliasFile aliases =
    Elm.fileWith [ "Generated", "Alias" ]
        { docs = "Tags have changed over time. These aliases allow backwards compatibility."
        , aliases = []
        }
        (aliasFileDeclarations aliases)
        |> .contents


aliasFileDeclarations : Aliases -> List Elm.Declaration
aliasFileDeclarations aliases =
    [ Elm.declaration "lang" (generateStringDict aliases.lang)
        |> Elm.expose
        |> Elm.withDocumentation "Language tags."
    , Elm.declaration "script" (generateStringDict aliases.script)
        |> Elm.expose
        |> Elm.withDocumentation "Script tags."
    , Elm.declaration "region" (generateStringDict aliases.territory)
        |> Elm.expose
        |> Elm.withDocumentation "Region tags."
    , Elm.declaration "variant" (generateStringDict aliases.variant)
        |> Elm.expose
        |> Elm.withDocumentation "Variant tags."
    ]


generateStringDict : Dict String String -> Elm.Expression
generateStringDict dict =
    Dict.toList dict
        |> List.map (\( k, v ) -> Elm.tuple (Elm.string k) (Elm.string v))
        |> Gen.Dict.fromList
