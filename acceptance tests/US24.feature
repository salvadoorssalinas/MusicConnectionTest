Feature: Eliminar <usuario>s a un grupo


 Como usuario quiero eliminar a otros usuarios de un grupo 
 para quitarles el acceso al contenido del grupo.

 Scenario: Proceso de eliminar <usuario>s de un grupo exitoso
 Dado que el <usuario> es un administrador del grupo
 Y el <usuario> se encuentra en la pantalla principal de su grupo
 Cuando el <<usuario> presione el <boton Ver miembros>
 Y el sistema muestre el <listado de miembros del grupo>
 Y el <usuario> presione el <boton Anadir usuarios>
 Y el sistema muestre una <barra de busqueda de usuarios>
 Y el <usuario> ingrese el <nombre de un usuario> en la barra de búsqueda
 Y el sistema verifique la información recibida dentro de la base de datos
 Y el sistema muestre un <listado de los usuarios> que coincidan la búsqueda
 Y el <usuario> seleccione al menos a un <usuario de la lista>
 Y el <usuario> presiona el <boton Eliminar usuarios>
 Y el sistema <pregunta> al <usuario> si <realmente desea eliminar a los usuarios>
 Y el <usuario> presiona el <boton Si eliminar>
 Entonces el sistema eliminará al usuario seleccionado del grupo
 Y los usuarios seleccionados ya no tendrán acceso al grupo

 Examples: INPUT
    | usuario | boton ver miembros| boton anadir usuarios| nombre de un usuario | un usuario de la lista| boton elimninar usaurios |  boton si eliminar |
    | Samara Diaz  | Ver los miembros del grupo| Boton para sumar usuarios a nuestro grupo | " Lara" | "Guido Lara"| Eliminar de las opciones para añadir al grupo| Confirmar la eliminación del usuario|

 Examples: OUTPUT
    | Listado de miembros del grupo|Barra de busqueda de usuarios|Listado de los usuarios|pregunta|
    | Azul Martinez, Alan Bedolla, Nami Swan, etc | "El sistema muestra una barra para colocar el nombre de la persona que deseas agregar"|"Guido Lara", "Sebastian Lara", "Neera Lara"| "¿Desea eliminar al usuario de forma permanente?"|



 Scenario: Proceso de eliminar usuarios de un grupo cancelado
   Dado que el <usuario> es un administrador del grupo
 Y el <usuario> se encuentra en la pantalla principal de su grupo
 Cuando el <<usuario> presione el <boton Ver miembros>
 Y el sistema muestre el <listado de miembros del grupo>
 Y el <usuario> presione el <boton Anadir usuarios>
 Y el sistema muestre una <barra de busqueda de usuarios>
 Y el <usuario> ingrese el <nombre de un usuario> en la barra de búsqueda
 Y el sistema verifique la información recibida dentro de la base de datos
 Y el sistema muestre un <listado de los usuarios> que coincidan la búsqueda
 Y el <usuario> seleccione al menos a un <usuario de la lista>
 Y el <usuario> presiona el <boton Eliminar usuarios>
 Y el sistema <pregunta> al <usuario> si <realmente desea eliminar a los usuarios>
  Y el <usuario> presiona el <boton No cancelar>
  Entonces el sistema anulará el proceso de eliminar los usuarios seleccionados

  Examples: INPUT
    | usuario | boton ver miembros| boton anadir usuarios| nombre de un usuario | un usuario de la lista| boton elimninar usaurios |  boton no eliminar |
    | Samara Diaz  | Ver los miembros del grupo| Boton para sumar usuarios a nuestro grupo | " Lara" | "Guido Lara"| Eliminar de las opciones para añadir al grupo| Cancelar la eliminación del ususario|

 Examples: OUTPUT
    | Listado de miembros del grupo|Barra de busqueda de usuarios|Listado de los usuarios|pregunta|
    | Azul Martinez, Alan Bedolla, Nami Swan, etc | "El sistema muestra una barra para colocar el nombre de la persona que deseas agregar"|"Guido Lara", "Sebastian Lara", "Neera Lara"| "¿Desea eliminar al usuario de forma permanente?"|





