Feature: Establecer verificación por correo electrónico


    Como usuario quiero utilizar mi correo electrónico como verificación 
    para poder entrar a mi perfil.

    Scenario: Verificación de correo electrónico exitosa
 
 Dado que el <usuario> se encuentra en la sección “Verificación por Correp”
 Cuando el sistema muestre el <formulario> para ingresar número telefónico
 Y el <usuario> ingrese su <correo electronico>
 Y el <usuario> presione el <boton Confirmar>
 Y el sistema valide que se ha ingresado un correo electronico válido
 Y el sistema envíe un <codigo de autenticacion> por correo
 Y el sistema muestre el <formulario> para ingresar el codigo de autenticación
 Y el <usuario> ingrese el <codigo recibido> por correo
 Y el <usuario> presione el <boton Verificar>
 Entonces el sistema <validara el codigo>
 Y el sistema registrará el correo al que se realizó la verificación

Examples: INPUT
    | usuario | correo electronico|boton confirmar| codigo recibido| boton verificar|
    | Samara Diaz  |"SMDiaz@gmail.com"|"Confirmar"|"******"|"Verificar" |
 Examples: OUTPUT
    | formulario| codigo de autenticacion | formulario | validara el codigo |
    | "Ingresa el correo elctrónico" | "Se ha enviado el codigo a ****diaz@gmail.com" |"Codigo" |"Verificacion válida" |


Scenario: Verificación por correo electrónico cancelada
Dado que el usuario se encuentra en la sección “Verificación por correo”
Cuando el sistema muestre el formulario para ingresar correo electrónico
Y el usuario presione el botón “Cancelar”
Entonces el sistema cancelará el proceso de verificación por correo electrónico

 Dado que el <usuario> se encuentra en la sección “Verificación por correo”
  Cuando el sistema muestre el <formulario> para ingresar correo electronico
  Y el usuario presione el <boton Cancelar>
  Entonces el sistema cancelará el proceso de verificación por correo electronico

  Examples: INPUT
    | usuario | boton cancelar| 
    | Samara Diaz  |"Cancelar"|
 Examples: OUTPUT
    | formulario| 
    | "Ingresa el correo electronico" | 