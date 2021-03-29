module Main exposing (..)

import Browser
import Element exposing (Element, alignRight, centerX, centerY, el, fill, padding, rgb255, row, spacing, text, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Html exposing (Html)


blue : Element.Color
blue =
    Element.rgb255 0 68 204


ceruleanBlue : Element.Color
ceruleanBlue =
    Element.rgb255 0 117 244


greenBlue : Element.Color
greenBlue =
    Element.rgb255 0 210 119


marigold : Element.Color
marigold =
    Element.rgb255 255 192 0


neonRed : Element.Color
neonRed =
    Element.rgb255 255 0 54


cornflower : Element.Color
cornflower =
    Element.rgb255 104 88 255


dark : Element.Color
dark =
    Element.rgb255 24 28 35


charcoalGrey : Element.Color
charcoalGrey =
    Element.rgb255 63 71 85


battleshipGrey : Element.Color
battleshipGrey =
    Element.rgb255 112 121 138


blueyGrey : Element.Color
blueyGrey =
    Element.rgb255 151 159 175


blueGrey : Element.Color
blueGrey =
    Element.rgb255 134 139 149


blueShade : Element.Color
blueShade =
    Element.rgb255 119 163 236


lightBlueGrey : Element.Color
lightBlueGrey =
    Element.rgb255 193 199 210


veryLightBlue : Element.Color
veryLightBlue =
    Element.rgb255 230 232 237


paleGrey : Element.Color
paleGrey =
    Element.rgb255 245 246 248


white : Element.Color
white =
    Element.rgb255 255 255 255


apple : Element.Color
apple =
    Element.rgb255 128 201 60


tangerine : Element.Color
tangerine =
    Element.rgb255 255 144 14


reddishOrange : Element.Color
reddishOrange =
    Element.rgb255 255 96 27


battleShipGrey : Element.Color
battleShipGrey =
    Element.rgb255 112 121 138


rosa : Element.Color
rosa =
    Element.rgb255 255 146 175



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


myButton =
    Input.button
        [ Background.color blue
        , Element.focused
            [ Background.color greenBlue ]
        , padding 30
        ]
        { onPress = Nothing
        , label = text "My Button"
        }


view : Model -> Html Msg
view model =
    Element.layout []
        myRowOfStuff


myRowOfStuff : Element msg
myRowOfStuff =
    row [ width fill, centerY, spacing 30 ]
        [ el [ centerX ] myButton
        , el [ centerX ] myButton
        , myButton
        , myButton
        , el [ alignRight ] myElement
        ]


myElement : Element msg
myElement =
    el
        [ Background.color (rgb255 240 0 245)
        , Font.color (rgb255 255 255 255)
        , Border.rounded 3
        , padding 30
        ]
        (text "stylish!")



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
