Feature: Mensajes grupales

    Como usuario quiero poder participar en chats grupales 
    para tener una comunicación directa con todos los miembros.

    Scenario: Enviar un mensaje grupal
 Dado que el <usuario> se encuentra en la ventana de conversación grupal
 Cuando el <usuario> escriba <un mensaje en el campo de texto>
 Y el <usuario> presione <Enviar>
 Entonces el sistema enviará el <mensaje al chat> con el resto de los miembros del grupo
 Y el sistema lo mostrará en la ventana de conversación

 Examples: INPUT
    | usuario | mensaje en el campo de texto| Enviar|
    | Samara Diaz  |"Gente, estoy libre mañana"|"Enviar el mensaje"|
 Examples: OUTPUT
    | mensaje al chat |
    | "Gente, estoy libre mañana" | 




 Scenario: Recibir un mensaje grupal
 Dado que el <usuario> se encuentra en la ventana de conversación grupal
 Cuando <otro usuario> que sea miembro del grupo envíe un mensaje
 Entonces el sistema mostrará el <mensaje recibido> en la ventana de conversación grupal

 Examples: INPUT
    | usuario | otro usuario |
    | Samara Diaz  | Nicolas Ferro|
 Examples: OUTPUT
    | mensaje recibido |
    | "Mañana iremos al estudio" | 


