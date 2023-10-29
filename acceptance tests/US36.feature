Feature: US36 Gestionar notificaciones
    Como usuario
    quiero gestionar las notificaciones
    para recibir avisos sobre lo que más me interesa

Scenario: Activar notificaciones
Dado que el <usuario> se encuentra en la <seccion> de Configuración
Cuando el <usuario> seleccione el <boton> Notificaciones
Y el sistema muestre los <botones de tipos de notificaciones>
Y el <usuario> presione los <botones de las notificaciones que desee recibir>
Entonces el sistema registrará los <tipos de notificaciones> que el <usuario> desea

Examples: INPUT
    | usuario | seccion | boton | tipo de notificaciones seleccionados | estado  |
    | Lucho Suarez  | Configuracion  | Notificaciones  | Todas | Activar notificaciones  |

Examples: OUTPUT
    | pantalla |
    | "Se guardaron los cambios" |


Scenario: Desactivar notificaciones
Dado que el <usuario> se encuentra en la <seccion> de Notificaciones
Cuando el <usuario> seleccione el <boton> Notificaciones
Y el sistema muestre los <botones de tipos de notificaciones>
Y el <usuario> presione el <boton> Desactivar notificaciones
Entonces el sistema registrará los <tipos de notificaciones> que el <usuario> desea

Examples: INPUT
    | usuario | seccion | boton | tipo de notificaciones seleccionados | estado  |
    | Lucho Suarez  | Configuracion | Notificaciones  | Todas | Desactivar notificaciones  |

Examples: OUTPUT
    | pantalla |
    | "Se guardaron los cambios" |
