module View exposing (..)

import Color exposing (darkBlue, darkPurple, darkRed, toRgba)
import Element exposing (DeviceClass(..), Element, centerX, height, layout, padding, paragraph, px, rgb, spacing, text, width)
import Element.Background as Background exposing (color)
import Element.Border as Border exposing (glow)
import Element.Events as Events
import Element.Font as F
import Element.Input as Input
import Element.Region exposing (description)
import FontAwesome.Solid as Solid
import FontAwesome.Svg as Svg
import List exposing (length)
import Types exposing (..)
import Widget exposing (..)
import Widget.Icon exposing (elmFontawesome)
import Widget.Material as Material
import Widget.Material.Typography as Typography


view msg =
    layout [ F.color fontColor, color (Element.fromRgb (toRgba (Material.lightGray myPalette))) ]
        (Element.column [ Element.width Element.fill ]
            [ myAppBar msg
            , viewContent msg
            ]
        )


viewContent msg =
    case msg.page of
        Home ->
            viewHome

        About ->
            viewAbout

        Class5e ->
            Element.none

        Class4e ->
            Element.none


viewHome =
    Element.column
        [ Element.width Element.fill
        , color (Element.fromRgb (toRgba (Material.lightGray myPalette)))
        , padding 60
        ]
        [ Element.el Typography.h4 (Element.text "Qu'est-ce qui se passe ici!?")
        , myParagraph
            [ Element.text """ Ce site est en developpement actif
              et tout peut être amené à changer
              à n'importe quel moment... 
              """
            , Element.image [ centerX, padding 50 ]
                { src = "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.uaUEqQ3jDIvr-n3if-A3qAHaEK%26pid%3DApi&f=1"
                , description = "Une belle image du roi lion ou le vilain oncle pas beau dit soyez prêt.e.s ~ écriture inclusive"
                }
            , Element.el [ width (px 1900) ] (Element.text "")
            , Element.text """ Du contenu sera bientôt rajouté dans les sections 5e et 4e."""
            ]
        , Element.el [ width (px 50) ] (Element.text "")
        , Element.el Typography.h4
            (Element.text "Plus de ressource, plus de contenu, plus de FUN.")
        , myParagraph
            [ Element.text """ Programmeuses, programmeurs, la totalité de mon travail est open source
            et disponible sur certains de mes repos git que vous êtes """
            , myLink "cordialement invité à visiter" "https://github.com/astrale-sharp"
            ]
        , godotlink "../equilibre_equation/export/godot.html" "test-godot-online"
        ]


viewAbout =
    Element.column
        [ Element.width Element.fill
        , color (Element.fromRgb (toRgba (Material.lightGray myPalette)))
        , padding 60
        ]
        [ Element.el Typography.h4 (Element.text "Qui suis-je?")
        , myParagraph
            [ Element.text """ Une enseignante trans et dans le placard 
            de l'éducation nationale 🤸🤸🤸."""
            ]
        , myParagraph
            [ Element.text """ 
            Je suis officiellement devenue prof en 2020 et depuis je chéri (ou pas).
            mes privilèges de chienne à la botte de l'état 🙏🙌⭕"""
            ]
        , myParagraph
            [ Element.text """ C'est souvent un peu compliqué.. 
            Je profite de mon arrêt de travail (pour dépression 😉😉😉) pour developper ce site."""
            ]
        , Element.el [ width (px 50) ] (Element.text "")
        , Element.el Typography.h4 (Element.text "Pourquoi ce site?")
        , myParagraph
            [ Element.text " La raison profonde c'est surtout que je me suis passionnée de "
            , myLink "elm" "https://elm-lang.org/"
            , Element.text " et que je fait une petite exploration du côté web de l'internet."
            ]
        , myParagraph
            [ Element.text """
            Ceci dit, je compte en profiter pour parler de 
            différents sujets.. d'Éducation, de programmation, de cul.. 
            (sous reserve que je trouve quelquechose d'interessant à dire bien sûr).
            Je compte aussi y mettre les différentes simulations informatiques, 
            exercices et autres travails que j'ai réalisé des très nombreuses années."""
            ]
        , myParagraph
            [ Element.text """
            Cela va sans dire mais ceci est mon site PERSO 
            et je serai bien embêtée si mes élèves venait à tomber dessus. 🤦\u{200D}♀️🤦\u{200D}♀️🤦\u{200D}♀️"""
            ]
        ]


viewColumn =
    Widget.stringColumn
        { title = ""
        , value = always ""
        , toString = always ""
        , width = Element.px 20
        }


myAppBar msg =
    tabBar (Material.tabBar myPalette)
        { title =
            Element.none
        , menu = myMenu msg
        , deviceClass = Element.Desktop
        , openRightSheet = Nothing
        , openTopSheet = Nothing
        , primaryActions =
            [--     { icon = elmFontawesome Svg.viewIcon Solid.download
             --   , text = "Download"
             --   , onPress = Just Download
             --   }
            ]
        , search = Nothing
        }


myMenu msg =
    { selected = msg.selected
    , options =
        [ { text = "Home", icon = elmFontawesome Svg.viewIcon Solid.home }
        , { text = "About", icon = elmFontawesome Svg.viewIcon Solid.leaf }
        , { text = "6e", icon = elmFontawesome Svg.viewIcon Solid.thermometerEmpty }
        , { text = "5e", icon = elmFontawesome Svg.viewIcon Solid.thermometerQuarter }
        , { text = "4e", icon = elmFontawesome Svg.viewIcon Solid.thermometerHalf }
        , { text = "3e", icon = elmFontawesome Svg.viewIcon Solid.thermometerThreeQuarters }
        ]
    , onSelect =
        \int ->
            case int of
                0 ->
                    Just <| ChangePage Home

                1 ->
                    Just <| ChangePage About

                3 ->
                    Just <| ChangePage Class5e

                4 ->
                    Just <| ChangePage Class4e

                _ ->
                    Nothing
    }


myItemList =
    Widget.itemList (Material.cardColumn myPalette) <|
        [ Widget.headerItem (Material.fullBleedHeader myPalette) "Qu'est-ce qui se passe ici?"
        , Widget.multiLineItem (Material.multiLineItem myPalette)
            { title = ""
            , text = """ Ce site internet est en developpement actif
               et tout peut être amené à changer
               à n'importe quel moment...
               """
            , onPress = Nothing
            , content = always Element.none
            , icon = always Element.none
            }
        ]


viewItems =
    [ Widget.fullBleedItem (Material.fullBleedItem Material.defaultPalette)
        { onPress = Nothing
        , icon = always Element.none
        , text = "Item"
        }
    , Widget.divider (Material.fullBleedDivider Material.defaultPalette)
    , Widget.fullBleedItem (Material.fullBleedItem Material.defaultPalette)
        { onPress = Nothing
        , icon = always Element.none
        , text = "Item"
        }
    ]
        |> Widget.itemList (Material.cardColumn Material.defaultPalette)


myButton =
    button
        (Material.textButton myPalette)
        { text = "Button Text"
        , icon = elmFontawesome Svg.viewIcon Solid.notEqual
        , onPress = Just Noop
        }


myParagraph x =
    paragraph
        ([ padding 15, F.color fontColor ]
            ++ Typography.body1
        )
        -- [ paragraph [ padding 50, Element.Background.color (Element.fromRgb (toRgba myPalette.background)) ]
        x


godotlink : String -> String -> Element.Element msg
godotlink url label =
    Element.newTabLink
        [ F.color <| Element.rgb255 25 130 215
        , F.underline
        ]
        { url = url
        , label =
            text label
        }


myLink : String -> String -> Element.Element msg
myLink label url =
    Element.link
        [ F.color <| Element.rgb255 25 130 2015
        , F.underline
        ]
        { url = url, label = Element.text label }


fontColor =
    Element.fromRgb (toRgba (Material.lightGray Material.defaultPalette))


myPalette =
    let
        pal darkPal =
            { darkPal | primary = darkBlue }
    in
    pal Material.darkPalette
