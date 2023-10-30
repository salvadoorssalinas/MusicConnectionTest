Feature: Personalizacion de rasgos
    Como usuario
    quiero tener la opcion de personalizar los datos de caracteristicas sobre mi
    para mostrar mis principales intereses musicales

Scenario: Personalizar rasgos de forma exitosa

Dado que el <usuario> se encuentra en la pantalla de personalizacion de perfil
Y el <usuario> presiona el <boton> rasgos
Cuando el sistema muestre los formularios sobre las caracteristicas de rol musical, instrumento y genero favorito
Y el <usuario> complete los formularios
Y el <usuario> presione el <boton> aceptar
Y el sistema valide que los valores ingresados son validos
Entonces el sistema registrara los cambios en las caracteristicas en la base de datos
Y el sistema hará visibles las características en el perfil
Y el sistema utilizará las características para hacer recomendaciones

Example: INPUT
    |usuario| |boton| |formularios| |boton|

Example: OUTPUT
    |usuario| |personalizacion de perfil| |boton| |rasgos| |formularios| |aceptar|
    |Cambios registrados exitosamente|

    
Scenario: Cancelar la personalizacion de rasgos

Dado que el <usuario> se encuentra en la pantalla de personalización de perfil
Y el <usuario> presiona el <boton> rasgos
Cuando el sistema muestre los formularios sobre las características de rol musical, instrumento y género favorito.
Y el usuario presione el <boton> cancelar
Y el sistema le pregunte si realmente desea cancelar
Y el <usuario> presione el <boton> cancelar
Entonces el sistema cancelará el proceso de personalización de rasgos

Example: INPUT
    |usuario| |boton| |formularios| |boton|

Example: OUTPUT
    |usuario| |personalizacion de perfil| |boton| |rasgos| |formularios| |cancelar|
    |Desea cancelar?| |Cancelar|
