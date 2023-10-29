Feature: Enviar mensajes a otros usuarios

Como usuario quiero enviar mensajes de forma privada a otro usuario 
para tener contacto dentro de la app.

Scenario: Enviar un mensaje

 Dado que el <usuario> se encuentra en la <ventana> de conversación con otro usuario
 Cuando el <usuario> escriba un <mensaje> en el campo de texto
  Y el <usuario> presione <Enviar>
 Entonces el sistema enviará el <mensaje> al otro usuario
 Y el sistema lo mostrará en la <ventana> de conversación.

Examples: INPUT
    | usuario | mensaje | Enviar|
    | Samara Diaz | "todo está bien"| Envía el mensaje|

Examples: OUTPUT
    | ventana|
    | Aparece el mensaje como enviado en la ventana de chat|


Scenario: Recibir un mensaje

 Dado que el <usuario> se encuentra en la <ventana> de conversación con otro usuario
 Cuando el otro <usuario> envíe un <mensaje> 
 Entonces el sistema mostrará el <mensaje> recibido en la <ventana> de conversación

Examples: INPUT
    | usuario |
    | Samara Diaz |

Examples: OUTPUT
    |   mensaje | ventana|
    | "Todo está bien"| Aparece el mensaje como enviado en la ventana de chat|
