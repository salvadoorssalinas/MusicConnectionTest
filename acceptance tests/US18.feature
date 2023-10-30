Feature: Conectar con otros usuarios
    Como usuario
    quiero poder seguir y ser seguido por otros usuarios 
    para establecer una conexion con los usuarios dentro de la app

Scenario: El usuario sigue a otros usuarios publicos

Dado que el <usuario> se encuentra en el perfil de otro <usuario>
Cuando el <usuario> presione el <boton> Seguir
Entonces el sistema registrará la conexión del <usuario> con el otro <usuario> que acaba de seguir
Y el <usuario> ahora visualizará que está siguiendo al otro <usuario>

Example: INPUT
    |usuario| |boton| |seguir|

Example: OUTPUT
    |usuario| |Perfil| |Juanito Perez| |Siguiendo|

Scenario: El usuario quiere seguir a otro usuario privado

Dado que el <usuario> se encuentra en el perfil de otro <usuario>
Cuando el <usuario> presione el <boton> Seguir
Entonces el sistema registrará la solicitud de seguimiento
Y el <usuario> ahora visualizará que el otro <usuario> ha recibido una solicitud de seguimiento
Y el <usuario> podrá visualizar si su solicitud de seguimiento fue aceptada o rechazada por el otro <usuario>

Example: INPUT
    |usuario| |boton| |seguir|

Example: OUTPUT
    |usuario| |Perfil| |Juanito Perez| |Solicitud enviada| |Juantio acepto tu solicitud|


Scenario: El usuario publico es seguido por otro usuario

Dado que el <usuario> se encuentra registrado en la app
Cuando otro <usuario> ingrese al perfil del <usuario>
Y el otro <usuario> presione el <boton> Seguir
Entonces el sistema registrará la conexión del <usuario> con el otro <usuario> que lo está siguiendo
Y el <usuario> recibirá una notificación de que ha sido seguido por el otro <usuario>

Example: INPUT
    |usuario| 

Example: OUTPUT
    |usuario| |seccion| |notificaciones| |Juanito te empezo a seguir|

Scenario: El usuario privado quiere ser seguido por otro usuario

Dado que el <usuario> se encuentra registrado en la app
Cuando otro <usuario> ingrese al perfil del <usuario>
Y el otro <usuario> presione el <boton> Seguir
Entonces el sistema registrará la solicitud de seguimiento del otro <usuario> hacia el <usuario>
Y el <usuario> recibirá una notificación de que el otro <usuario> le ha enviado una solicitud de seguimiento
Y el <usuario> podrá escoger si desea aceptar o no la solicitud de seguimiento del otro <usuario>

Example: INPUT
    |usuario| 

Example: OUTPUT
    |usuario| |seccion| |notificaciones| |Samara solicito seguirte| |boton| |aceptar|



