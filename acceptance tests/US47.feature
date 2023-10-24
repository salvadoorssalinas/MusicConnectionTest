Feature: US47 Reseñas de otros usuarios
    Como usuario
    quiero ver reseñas de otros usuarios
    para poder confiar en la aplicación

Scenario: El usuario ve reseñas de otros usuario

Dado que el <usuario> quiere conocer sobre la app
Cuando el <usuario> ingrese a la <pagina> web
Entonces el <usuario> podrá visualizar <resenas> positivas sobre la aplicación

Examples: INPUT
    | usuario |
    | Dylan Granados  |

Examples: OUTPUT
    | pagina | resena |
    | Pagina de Inicio | Usuario1: Esta app brinda oportunidades para los jóvenes aspirantes.  |
