Feature: Asignar administradores de grupo


    Como usuario quiero asignar administradores de grupo 
    para poder determinar qué usuarios podrán configurar el grupo.

 Scenario: Proceso de asignación de administradores exitoso
 Dado que el <usuario> se encuentra en la pantalla principal de su grupo
 Y el <usuario> ingresa a la sección de <Configuracion de grupo>
 Y el <usuario> presiona el <boton Asignar administradores>
 Cuando el sistema muestre al <usuario> la <lista de todos los miembros del grupo>
 Y el <usuario> elija al menos <uno de los miembros>
 Y el <usuario> presione el <boton Asignar administradores>
 Entonces el sistema registrará como administradores a los miembros elegidos
 Y el usuario visualizará que ahora <los miembros elegidos son administradores>
 
  Examples: INPUT
    | usuario | Configuracion de grupo| boton Asignar administradores| Uno de los miembros |boton para asignar administradores| 
    | Samara Diaz  | Boton para configurar el grupo|Boton para asignar administradores | " Alan Bedolla" | "Confirmar que los usuarios seleccionados son los administradores del grupo"| 

 Examples: OUTPUT
    | Lista de todos los miembros del grupo|Los miembros elegidos son administradores|
    | Azul Martinez, Alan Bedolla, Nami Swan, etc | "Alan Bedolla es asignado como administrador del grupo"|


 Scenario: Proceso de asignación de administradores cancelado
 Dado que el <usuario> se encuentra en la pantalla principal de su grupo
 Y el <usuario> ingresa a la sección de <Configuracion de grupo>
 Y el <usuario> presiona el <boton Asignar administradores>
 Cuando el sistema muestre al <usuario> la <lista de todos los miembros del grupo>
 Y el usuario presione el <boton Cancelar>
 Entonces el sistema cancelará el proceso de asignación de administradores

 Examples: INPUT
    | usuario | Configuracion de grupo| boton Asignar administradores| Uno de los miembros | boton cancelar| 
    | Samara Diaz  | Boton para configurar el grupo|Boton para asignar administradores | " Alan Bedolla" |  "Sí, cancelar asignación de Alan Bedolla como administrador del grupo"| 

 Examples: OUTPUT
    | Lista de todos los miembros del grupo|
    | Azul Martinez, Alan Bedolla, Nami Swan, etc | 





