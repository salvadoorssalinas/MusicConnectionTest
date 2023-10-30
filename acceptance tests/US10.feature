Feature: Publicar contenido en perfil
    Como usuario
    quiero realizar publicaciones de imagenes y videos en mi perfil 
    para compartir mis intereses a los demas usuarios

Scenario: Realizar publicaciones de forma exitosa

Dado que el <usuario> ha cargado un archivo válido verificado por el sistema
Y el sistema le permite poner una descripción, etiqueta, ubicación y hashtags
Cuando el <usuario> haya terminado de editar su publicación según sus preferencias
Y el <usuario> presione el <boton> “Subir como Publicación”
Entonces el sistema registrará la publicación en la base de datos
Y el <usuario> podrá visualizar su publicación en su perfil

Example: INPUT
    |usuario| |seleccion de archivos| |boton| |Subir como publicacion| 

Example: OUTPUT
    |usuario| |Lista de archivos| |Caja de descripción| |Publicacion realizada con exito|


Scenario: Cancelar proceso de publicacion

Dado que el <usuario> ha cargado un archivo válido verificado por el sistema
Y el sistema le permite poner una descripción, etiqueta, ubicación y hashtags
Cuando el <usuario> presione el <boton> “Cancelar”
Y el sistema le pregunte si realmente desea cancelar
Y el <usuario> presione el <boton> “Sí, deseo cancelar”
Entonces el sistema suprimirá los archivos subidos por el usuario
Y el sistema anulará el proceso de publicación

Example: INPUT
    |usuario| |seleccion de archivos| |boton| |Cancelar publicacion| 

Example: OUTPUT
    |usuario| |Lista de archivos| |Caja de descripción| |¿Desea cancelar publicacion?| |Publicacion cancelada |
