Feature: Publicar contenido como historia 
    Como usuario 
    quiero publicar imagenes y videos en mi perfil como una historia 
    para compartir contenido durante 24 historias

Scenario: Publicacion de historia exitosa

Dado que el <usuario> ha cargado un archivo válido verificado por el sistema
Y el sistema le permite poner una descripción, etiqueta, ubicación y hashtags
Cuando el <usuario> haya terminado de editar su historia según sus preferencias
Y el <usuario> presione el <boton> “Subir como Historia”
Entonces el sistema registrará la historia en la base de datos
Y el <usuario> podrá visualizar su publicación en su perfil durante 24 horas
Y el sistema establecerá la historia como privada luego de 24 horas

Example: INPUT
    |usuario| |seleccion de archivos| |#JuevesdePavita| |boton| |Subir como historia| 

Example: OUTPUT
    |usuario| |Lista de archivos| |Caja de descripción| |Edicion de historia| |Historia publicada exitosamente|


Scenario: Publicacion de historia cancelada

Dado que el <usuario> ha cargado un archivo válido verificado por el sistema
Y el sistema le permite poner una descripción, etiqueta, ubicación y hashtags
Cuando el <usuario> presione el <boton> “Cancelar”
Y el sistema le pregunte si realmente desea cancelar
Y el <usuario> presione el <boton> “Sí, deseo cancelar”
Entonces el sistema suprimirá los archivos subidos por el <usuario>
Y el sistema anulará el proceso de publicación de historia

Example: INPUT
    |usuario| |seleccion de archivos| |#JuevesdePavita| |boton| |Cancelar| 

Example: OUTPUT
    |usuario| |Lista de archivos| |Caja de descripción| |Edicion de historia| |¿Desea descartar la historia?| |Historia cancelada|

