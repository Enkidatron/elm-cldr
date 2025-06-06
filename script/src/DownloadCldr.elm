module DownloadCldr exposing (downloadAndExtractCldr)

import BackendTask exposing (BackendTask)
import BackendTask.Glob as Glob
import BackendTask.Http
import Constants exposing (cldrVersion)
import FatalError exposing (FatalError)
import Json.Decode as JD
import Pages.Script as Script


downloadAndExtractCldr : BackendTask FatalError ()
downloadAndExtractCldr =
    let
        -- Directory where files will be extracted
        outputDir =
            "./cldr-json-" ++ cldrVersion

        -- URL for the zip file of the specific CLDR version
        zipUrl =
            "https://github.com/unicode-org/cldr-json/archive/refs/tags/" ++ cldrVersion ++ ".zip"
    in
    -- Check if the directory already exists
    Glob.fromString (outputDir ++ "/README.md")
        |> BackendTask.andThen
            (\matches ->
                case matches of
                    [] ->
                        downloadAndExtractZip zipUrl outputDir

                    _ ->
                        Script.log "Directory already exists"
            )


downloadAndExtractZip : String -> String -> BackendTask FatalError ()
downloadAndExtractZip zipUrl outputDir =
    let
        tempZipPath =
            outputDir ++ ".zip"
    in
    BackendTask.doEach
        [ Script.log "Downloading zip file..."
        , Script.exec "curl" [ "-L", zipUrl, "-o", tempZipPath ]
        , Script.log "Extracting zip file..."
        , Script.exec "unzip" [ "-q", tempZipPath, "-d", "./" ]
        , Script.log "Removing zip file..."
        , Script.exec "rm" [ tempZipPath ]
        ]
