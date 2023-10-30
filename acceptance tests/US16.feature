Feature: Sugerencia de usuarios por similitudes
    Como usuario
    quiero que la app me haga sugerencias por caracteristicas similares de otros usuarios
    para poder conocer a alguien con el que pueda conectar

Scenario: Seccion de sugerencias de otros usuarios

Dado que el <usuario> se encuentra en la pantalla de inicio
Y el <usuario> ha personalizado sus rasgos de perfil
Cuando el sistema identifique los rasgos en común del usuario con otros usuarios
Entonces el sistema mostrará en la sección “Sugerencias de usuarios” los usuarios que tengan similitudes de rasgos con el <usuario>

Example: INPUT
    |usuario|

Example: OUTPUT
    |usuario| |seccion| |inicio| |Sugerencias de usuarios| |Lista de usuarios|