module GenerateCldr exposing (run)

import AliasTask
import BackendTask exposing (BackendTask)
import CurrencyTask
import DownloadCldr
import LanguageTask
import Pages.Script as Script exposing (Script)


run : Script
run =
    Script.withoutCliOptions
        (BackendTask.doEach
            [ Script.log "Hello. Starting the process for generating new CLDR files."
            , DownloadCldr.downloadAndExtractCldr
            , CurrencyTask.task
            , LanguageTask.task
            , AliasTask.task
            , Script.log "Finished generating new CLDR files. Cleaning up..."
            , Script.log "Creating test cases for verifiable examples..."
            , Script.exec "elm-verify-examples" []
            , Script.log "Formatting..."
            , Script.exec "elm-format" [ "./", "--yes" ]
            , Script.log "Running tests..."
            , Script.exec "elm-test" []
            , Script.log "Done!"
            ]
        )
