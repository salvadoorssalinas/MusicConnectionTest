Feature: US44 Compatible con varios dispositivos
    Como usuario
    quiero que la página web sea responsive
    para visualizarla desde el dispositivo de mi preferencia

Scenario: El usuario ingresa a la página responsive

Dado que el <usuario> se encuentra en su <dispositivo> de preferencia
Cuando el <usuario> ingrese a la página web
Entonces el <usuario> visualizará la <pagina web responsive> que se acomoda al <tamano> de su <dispositivo>

Examples: INPUT
    | usuario | dispositivo | tamano  |
    | Manuel Vega  | iPhone 14  | 393 x 852 px  |

Examples: OUTPUT
    | pagina |
    | Pagina de Inicio |
