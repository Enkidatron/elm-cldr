module Static exposing (main)

import Browser
import Cldr.Format.Date
import Cldr.Format.DateTime
import Cldr.Format.Length exposing (Length(..))
import Cldr.Locale exposing (Locale)
import Date exposing (Date)
import Html exposing (Html)
import Task
import Time exposing (Posix)


{-| Build this example with `elm make Static.elm --output=./build/static.js`,
then load ./build.static.html
-}
main : Program () Model Msg
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
    }


type Msg
    = RxToday Date
    | RxNow Posix
    | RxTimeZone Time.Zone


init : () -> ( Model, Cmd Msg )
init flags =
    ( { today = Nothing
      , now = Nothing
      , timeZone = Nothing
      }
    , Cmd.batch
        [ Task.perform RxToday Date.today
        , Task.perform RxNow Time.now
        , Task.perform RxTimeZone Time.here
        ]
    )



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


locale : Locale
locale =
    Cldr.Locale.en


view : Model -> Html Msg
view model =
    Html.div []
        [ Html.div []
            [ Html.text "Locale: "
            , Html.text (Cldr.Locale.toUnicode locale)
            ]
        , Html.div []
            [ Html.text "Today - Short: "
            , Maybe.map (Cldr.Format.Date.format (Cldr.Format.Date.WithLength Short) locale) model.today
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Today - Medium: "
            , Maybe.map (Cldr.Format.Date.format (Cldr.Format.Date.WithLength Medium) locale) model.today
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Today - Long: "
            , Maybe.map (Cldr.Format.Date.format (Cldr.Format.Date.WithLength Long) locale) model.today
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Today - Full: "
            , Maybe.map (Cldr.Format.Date.format (Cldr.Format.Date.WithLength Full) locale) model.today
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Now - Short: "
            , Maybe.map2 (Cldr.Format.DateTime.format Cldr.Format.DateTime.short locale) model.timeZone model.now
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Now - Medium: "
            , Maybe.map2 (Cldr.Format.DateTime.format Cldr.Format.DateTime.medium locale) model.timeZone model.now
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Now - Long: "
            , Maybe.map2 (Cldr.Format.DateTime.format Cldr.Format.DateTime.long locale) model.timeZone model.now
                |> Maybe.withDefault ""
                |> Html.text
            ]
        , Html.div []
            [ Html.text "Now - Full: "
            , Maybe.map2 (Cldr.Format.DateTime.format Cldr.Format.DateTime.full locale) model.timeZone model.now
                |> Maybe.withDefault ""
                |> Html.text
            ]
        ]
