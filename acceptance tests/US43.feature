Feature: US43 Métodos de descarga
    Como usuario
    quiero acceder a las páginas de descarga
    para poder descargar la aplicación en mi dispositivo movil

Scenario: El usuario ingresa a la sección “Descargas”

Dado que el <usuario> se encuentra en la página web
Cuando el <usuario> haga clic sobre el <boton> Descargas
Entonces el <usuario> será redirigido a la <seccion> donde verá las <plataformas> disponibles para descargar la app

Examples: INPUT
    | usuario | boton |
    | Francisco Valle  | Descargas  |

Examples: OUTPUT
    | sección | plataformas |
    | Página de Descargas | Google Play, App Store, App Gallery  |
