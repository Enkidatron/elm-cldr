module VerifyExamples.Cldr.Format.DateTime.Format0 exposing (spec0)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Cldr.Format.DateTime exposing (..)
import Cldr.Locale exposing (en)
import Expect
import Test
import Time


spec0 : Test.Test
spec0 =
    Test.test "#format: \n\n    format short en Time.utc (Time.millisToPosix 959829796738)\n    --> \"6/1/00, 3:23 AM\"" <|
        \() ->
            Expect.equal
                (format short en Time.utc (Time.millisToPosix 959829796738))
                "6/1/00, 3:23 AM"
