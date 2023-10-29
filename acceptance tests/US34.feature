Feature: US34 Uso de Verificación
    Como usuario
    quiero utilizar la verificación establecida
    para entrar a través de otro dispositivo de forma segura

Scenario: El usuario ingresa desde un nuevo dispositivo
Dado que el <usuario> se encuentra en la <pantalla de inicio de sesion>.
Cuando el <usuario> coloca los <datos> correspondientes para iniciar la sesión
Y el sistema comprueba si la cuenta del <usuario> tiene la <verificacion> activada
Entonces el sistema redirecciona al <usuario> a la <pantalla de verificacion en 2 pasos>

Examples: INPUT
    | usuario | datos de inicio de sesion | estado de verificacion  |
    | Lucho Suarez  | luchosuarezz, contrasena1023  | activada |

Examples: OUTPUT
    | pantalla |
    | Pantalla de verificacion en 2 pasos |


Scenario: El usuario se verifica por correo electrónico
Dado que el <usuario> eligió la <opcion> de verificarse por <correo electronico>
Cuando el sistema envíe un <correo> al <usuario> con su <codigo de autenticacion>
Y el sistema muestre el <formulario> para ingresar el <codigo>
Y el <usuario> ingrese el <codigo de autenticacion>
Y el sistema valide el <codigo ingresado>
Entonces el sistema permitirá el <acceso>
Y el <usuario> podrá ingresar a su cuenta

Examples: INPUT
    | usuario | opcion de verificacion  | correo electronico | codigo de autenticacion ingresado |
    | Lucho Suarez  | verificacion con correo electronico  | luchito01@gmail.com  | 164732  |

Examples: OUTPUT
    | correo | acceso |
    | su codigo de verificación es 164732 | Acceso concedido |


Scenario: El usuario se verifica por SMS
Dado que el <usuario> eligió la <opcion> de verificarse por SMS
Cuando el sistema envíe un <SMS> al <usuario> con su <codigo de autenticacion>
Y el sistema muestre el <formulario> para ingresar el <codigo>
Y el <usuario> ingrese el <codigo de autenticacion>
Y el sistema valide el <codigo ingresado>
Entonces el sistema permitirá el <acceso>
Y el <usuario> podrá ingresar a su cuenta

Examples: INPUT
    | usuario | opcion de verificacion  | numero de telefono | codigo de autenticacion ingresado |
    | Lucho Suarez  | verificacion con SMS  | 991234792  | 643002  |

Examples: OUTPUT
    | correo | acceso |
    | su codigo de verificación es 643002 | Acceso concedido |
