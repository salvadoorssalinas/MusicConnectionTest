Feature: Unirse a un grupo

    Como usuario quiero poder unirme a un grupo ya existente 
    para compartir con sus miembros y ver su contenido.

 Scenario:  Ingresar a un grupo público
 
 Dado que el <usuario> se encuentra en la pantalla de un grupo
 Cuando el sistema muestre al <usuario> la <lista de todos los grupos por conocer>
 Y el <usuario> presione el <boton unirse>
 Entonces el sistema registrará al <usuario> como miembro del grupo
 Y el <usuario> podrá tener acceso al contenido del grupo

 Examples: INPUT
    | usuario | boton unirse| 
    | Samara Diaz  | "Unirse al grupo "La calle en sus 13"|
 Examples: OUTPUT
    | lista de todos los grupos por conocer|
    | La samba y la bamaba, Reggetoneros por siempre, La calle en sus 13, etc | 


 Scenario:  Solicitud de ingreso enviada a un grupo privado

 Dado que el <usuario> se encuentra en la pantalla de un grupo
 Cuando el <usuario> presione el <boton solicitar unirse>
 Entonces el sistema mostrará que la <solicitud fue enviada correctamente>
 Y el sistema enviará al grupo la solicitud del <usuario>

 Examples: INPUT
    | usuario | boton solicitar unirse| 
    | Samara Diaz  | "Enviar una solicitud de union al grupo "Lirios del metal"|
 Examples: OUTPUT
    |la solicitud fue enviada correctamente|
    | "Samara Díaz, tu solicitud de  fue enviada correctamente"|



 Scenario: Solicitud de ingreso aceptada a un grupo privado

 Dado que el <usuario> envió una solicitud para unirse a un grupo
 Cuando el administrador del grupo acepte la solicitud
 Entonces el sistema notificará al <usuario> que su <solicitud fue aceptada>
 Y el <usuario> podrá tener acceso al contenido del grupo

 Examples: INPUT
    | usuario | 
    | Samara Diaz  | 
 Examples: OUTPUT
    |la solicitud fue aceptada |
    |"Samara Díaz, tu solicitud fue aceptada"|


 Scenario: Solicitud de ingreso rechazada a un grupo privado

 Dado que el <usuario> envió una solicitud para unirse a un grupo
 Cuando el administrador del grupo <rechace la solicitud>
 Entonces el sistema notificará al <usuario> que <su solicitud fue rechazada>

Examples: INPUT
    | usuario | 
    | Samara Diaz  | 
 Examples: OUTPUT
    |la solicitud fue rechazada |
    |"Samara Díaz, tu solicitud fue rechazada"|



