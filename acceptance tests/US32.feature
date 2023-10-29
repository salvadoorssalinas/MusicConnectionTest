Feature: Establecer verificación telefónica

Como usuario quiero usar mi número telefónico como verificación 
para que mi perfil esté asegurado.

Scenario: Verificación telefónica exitosa
Dado que el <usuario> se encuentra en la sección “Verificación por SMS”
Cuando el sistema muestre el <formulario> para ingresar número telefónico
Y el <usuario> ingrese su <numero telefonico>
Y el <usuario> presione el <boton Confirmar>
Y el sistema valide que se ha ingresado un número telefónico válido
Y el sistema envíe un <codigo de autenticacion> por SMS
Y el sistema muestre el <formulario> para ingresar el codigo de autenticación
Y el <usuario> ingrese el <codigo recibido> por SMS
Y el <usuario> presione el <boton Verificar>
Entonces el sistema <validara el codigo>
Y el sistema registrará el número telefónico al que se realizó la verificación

Examples: INPUT
    | usuario | numero telefonico|boton confirmar| codigo recibido| boton verificar|
    | Samara Diaz  |"985679010"|"Confirmar"|"******"|"Verificar" |
 Examples: OUTPUT
    | formulario| codigo de autenticacion | formulario | validara el codigo |
    | "Ingresa numero de telefono" | "Se ha enviado el codigo a +51 ******010" |"Codigo" |"Verificacion válida" |

Scenario: Verificación telefónica cancelada
  Dado que el <usuario> se encuentra en la sección “Verificación por SMS”
  Cuando el sistema muestre el <formulario> para ingresar número telefónico
  Y el usuario presione el <boton Cancelar>
  Entonces el sistema cancelará el proceso de verificación telefónica

  Examples: INPUT
    | usuario | boton cancelar| 
    | Samara Diaz  |"Cancelar"|
 Examples: OUTPUT
    | formulario| 
    | "Ingresa numero de telefono" | 
