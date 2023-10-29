Feature: Elegir verificacion en dos pasos

   Como usuario quiero poder elegir una verificacion 
   para que mi cuenta esté segura y no sea abierta en otro dispositivo sin mi autorización

   Scenario:  El usuario elige la verificacion en dos pasos

   Dado que  el <usuario> se encuentra en la sección de “Configuración”
 Y el usuario presiona el <boton de verificacion>
 Y el usuario presiona el <boton de Activar verificacion en dos pasos>
 Y el sistema muestra las <opciones de verificacion> con correo electrónico y SMS
 Cuando el usuario presione el <boton con la opcion que desee>
 Entonces el sistema redirecciona al usuario a realizar el proceso de verificacion

 Examples: INPUT
    | usuario | Boton de verificacion|boton de Activar verificacion en dos pasos| boton con la opcion que desee|
    | Samara Diaz  |"Verificacion"|"Activar verificacion"|"SMS"|
 Examples: OUTPUT
    | opciones de verificacion |
    | "Correo electrónico", "SMS" | 



