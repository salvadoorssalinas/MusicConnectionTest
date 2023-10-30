Feature: Eliminar foto de perfil
    Como usuario
    quiero eliminar mi foto de perfil 
    para revertir la foto de mi perfil actual

Scenario: Eliminacion de foto de perfil exitosa

Dado que el <usuario> se encuentra en la pantalla de personalización de perfil
Y el <usuario> va a la sección Modificar foto de perfil
Cuando el <usuario> seleccione la opción eliminar foto de perfil
Y el sistema pregunte si realmente desea eliminar su foto de perfil
Y el <usuario> presione el <boton> eliminar foto de perfil
Entonces el sistema eliminará la foto de perfil
Y el sistema mostrará una foto de perfil genérica

Example: INPUT
    |usuario| |opcion| |Eliminar foto de perfil| |boton| |Eliminar foto de perfil|

Example: OUTPUT
    |usuario| |seccion| |personalizacion de perfil| |modificar foto de perfil| |¿Desea eliminar su foto de perfil?|
    |Foto de perfil eliminada exitosamente|

Scenario: Eliminacion de foto de perfil cancelada

Dado que el <usuario> se encuentra en la pantalla de personalización de perfil
Y el <usuario> va a la sección Modificar foto de perfil
Cuando el <usuario> seleccione la opción Eliminar foto de perfil
Y el sistema pregunte si realmente desea Eliminar su foto de perfil
Y el <usuario> presione el <boton> No, cancelar
Entonces el sistema cancelará el proceso de eliminación de foto de perfil

Example: INPUT
    |usuario| |opcion| |Eliminar foto de perfil| |boton| |retornar| |boton| |cancelar|

Example: OUTPUT
    |usuario| |seccion| |personalizacion de perfil| |modificar foto de perfil| |¿Desea eliminar su foto de perfil?|
    |Eliminacion de foto de perfil cancelada|