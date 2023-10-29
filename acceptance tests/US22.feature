Feature: Crear un grupo
Como usuario quiero crear un grupo 
para poder establecer contacto con otros usuarios.

 Scenario:  Crear grupo de forma exitosa

 Dado que el <usuario> se encuentra en la sección “Grupos”
 Cuando el <usuario> presione el <boton> “Crear grupo”
 Y el sistema muestre los <formularios> de <nombre>, <descripcion>, <generos musicales> y dos <botones> para escoger entre privado y público
 Y el <usuario> llene los <formularios> de <nombre>, <descripcion>, <generos musicales>
 Y el <usuario> escoja el botón de la privacidad del grupo
 Y el <usuario> presione el <boton> “Crear grupo”
 Y el sistema verifique la información ingresada en los formularios es válida
 Entonces el sistema registrará el <grupo> en la base de datos
 Y el usuario visualizará el <grupo> creado

 Examples: INPUT
    | usuario | boton| nombre|descripcion| generos musicales| botones| 
    | Samara Diaz  | "Crear grupo" | "La comunidad de los metaleros" | "Grupo que le encanta el rock metal y escuchar canciones épicas que cuente una historia" | "Metal, Rock metal, Metal sinfónico" |  "Privado" |

 Examples: OUTPUT
    | formularios|grupo| 
    | "Escoger nombre", "colocar descripción", "Generos musicales" y "¿Será privado o público?"|"La comunidad de los metaleros" |


 Scenario: Proceso de crear grupo cancelado
    Dado que el <usuario> se encuentra en la sección “Grupos”
    Cuando el <usuario> presione el <boton> “Crear grupo”
    Y el sistema muestre los <formularios> de nombre, descripcion, generos musicales y dos botones para escoger entre privado y público
    Y el <usuario> presione el <boton Cancelar>
    Y el sistema le pregunte si realmente desea cancelar
    Y el <usuario> presione el <boton> “Sí, deseo cancelar”
    Entonces el sistema cancelará el proceso de creación de grupo

 Examples: INPUT
    | usuario | boton| boton cancelar| boton |
    | Samara Diaz  | "Crear grupo" | "Cancelar el proceso de creación de grupos" | "Sí, deseo cancelar" |

 Examples: OUTPUT
    | formularios|
    | "Escoger nombre", "colocar descripción", "Generos musicales" y "¿Será privado o público?"|



