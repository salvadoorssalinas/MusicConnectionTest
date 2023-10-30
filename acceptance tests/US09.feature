Feature: Cargar contenido para publicar 
    Como usuario 
    quiero subir archivos como imagenes y videos en mi perfil
    para realizar publicaciones e historias

Scenario: Carga exitosa

Dado que el <usuario> se encuentra en su perfil despues de habere registrado
Cuando el <usuario> presione el <boton> + en la esquina superior de la pantalla
Y el <usuario> es redireccionado a escoger un archivo dentro del almacenamiento del dispositivo
Y el <usuario> seleccione un archivo
Entonces el sistema verifica que el archivo seleccionado es válido
Y el sistema permite al usuario utilizar la foto para una publicación

Example: INPUT
    |usuario| |boton| |+| |Seleccionar archivo|

Example: OUTPUT
    |usuario| |seccion| |perfil| |boton| |+| |Lista de archivos| |Carga exitosa|

Scenario: Carga cancelada

Dado que el <usuario> se encuentra en su perfil después de haberse registrado
Cuando el usuario presione el <boton> “+” en la esquina superior de la pantalla
Y el <usuario> es redireccionado a escoger un archivo dentro del almacenamiento del dispositivo
Y el <usuario> seleccione un archivo
Y el sistema verifique que el archivo seleccionado es válido
Y el <usuario> presione el <boton> para retornar
Y el sistema le pregunte si realmente desea cancelar
Y el <usuario> presione el <boton> “Sí, deseo cancelar”
Entonces el sistema cancelará el proceso de carga de archivo

Example: INPUT
    |usuario| |boton| |+| |Seleccionar archivo|

Example: OUTPUT
    |usuario| |seccion| |perfil| |boton| |+| |Lista de archivos| |¿Desea cancelar la carga?| |Se cancelo la carga|
