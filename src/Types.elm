module Types exposing (..)


type Msg
    = Noop
    | ChangePage Page


type Page
    = Home
    | About
    | Class5e
    | Class4e


type alias Model number =
    { page : Page, selected : Maybe number }


pageToInt : Page -> number
pageToInt msg =
    case msg of
        Home ->
            0

        About ->
            1

        Class5e ->
            3

        Class4e ->
            4
