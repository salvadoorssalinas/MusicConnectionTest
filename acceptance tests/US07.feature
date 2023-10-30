Feature: Establecer foto de perfil
    Como usuario
    quiero establecer una foto de perfil 
    para facilitar mi identificacion en la app

Scenario: Establecimiento de foto perfil exitoso

Dado que el <usuario> se encuentra en la pantalla de personalización de perfil.
Y el <usuario> va a la sección Modificar foto de perfil
Y el <usuario> selecciona la opción Establecer foto de perfil
Y el <usuario> es redireccionado a escoger un archivo dentro del almacenamiento del dispositivo
Y el <usuario> selecciona un archivo
Cuando el sistema valide que el archivo seleccionado es una imagen válida
Y el <usuario> recorte la foto de perfil según su gusto
Y el <usuario> presione el <boton> Aceptar
Entonces el sistema registrará la foto de perfil en la base de datos
Y el <usuario> podrá visualizar la foto elegida en su perfil

Example: INPUT
    |usuario| |opcion| |establecer foto de perfil| |selecciona archivo| |recorte foto de perfil| |boton| |aceptar|

Example: OUTPUT
    |usuario| |seccion| |personalizacion de perfil| |modificar foto de perfil| |Lista de archivos| |Edicion de foto| 
    |¿Guardar cambios?| |Cambio realizado con exito|
 
Scenario: Establecimiento de foto de perfil cancelado

Dado que el <usuario> se encuentra en la pantalla de personalización de perfil.
Y el <usuario> va a la sección Modificar foto de perfil
Y el <usuario> selecciona la opción “Establecer foto de perfil
Y el <usuario> es redireccionado a escoger un archivo dentro del almacenamiento del dispositivo
Y el <usuario> selecciona un archivo
Cuando el sistema valide que el archivo seleccionado es una imagen válida
Y el <usuario> presione el <boton> Cancelar
Y el sistema le pregunte si realmente desea cancelar
Y el <usuario> presione el <boton> Cancelar
Entonces el sistema suprimirá la carga de la imagen

Example: INPUT
    |usuario| |opcion| |establecer foto de perfil| |selecciona archivo| |recorte foto de perfil| |boton||retornar| |boton| |cancelar|

Example: OUTPUT
    |usuario| |seccion| |personalizacion de perfil| |modificar foto de perfil| |Lista de archivos| |Edicion de foto| 
    |¿No desea guardar cambios?| |Cambio cancelado|

