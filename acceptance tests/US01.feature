Feature: Registro de usuario
    Como usuario
    quiero registrarme con mi información personal
    para tener mi cuenta propia en la aplicación

Scenario: Registrar nuevo usuario con correo electronico exitosa

Dado que el <usuario> se encuentra en la pantalla de <registro> de la app
Y el sistema muestra los <formularios> de <correo electronico>, <nombre de usuario> y contraseña 
Y el sistema muestra los <botones> para enlazar con una cuenta externa de Google, Facebook y Apple
Cuando el <usuario> llene los <formularios>
Y el sistema valide la información recibida
Entonces el sistema registrará la información del <usuario> nuevo en la base de datos
Y el sistema enviará un correo de confirmación al correo electónico registrado

Example: INPUT
    |usuario| |correo electronico| |nombre| |contraseña|
    |Samara Diaz| |samara293@gmail.com| |Samara| |*******|

Example: OUTPUT
    |seccion| |registro| |formularios|
    |botones| |Google| |Facebook| |Apple| |Se envio un correo de confirmacion a su correo|


Scenario: Regsitrar nuevo usuario con cuenta externa

Dado que el <usuario> se encuentra en la pantalla de registro de app
Y el sistema muestra los <formularios> de <correo electronico>, <nombre de usuario> y contraseña 
Y el sistema muestra los botones para enlazar con una cuenta externa de Google, Facebook y Apple
Cuando el <usuario> presione el <boton> para enlazar con una externa
Y el sistema redireccione al <usuario> a iniciar sesion en la cuenta externa
Y el sistema valide que se haya iniciado sesion correctamente en la cuenta externa
Entonces el sistema registrara la informacion del usuario en la base de datos

Example: INPUT
    |usuario| |formulario|
    |botones| |Registro con cuenta externa|
    |Validacion|

Example: OUTPUT
    |seccion| |registro| |formularios|
    |botones| |Google| |Facebook| |Apple| |Direccionando a registro con cuenta externa| |Validacion exitosa|