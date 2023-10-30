Feature: Modificar enlaces del perfil
    Como usuario
    quiero poder insertar, modificar y eliminar enlaces en mi perfil 
    para que otros usuarios puedan ver mi contenido externo en otras paginas

Scenario: Modificacion de enlaces en perfil de forma exitosa

Dado que el <usuario> se encuentra en la pantalla de personalización de perfil
Y el sistema muestra el formulario de enlaces
Cuando el <usuario> llene el formulario de enlaces con un mínimo de cero enlaces y un máximo de tres enlaces
Y el <usuario> presiona el <boton> Guardar cambios
Y el sistema valide que los enlaces ingresados son válidos
Entonces el sistema registrará los cambios en la base de datos de usuarios
Y el sistema hará visibles los enlaces ingresados en el perfil del <usuario>

Example: INPUT
    |usuario| |www.tiktok/samara777/it89kj| |boton| |guardar cambios|

Example: OUTPUT
    |usuario| |seccion| |personalizacion de perfil| |formulario| |Cambios registrado con exitos|

Scenario: Cancelar el proceso de modificacion de enlaces en perfil

Dado que el <usuario> se encuentra en la pantalla de personalización de perfil
Y el sistema muestra el formulario de enlaces
Cuando el <usuario> presione el <boton> para retornar
Y el sistema le pregunte si realmente desea cancelar
Y el <usuario> presione el <boton> cancelar
Entonces el sistema cancelará el proceso de modificación de enlaces en perfil

Example: INPUT
    |usuario| |www.tiktok/samara777/it89kj| |boton| |retornar| |boton| |cancelar|

Example: OUTPUT
    |usuario| |seccion| |personalizacion de perfil| |formulario| |Desea cancelar| |Cambio cancelado|
