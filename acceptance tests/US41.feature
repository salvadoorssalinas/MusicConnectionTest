Feature: US41 Información sobre características de la app
    Como usuario
    quiero acceder a información sobre las características
    para conocer todo lo que puedo hacer en la app

Scenario: El usuario ingresa a la sección “Características”

Dado que el <usuario> se encuentra en la página web
Cuando el <usuario> haga clic sobre el <boton> Características
Entonces el <usuario> será redirigido a la <seccion> donde verá las <caracteristicas> de la app

Examples: INPUT
    | usuario | boton |
    | Julio Sanchez  | Caracteristicas  |

Examples: OUTPUT
    | sección | caracteristicas |
    | Página de Caracteristicas | Tarjetas de información de caracteristicas  |
