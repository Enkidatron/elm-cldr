module Script.Extra exposing (..)

import BackendTask exposing (BackendTask)
import FatalError exposing (FatalError)
import Pages.Script as Script


withMessage : String -> BackendTask FatalError a -> BackendTask FatalError a
withMessage message nextTask =
    Script.log message
        |> Script.doThen nextTask
