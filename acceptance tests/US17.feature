Feature: Sugerencia de publicaciones por similitudes
    Como usuario
    quiero que la app me haga sugerencias por caracteristicas similares de publicaciones
    para ver contenido que pueda ser de mi interes

Scenario: Seccion de sugerencias de publicaciones

Dado que el <usuario> se encuentra en la pantalla de inicio
Y el <usuario> ha personalizado sus rasgos de perfil
Cuando el sistema identifique los rasgos en común del <usuario> con otros usuarios
Entonces el sistema mostrará en la sección “Sugerencias de publicaciones” las publicaciones de usuarios que tengan similitudes con el <usuario>

Example: INPUT
    |usuario|

Example: OUTPUT
    |usuario| |seccion| |inicio| |Sugerencias de publicaciones| |Lista de publicaciones|
