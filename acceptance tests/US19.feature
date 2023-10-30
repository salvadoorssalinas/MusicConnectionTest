Feature: Desconectar con otros usuarios
    Como usuario
    quiero poder dejar de seguir y eliminar a otros usuarios que me sigan 
    para dejar de tener conexion con ellos

Scenario: El usuario deja de seguir a otro usuario

Dado que el <usuario> se encuentra en el perfil de otro <usuario>
Cuando el <usuario> presione el <boton> Dejar de seguir
Entonces el sistema registrará la desconexión del <usuario> con el otro <usuario> que acaba de dejar de seguir
Y el <usuario> ahora visualizará que ya no está siguiendo al otro <usuario>

Example: INPUT
    |usuario| |boton| |dejar de seguir|

Example: OUTPUT
    |usuario| |seccion| |perfil de Juanito| |Dejaste de seguir a Juanito|

Scenario: El usuario quiere eliminar a un seguidor 

Dado que el <usuario> se encuentra en su perfil
Y el <usuario> ingresa a la sección “Seguidores”
Y el sistema muestra un listado de todos los otros usuarios que siguen al <usuario>
Cuando el <usuario> presione el <boton> “Eliminar seguidor” junto a un <usuario> seguidor
Y el sistema le pregunte si realmente desea eliminar al seguidor seleccionado
Y el <usuario> presione el <boton> “Sí, eliminar seguidor”
Entonces el sistema suprimirá al <usuario> dentro del listado de seguidores
Y el <usuario> ahora visualizará que el seguidor que seleccionó ya no aparece como su seguidor

Example: INPUT
    |usuario| |boton| |eliminar| |si, eliminar seguidor|

Example: OUTPUT
    |usuario| |seccion| |perfil||seguidores| |Lista de seguidores de Juanito| |¿Seguro que quieres eliminar a Samara como seguidor?| |seguidor eliminado|

Scenario: El usuario cancela el proceso de eliminar a un seguidor

Dado que el <usuario> se encuentra en su perfil
Y el <usuario> ingresa a la sección “Seguidores”
Y el sistema muestra un listado de todos los otros usuarios que siguen al <usuario>
Cuando el <usuario> presione el <boton> “Eliminar seguidor” junto a un <usuario> seguidor
Y el sistema le pregunte si realmente desea eliminar al seguidor seleccionado
Y el <usuario> presione el <boton> “No, cancelar”
Entonces el sistema anulará el proceso de eliminar seguidor

Example: INPUT
    |usuario| |boton| |eliminar| |no, cancelar|

Example: OUTPUT
    |usuario| |seccion| |perfil||seguidores| |Lista de seguidores de Juanito| |¿Seguro que quieres eliminar a Samara como seguidor?| |Cambios cancelados|