Feature: Cierre de sesion de usuario
    Como usuario
    quiero cerrar sesion 
    para poder asegurarme de que mi informacion este protegida cuando no use la app

Scenario: Cerrar sesion exitosamente

Dado que el <usuario> se encuentra en la seccion <configuracion>
Cuando el <usuario> presione el <boton> cerrar sesion
Y el sistema pregunte si realmente desea cerrar sesion 
Y el <usuario> presione el <boton> <cerrar sesion>
Entonces el sistema cerrara la sesion del usuario en la app

Example: INPUT
    |usuario| |boton| |cerrar sesion| |cerrar sesion|

Example: OUTPUT
    |usuario| |seccion| |configuracion| |boton| |cerrar sesion| 
    |aviso de cerrar sesion| |cerrar sesion| |Cierre de sesion exitoso|


Scenario: Cancelar el cierre de sesion

Dado que el <usuario> se encuentra en la seccion <configuracion>
Cuando el <usuario> presione el <boton> cerrar sesion
Y el sistema pregunte si realmente desea cerrar sesion 
Y el <usuario> presione el <boton> <Cancelar>
Entonces el sistema cancelara el proceso de cierre de sesion

Example: INPUT
    |usuario| |boton| |cerrar sesion| |no cerrar sesion|

Example: OUTPUT
    |usuario| |seccion| |configuracion| |boton| |cerrar sesion| 
    |aviso de cerrar sesion| |no cerrar sesion| 