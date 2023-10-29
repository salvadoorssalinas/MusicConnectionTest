Feature: US35 Eliminar Verificación
    Como usuario
    quiero desactivar la verificación al iniciar sesión
    para simplificar el proceso al iniciar sesión

Scenario: Proceso de eliminar un tipo de verificación exitoso
Dado que el <usuario> se encuentra en la <seccion> de Configuración
Y el <usuario> presiona el <boton> de Verificación
Cuando el <usuario> seleccione el <boton> Eliminar verificación
Y el sistema muestre los <tipos de verificacion registrados> en la cuenta
Y el <usuario> seleccione el <tipo de verificacion> que desea eliminar
Y el sistema pregunte si realmente desea eliminar la verificación seleccionada
Y el <usuario> presione el <boton> Sí, eliminar
Entonces el sistema eliminará el <tipo de verificacion seleccionado>

Examples: INPUT
    | usuario | boton | tipo de verificacion seleccionado  | boton de confirmacion  |
    | Lucho Suarez  | Eliminar verificación  | Verificacion por correo | "Sí, eliminar"  |

Examples: OUTPUT
    | pantalla | estado  |
    | "Se eliminó el tipo de verificación seleccionado" |  Tipo de verificacion eliminado  |


Scenario: Proceso de eliminar un tipo de verificación cancelado
Dado que el <usuario> se encuentra en la <seccion> de Verificación
Cuando el <usuario> seleccione el <boton> Eliminar verificación
Y el sistema muestre los <tipos de verificacion registrados> en la cuenta
Y el <usuario> seleccione el tipo de verificación que desea eliminar
Y el sistema pregunte si realmente desea eliminar la verificación seleccionada
Y el <usuario> presione el <boton> No, cancelar
Entonces el sistema cancelará el proceso de eliminación de verificación

Examples: INPUT
    | usuario | boton | tipo de verificacion seleccionado  | boton de confirmacion  |
    | Lucho Suarez  | Eliminar verificación  | Verificacion por correo | "No, cancelar"  |

Examples: OUTPUT
    | pantalla | estado  |
    | Pantalla anterior | eliminacion de verificacion cancelado |
