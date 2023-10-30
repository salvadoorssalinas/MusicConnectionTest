Feature: Interacciones en publicaciones
    Como usuario
    quiero interactuar en publicaciones 
    para expresar mi opinion a otros usuarios

Scenario: El usuario da me gusta a la publicacion

Dado que el <usuario> está visualizando una publicación
Cuando el <usuario> presione el <boton> de corazón
Entonces el sistema registrará que al usuario “le gustó” la publicación

Example: INPUT
    |usuario| |boton| |Corazon|

Example: OUTPUT
    |usuario| |Lista de reacciones| |"Me encanta"| 

Scenario: El usuario ya no le gusta a la publicacion

Dado que el <usuario> está visualizando una publicación
Y el <usuario> ya “le gustó” la publicación
Cuando el <usuario> presione el <boton> de corazón
Entonces el sistema registrará que al usuario suprimió el “me gusta” en la publicación

Example: INPUT
    |usuario| |boton| |Corazon|

Example: OUTPUT
    |usuario| |Lista de reacciones| |"Me encanta"| 

Scenario: Publicacion de un comentario exitoso

Dado que el <usuario> está visualizando una publicación
Y el <usuario> ingresa a la sección de comentarios
Y el sistema muestra la barra de comentarios
Cuando el <usuario> ingrese un texto en la barra de comentarios
Y el <usuario> presiona el <boton> “Comentar”
Entonces el sistema registrará el comentario dentro de la publicación en la base de datos
Y el sistema ahora mostrará el comentario en la sección de comentarios de la publicación

Example: INPUT
    |usuario| |Espacio de texto| |"Buen video"| |boton| |comentar| 

Example: OUTPUT
    |usuario| |seccion| |comentarios| |boton| |Comentar| |Comentario publicado|

Scenario: Publicacion de un comentario cancelado

Dado que el <usuario> está visualizando una publicación
Y el <usuario> ingresa a la sección de comentarios
Y el sistema muestra la barra de comentarios
Cuando el <usuario> ingrese un texto en la barra de comentarios
Y el <usuario> presiona el <boton> “Cancelar”
Entonces el sistema suprimirá el texto ingresado en la barra de comentarios
Y el sistema anulará el proceso de publicación del comentario

Example: INPUT
    |usuario| |Espacio de texto| |"Buen video"| |boton| |cancelar|

Example: OUTPUT
    |usuario| |seccion| |comentarios| |boton| |Cancelar| |¿Desea cancelar el comentario?| |Comentario cancelado|