Feature: Añadir <usuario>s a un grupo

Como usuario quiero añadir a otros usuarios a un grupo 
para permitirles tener acceso al contenido de mi grupo.

Scenario: Proceso de añadir <usuario>s a un grupo exitoso

 Dado que el <usuario> es un administrador del grupo
 Y el <usuario> se encuentra en la pantalla principal de su grupo
 Cuando el <<usuario> presione el <boton Ver miembros>
 Y el sistema muestre el <listado de miembros del grupo>
 Y el <usuario> presione el <boton Anadir usuarios>
 Y el sistema muestre una <barra de busqueda de usuarios>
 Y el <usuario> ingrese el <nombre de un usuario> en la barra de búsqueda
 Y el sistema verifique la información recibida dentro de la base de datos
 Y el sistema muestre un <listado de los usuarios> que coincidan la búsqueda
 Y el <usuario> seleccione al menos a <un usuario de la lista>
 Y el <usuario> presiona el <boton> “Añadir usuarios”
 Entonces el sistema registrará al usuario seleccionado como nuevo miembro del grupo
 Y el usuario seleccionado ahora tendrá acceso al grupo

 Examples: INPUT
    | usuario | boton ver miembros| boton anadir usuarios| nombre de un usuario | un usuario de la lista| Boton |
    | Samara Diaz  | Ver los miembros del grupo| Boton para sumar usuarios a nuestro grupo | " Alba" | "Jessica Alba"| Añadir el usuario seleccionado|

 Examples: OUTPUT
    | Listado de miembros del grupo|Barra de busqueda de usuarios|Listado de los usuarios|
    | Azul Martinez, Alan Bedolla, Nami Swan, etc | "El sistema muestra una barra para colocar el nombre de la persona que deseas agregar"|"Liliana Alba", "Americo Alba", "Jessica Alba"|


Scenario:  Proceso de añadir <usuario>s a un grupo cancelado
 Dado que el <usuario> es un administrador del grupo
 Y el <usuario> se encuentra en la pantalla principal de su grupo
 Cuando el <usuario> presione el <boton> “Ver miembros”
 Y el sistema muestre el <listado de miembros del grupo>
 Y el <usuario> presione el <boton> “Añadir usuarios”
 Y el sistema muestre una <barra de busqueda de usuarios>
 Y el <usuario> presiona el <boton> “Cancelar”
 Entonces el sistema anulará el proceso de añadir usuarios a un grupo
 
 Examples: INPUT
    | usuario | boton ver miembros| boton anadir usuarios|  boton |
    | Samara Diaz  | Ver los miembros del grupo| Boton para sumar usuarios a nuestro grupo | Se cancela el proceso de añadir usuarios al grupo |
 Examples: OUTPUT
    | Listado de miembros del grupo|Barra de busqueda de usuarios|
    | Azul Martinez, Alan Bedolla, Nami Swan, etc | "El sistema muestra una barra para colocar el nombre de la persona que deseas agregar"|

