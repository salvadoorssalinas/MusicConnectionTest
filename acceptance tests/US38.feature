Feature: US38 Introducción clara
    Como usuario
    quiero ver una introducción clara y atractiva
    para conocer la idea principal de la aplicación

Scenario: El usuario se encuentra en la página de inicio

Dado que el <usuario> ha ingresado a la pagina web
Cuando el sistema muestre la pantalla de <inicio>
Entonces el usuario visualizará la <pagina de inicio> con una <introduccion> breve y clara con textos e imágenes que muestran de qué trata la app

Examples: INPUT
    | usuario |
    | Gianfranco Perez  |

Examples: OUTPUT
    | pagina de inicio | introduccion |
    | Sección de Inicio  | Bienvenido a Music Connection: La App Por y Para Músicos  |
