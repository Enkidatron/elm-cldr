module VerifyExamples.Cldr.Locale.FromString0 exposing (spec0)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Cldr.Locale exposing (..)
import Cldr.Locale.En exposing (en, en_GB)
import Expect
import Test


spec0 : Test.Test
spec0 =
    Test.test "#fromString: \n\n    fromString allLocales \"en-GB\"\n    --> Just en_GB" <|
        \() ->
            Expect.equal
                (fromString allLocales "en-GB")
                (Just en_GB)
