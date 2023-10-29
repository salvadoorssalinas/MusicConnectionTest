Feature: US37 Recibir notificaciones
    Como usuario
    quiero recibir las notificaciones que establecí
    para ser informado sobre información que me interesa

Scenario: El usuario visualiza las notificaciones dentro de la app
Dado que el <usuario> se encuentra en la <seccion> de perfil
Cuando el <usuario> presione el <boton> de notificaciones
Entonces el sistema mostrará las <notificaciones recibidas>

Examples: INPUT
    | usuario | seccion | boton |
    | Lucho Suarez  | Perfil  | Notificaciones |

Examples: OUTPUT
    | pantalla | notificaciones recibidas |
    | Pantalla de notificaciones recibidas | "Maria Perez comenzó a seguirte"  |

Scenario: El usuario recibe una notificación fuera de la app
Dado que el <usuario> no se encuentra dentro de la app
Cuando el sistema detecte una acción que haya sido marcada como <notificacion de interes> para el <usuario>
Entonces el sistema enviará la notificación al dispositivo del <usuario>

Examples: INPUT
    | usuario | estado |
    | Lucho Suarez  | Fuera de la app  |

Examples: OUTPUT
    | notificación |
    | "A Juan Lopez le gustó tu publicación" |
