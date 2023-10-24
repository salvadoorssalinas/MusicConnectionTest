Feature: US46 Video de presentación
    Como usuario
    quiero un video de presentación en la página web
    para tener una visión más completa de la app

Scenario: El usuario ve el video de presentación en la página web

Dado que el <usuario> quiere conocer sobre la app
Cuando el <usuario> ingrese a la <pagina> web
Entonces el <usuario> podrá visualizar un <video> de presentación de la app

Examples: INPUT
    | usuario |
    | Diego Carranza  |

Examples: OUTPUT
    | pagina | video |
    | Pagina de Inicio | video About-The-Product  |
