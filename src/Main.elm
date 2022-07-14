-- https://guide.elm-lang.org/

module Main exposing (..)

import Browser
import Html exposing (Html, button, div, p, input, text)
import Html.Attributes exposing (type_, value)
import Html.Events exposing (onClick, onInput)

main =
    Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model = Int

init : Model
init = 0


-- UPDATE

type Msg = Increment | Decrement | Reset | Input String

update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1
        Decrement ->
            model - 1
        Reset ->
            init
        Input val ->
            case String.toInt val of
                Just newModel -> newModel
                Nothing -> model

-- VIEW

view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , input
            [ value (String.fromInt model)
            , type_ "number"
            , onInput Input ]
            []
        , button [ onClick Increment ] [ text "+" ]
        , button [ onClick Reset ] [ text "Reset" ]
        , p []
            [ text ("Model: " ++ (String.fromInt model)) ]
        ]