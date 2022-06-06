module DynamicBasic exposing (main)

import Browser
import Cldr.Format.Date
import Cldr.Format.DateTime
import Cldr.Format.Length exposing (Length(..))
import Cldr.Locale exposing (Locale)
import Date exposing (Date)
import Html exposing (Html)
import Json.Decode as JD exposing (Decoder)
import Json.Encode exposing (Value)
import Task
import Time exposing (Posix)


{-| Build this example with `elm make Dyanmic.elm --output=./build/dynamic.js`,
then load ./build.dynamic.html
-}
main : Program Value Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }


type alias Model =
    { today : Maybe Date
    , now : Maybe Posix
    , timeZone : Maybe Time.Zone
    , locale : Maybe Locale
    }


type Msg
    = RxToday Date
    | RxNow Posix
    | RxTimeZone Time.Zone


init : Value -> ( Model, Cmd Msg )
init flags =
    ( { today = Nothing
      , now = Nothing
      , timeZone = Nothing
      , locale = JD.decodeValue localeFlagDecoder flags |> Result.toMaybe |> Maybe.andThen identity
      }
    , Cmd.batch
        [ Task.perform RxToday Date.today
        , Task.perform RxNow Time.now
        , Task.perform RxTimeZone Time.here
        ]
    )


localeFlagDecoder : Decoder (Maybe Locale)
localeFlagDecoder =
    JD.field "locale" JD.string
        |> JD.map (Cldr.Locale.fromString Cldr.Locale.basicLocales)



-- update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RxToday today ->
            ( { model | today = Just today }, Cmd.none )

        RxNow now ->
            ( { model | now = Just now }, Cmd.none )

        RxTimeZone timeZone ->
            ( { model | timeZone = Just timeZone }, Cmd.none )



-- view


view : Model -> Html Msg
view model =
    Html.div []
        [ Html.div []
            [ Html.text "Locale: "
            , Maybe.map Cldr.Locale.toUnicode model.locale
                |> Maybe.withDefault "Could not decode or parse locale"
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Today - Short: "
            , Maybe.map2 (Cldr.Format.Date.format (Cldr.Format.Date.WithLength Short)) model.locale model.today
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Today - Medium: "
            , Maybe.map2 (Cldr.Format.Date.format (Cldr.Format.Date.WithLength Medium)) model.locale model.today
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Today - Long: "
            , Maybe.map2 (Cldr.Format.Date.format (Cldr.Format.Date.WithLength Long)) model.locale model.today
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Today - Full: "
            , Maybe.map2 (Cldr.Format.Date.format (Cldr.Format.Date.WithLength Full)) model.locale model.today
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Now - Short: "
            , Maybe.map3 (Cldr.Format.DateTime.format Cldr.Format.DateTime.short) model.locale model.timeZone model.now
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Now - Medium: "
            , Maybe.map3 (Cldr.Format.DateTime.format Cldr.Format.DateTime.medium) model.locale model.timeZone model.now
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Now - Long: "
            , Maybe.map3 (Cldr.Format.DateTime.format Cldr.Format.DateTime.long) model.locale model.timeZone model.now
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Now - Full: "
            , Maybe.map3 (Cldr.Format.DateTime.format Cldr.Format.DateTime.full) model.locale model.timeZone model.now
                |> Maybe.withDefault ""
                |> Html.text
            ]
        ]
