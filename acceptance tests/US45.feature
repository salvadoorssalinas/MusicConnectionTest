Feature: US45 Carga rápida
    Como usuario
    quiero que la página cargue de forma rápida
    para una experiencia de usuario buena y óptima

Scenario: La página carga rápidamente

Dado que el <usuario> quiere conocer sobre la app
Cuando el <usuario> ingrese a la <pagina> web
Entonces el sistema cargará las <imagenes> y <textos> de forma rápida y fluida para acceder de forma inmediata a la <pagina>

Examples: INPUT
    | usuario |
    | Luisa Rios  |

Examples: OUTPUT
    | pagina | imagenes | textos |
    | Pagina de Inicio | imagen comprimida de concierto, imagen comprimida de guitarra | Bienvenido a Music Connection. La App Por y Para Músicos. Music Connection permite... |
