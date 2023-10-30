Feature: Personalizacion de descripcion en perfil
    Como usuario
    quiero tener la opcion de modificar la descripcion de mi perfil con informacion sobre mi 
    para explicar mas a fondo mi historial musical y objetivos a otros usuarios

Scenario: Guardar la personalizacion de descripcion exitosamnete

Dado que el <usuario> se encuentra en la pantalla de personalización de perfil
Y el sistema muestra el formulario de descripción
Cuando el <usuario> llene el formulario de descripción que desea ingresar, eliminar o modificar como información personal, intereses y objetivos
Y el <usuario> presiona el <boton> Guardar cambios
Entonces el sistema registrará los cambios en la base de datos de usuarios
Y el sistema hará visibles los cambios en la descripción del perfil del <usuario>

Example: INPUT
    |usuario| |Hola me llamo Samara y me gustaria hacer amigos| |boton| |guardar cambios|
    
Example: OUTPUT
    |usuario| |seccion| |personalizacion de perfil| |formulario| |Cambio realizado con exito|

Scenario: Cancelar la personalizacion de descripcion

Dado que el <usuario> se encuentra en la pantalla de personalización de perfil
Y el sistema muestra el formulario de descripción
Cuando el <usuario> llene el formulario de descripción que desea ingresar, eliminar o modificar como información personal, intereses y objetivos
Y el <usuario> presiona el <boton> para retornar
Y el sistema le pregunte si realmente desea cancelar
Y el <usuario> presione el <boton> cancelar
Entonces el sistema cancelará el proceso de modificación de descripción de perfil

Example: INPUT
    |usuario| |Hola me llamo Samara y me gustaria hacer amigos| |boton| |retornar| |boton| |cancelar|
    
Example: OUTPUT
    |usuario| |seccion| |personalizacion de perfil| |formulario| |Desea cancelar| |Cambio cancelado|

