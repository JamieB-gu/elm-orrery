module Main exposing (..)

import Browser
import Time
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (style)
import Svg exposing (svg, circle)
import Svg.Attributes exposing (viewBox, r, fill, cx, cy)


---- MODEL ----


type alias Model =
    Float


type alias Planet = { distanceFromSun : Float, radius : Int, colour : String }


init : ( Model, Cmd Msg )
init =
    ( 0, Cmd.none )



---- UPDATE ----


type Msg
    = Tick


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
       Tick ->
            ( model + 0.01, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    svg
        [ viewBox "-50 -50 100 100"
        , style "background-color" "#02075d"
        ]
        [ circle [ cx "0", cy "0", r "5", fill "yellow" ] []
        , viewPlanet (Planet 20 3 "coral") model
        ]


viewPlanet : Planet -> Float -> Html Msg
viewPlanet { distanceFromSun, radius, colour } angle =
    let
        (x, y) =
            planetPosition distanceFromSun angle
    in
    circle
        [ cx <| String.fromFloat x
        , cy <| String.fromFloat y
        , r <| String.fromInt radius
        , fill colour
        ]
        []


planetPosition : Float -> Float -> (Float, Float)
planetPosition distanceFromSun angle =
    (distanceFromSun * (cos angle), distanceFromSun * (sin angle))



---- SUBSCRIPTIONS ----

subscriptions : Model -> Sub Msg
subscriptions model =
    Time.every 1 (\_ -> Tick)



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = subscriptions
        }
