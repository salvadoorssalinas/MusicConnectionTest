Feature: Publicar dentro de un grupo

   Como usuario quiero realizar publicaciones dentro de un grupo 
   para compartir contenido con todos los miembros del grupo.


Scenario: Publicación subida 
Dado que el <usuario> se encuentra en la página del grupo
Y el <usuario> presiona el <boton mas>
Cuando el <usuario> suba una <foto o video>
Y el <usuario> edite el <contenido y descripcion>
Y el <usuario> presione <Subir publicacion al grupo>
Entonces el sistema registrará la <publicacion realizada>
Y los miembros del grupo podrán visualizar su publicacion

Examples: INPUT
    | usuario | boton mas| foto o video|contenido y descripcion| Subir publicacion al grupo| 
    | Samara Diaz  |"+"|"Subir video del concierto de the weekend"|"The weekend es un grande" y "Aqui en el estadio de San Marcos disfrutando de buena música"| "Subir la publicación al grupo"| 
 Examples: OUTPUT
    | Publicacion realizada|
    | "¡Tu publicación fue subida! La publicación está visible en el perfil del grupo" | 


Scenario: Publicación cancelada
Dado que el <usuario> se encuentra en la página del grupo
Y el <usuario> presiona el <boton mas>
Cuando el <usuario> suba una <foto o video>
Y el <usuario> presione <Cancelar>
Y el sistema le <pregunte> al <usuario> si realmente desea cancelar
Y el usuario <presione> “Sí, deseo cancelar”
Entonces el sistema cancelará el proceso de subir publicación

Examples: INPUT
    | usuario | boton mas| foto o video|Boton Cancelar| Presione| 
    | Samara Diaz  |"+"|"Subir video del concierto de the weekend"|"Cancelar"| "Sí, cancelar"| 
 Examples: OUTPUT
    | Pregunte|
    | "Sí, deseo cancelar" o "No, deseo cancelar" | 


