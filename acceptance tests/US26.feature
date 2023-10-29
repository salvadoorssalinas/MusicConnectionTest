Feature: Recibir solicitudes de usuarios para unirse a grupo

    Como usuario quiero recibir solicitudes de otros usuarios para unirse a mi grupo 
    para tener privacidad al aceptar solo a los que deseo.

    Scenario: Solicitud recibida aceptada
 Dado que el <usuario> es administrador del grupo
 Y el <usuario> se encuentra en la pantalla del grupo
 Y el <usuario> presiona el <boton Solicitudes de union>
 Cuando el sistema muestre al usuario la <lista de todas las invitaciones de grupo>
 Y el <usuario> presione el <boton para aceptar>
 Entonces el sistema mostrará que <la solicitud fue aceptada correctamente>

 Examples: INPUT
    | usuario | boton Solicitudes de union| boton para aceptar| 
    | Samara Diaz  | "Revisar solicitudes de union"|"Acepto la solicitud de Alessia Romero " | 
 Examples: OUTPUT
    | lista de todas las invitaciones de grupo|la solicitud fue aceptada correctamente|
    | Lira Hidalgo, Natalia Ramirez, Alessia Romero, etc | "La solicitud de Alessia Romero fue aceptada correctamente"|


 
 Scenario: Solicitud recibida rechazada
 Dado que el <usuario> es administrador del grupo
 Y el <usuario> se encuentra en la pantalla del grupo
 Y el <usuario> presiona el <boton Solicitudes de union>
 Cuando el sistema muestre al usuario la <lista de todas las invitaciones de grupo>
 Y el usuario presione el <boton para rechazar>
 Entonces el sistema mostrará que <la invitacion fue rechazada correctamente>

 Examples: INPUT
    | usuario | boton Solicitudes de union| boton para rechazar| 
    | Samara Diaz  | "Revisar solicitudes de union"|"Rechazo la solicitud de Alessia Romero " | 
 Examples: OUTPUT
    | lista de todas las invitaciones de grupo|la solicitud fue rechazada correctamente|
    | Lira Hidalgo, Natalia Ramirez, Alessia Romero, etc | "La solicitud de Alessia Romero fue rechazada correctamente"|



