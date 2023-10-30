Feature: Inicio de sesion de usuario
    Como usuario 
    quiero iniciar sesion con mi cuenta 
    para poder acceder a la aplicacion

Scenario: Inicio de sesion exitoso

Dado que el <usuario> se encuentra en la pantalla de inicio de sesion de la app
Y el sistema muestra los <formularios> de <correo>/<nombre de usuario> y contraseña
Y el sistema muestra los <botones> para enlazar con una cuenta externa de Google, Facebook y Apple
Cuando el <usuario> llene los <formularios> de usuario y contraseña
Y el sistema valide la informacion recibida con la base de datos
Entonces el sistema permitira el acceso a la cuenta

Example: INPUT
    |usuario| |formularios| |botones| 
    |samara293@gmail.com| |*******| |Validar inicio de sesion|
    |Acceso a la cuenta|

Example: OUTPUT
    |usuario||Pantalla de inicio| |formularios|
    |Inicio de sesion exitoso|

Scenario: Inicio de sesion con cuenta externa exitosa

Dado que el <usuario> se encuentra en la pantalla de inicio de sesion de la app
Y el sistema muestra los <formularios> de correo/nombre de usuario y contraseña
Y el sistema muestra los <botones> para enlazar con una cuenta externa de Google, Facebook y Apple
Cuando el <usuario> presione el <boton> para acceder con cuenta externa
Y el sistema redireccione al <usuario> a iniciar sesion en la cuenta externa
Y el sistema valide que se haya iniciado sesion correctamente en la cuenta externa
Y el sistema compruebe la informacion recibida con la base de datos
Entonces el sistema permitira el acceso a la cuenta

Example: INPUT
    |usuario||formularios| 
    |botones| |Inicio de sesion con cuenta externa| |Validar inicio de sesion|
    |Acceso a la cuenta|
Example: OUTPUT
    |usuario||Pantalla de inicio| |formularios|
    |botones| |Google| |Facebook| |Apple| |Iniciando sesion|
    |Inicio de sesion exitoso|