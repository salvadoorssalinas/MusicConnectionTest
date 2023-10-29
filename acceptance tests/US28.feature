Feature: Configuración de de grupo

    Como usuario quiero configurar el grupo 
    para modificar sus datos y privacidad.

 Scenario:  Configuración de datos exitosa
 Dado que el <usuario> es administrador del grupo
 Y el <usuario> ingresa a la sección “Configuración de grupo”
 Y el <usuario> presiona el <boton Modificar datos>
 Cuando el sistema muestre los <formularios> para ingresar los datos de <nombre>, <descripcion> y <generos musicales>
 Y el <usuario> ingrese los textos a modificar en los formularios
 Y el <usuario> presione el <boton guardar cambios>
 Y el sistema verifique los datos ingresados son válidos
 Entonces el sistema mostrará registrará los nuevos <datos modificados>


 Examples: INPUT
    | usuario | boton Modificar datos| Nombre|descripcion|generos musicales|boton guardar cambios| 
    | Samara Diaz  |Modificar los datos| "Bchata" | "Grupo amante de las canciones románticas " | "Bachata" | Guardar cambios del grupo| 
 Examples: OUTPUT
    | formularios|datos modificados|
    | "Escoger nombre", "colocar descripción", "Generos musicales" |"Bchata","Grupo amante de las canciones románticas ","Bachata" los cambios fueron exitosos |


 Scenario: Configuración de datos cancelada
 Dado que el <usuario> es administrador del grupo
 Y el <usuario> ingresa a la sección “Configuración de grupo”
 Y el <usuario> presiona el <boton Modificar datos>
 Cuando el sistema muestre los <formularios> para ingresar los datos de <nombre>, <descripcion> y <generos musicales>
 Y el <usuario> presione el <boton cancelar>
 Y el sistema verifique los datos ingresados son válidos
 Entonces el sistema <cancelara el proceso de modificacion de datos>
 Y el sistema retornará a la pantalla anterior

 Examples: INPUT
    | usuario| boton Modificar datos| Nombre|descripcion|generos musicales|boton cancelar cambios| 
    | Samara Diaz  |Modificar los datos| "Bchata" | "Grupo amante de las canciones románticas " | "Bachata" | Cancelar los cambios hechos| 
 Examples: OUTPUT
    | formularios|cancelara el proceso de modificacion de datos|
    | "Escoger nombre", "colocar descripción", "Generos musicales" |"Cancelación del proceso exitoso" |



 Scenario: Configuración de privacidad exitosa
 Dado que el <usuario> es administrador del grupo
 Y el <usuario> ingresa a la sección “Configuración de grupo”
 Y el <usuario> presiona el <boton privacidad de grupo>
 Cuando el sistema muestre las <opciones de privacidad>
 Y el <usuario> presione el boton de la <opcion> que desee
 Y el <usuario> presiona el <boton guardar cambios>
  Entonces el sistema mostrará registrará la <configuracion de privacidad del grupo>



 Examples: INPUT
    | usuario | boton privacidad de grupo| opcion|boton guardar cambios| 
    | Samara Diaz  |"Privacidad del grupo"|"Privado"|"Guardar cambios"| 
 Examples: OUTPUT
    | opciones de privacidad|configuracion de privacidad del grupo|
    | "Publico o Privado" | "Se registró como privado el grupo"|


 Scenario: Configuración de privacidad cancelada
 Dado que el <usuario> es administrador del grupo
 Y el <usuario> ingresa a la sección “Configuración de grupo”
 Y el <usuario> presiona el <boton privacidad de grupo>
 Cuando el sistema muestre las <opciones de privacidad>
 Y el <usuario> presiona el <boton cancelar>
 Entonces el sistema cancelará el proceso de configuración de privacidad
 Y el sistema retornará a la pantalla anterior


 Examples: INPUT
    | usuario | boton privacidad de grupo| boton cancelar| 
    | Samara Diaz  |"Privacidad del grupo"|"Cancelar"| 
 Examples: OUTPUT
    | opciones de privacidad|
    | "Publico o Privado" | 

