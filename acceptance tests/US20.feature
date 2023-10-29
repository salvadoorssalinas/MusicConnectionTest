Feature: US20 Ver listado de chats con otros usuarios
 Como usuario 
 quiero ver el listado de usuarios con los que he conectado 
 para poder conversar con ellos.
Scenario: Acceder al listado de chats
    Dado que el <usuario> se encuentra en la app
    Cuando el <usuario> seleccione la <opcion> Chats
    Entonces el sistema mostrará un <listado de usuarios> y <grupos> con los que el <usuario> ha conversado previamente.

Examples: INPUT
    | usuario | opcion|
    | Samara Diaz  | chats  |

Examples: OUTPUT
    | Listado de usuarios|grupos| 
    | Laura Peña, Alex Rossini| Rock, Bachata, Católica |


Scenario: Listado de chats vacío
   Dado que el <usuario> se encuentra en la <pantalla> de Chats
   Cuando el <usuario> no haya conversado con ningún otro usuario o grupo
   Entonces el sistema mostrará un <mensaje> indicando que no hay chats iniciados
   Y el sistema mostrará un <listado> con los <usuarios> con los que ha establecido una conexión anteriormente

Examples: INPUT
    | usuario |
    | Samara Diaz |

Examples: OUTPUT
    | Pantalla| mensaje| Listado|
    | Chats| No hay chats iniciados | Angela Ortiz, Marlon Cáceres, Laila Delgado|

Scenario: Scenario namecenario 3: Seleccionar un chat
     Dado que el <usuario> se encuentra en la <pantalla> de "Chats"
     Cuando el <usuario> presione un <chat> específico
     Entonces el sistema abrirá la <ventana> de conversación con ese usuario o grupo

Examples: INPUT
    | usuario |
    | Samara Diaz |

Examples: OUTPUT
    | Pantalla| Chat| Ventana|
    | pantalla de Chats| Azul Martinez, Fabricio Alegri, Fans del Metal | conversacion con usuario o grupo|
