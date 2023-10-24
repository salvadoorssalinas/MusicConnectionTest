Feature: US42 Información sobre características de la app
    Como usuario
    quiero acceder a un método de contacto
    para realizar preguntas o comentarios a la startup

Scenario: El usuario ingresa a la sección "Contáctanos"

Dado que el <usuario> se encuentra en la página web
Cuando el <usuario> haga clic sobre el <boton> Contáctanos
Entonces el <usuario> será redirigido a la <seccion> donde verá nuestras <redes sociales>
Y el <usuario> visualizará el <formulario> para realizar consultas en la misma página

Examples: INPUT
    | usuario | boton |
    | Samara Diaz  | Contactanos  |

Examples: OUTPUT
    | sección | redes sociales | formulario |
    | Página de Contactanos | Facebook, Instagram, WhatsApp | Campo de nombre, campo de email, campo de contenido  |


Scenario: El usuario envía el formulario
Dado que el <usuario> se encuentra en la <seccion Contactanos>
Y el <usuario> ve el <formulario> con los <campos> de <nombre>, <email> y <contenido>
Cuando el <usuario> complete los <campos> del formulario
Y el <usuario> haga clic sobre el <boton Enviar>
Entonces el sistema registrará la <informacion> ingresada

Examples: INPUT
    | usuario | nombre | email | contenido | boton |
    | Samara Diaz | Samara Diaz | samara293@gmail.com | Hola, me gustaría saber más sobre sus servicios | Enviar |

Examples: OUTPUT
    | usuario | seccion |
    | Samara Diaz | Página de Contactanos  |
