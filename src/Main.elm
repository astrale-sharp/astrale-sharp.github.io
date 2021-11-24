module Main exposing (main)

import Browser
import Element exposing (DeviceClass(..))
import Types exposing (..)
import View exposing (..)
import Widget exposing (..)


init =
    { page = Home, selected = Just 0 }


update msg model =
    case msg of
        Noop ->
            model

        ChangePage page ->
            { model | page = page, selected = Just (pageToInt page) }


main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }
