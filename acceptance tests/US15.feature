Feature: Busqueda de publicaciones
    Como usuario
    quiero buscar publicaciones 
    para encontrar contenido que me pueda interesar

Scenario: Busqueda de publicaciones

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> ingrese el texto que desee en el campo de búsqueda
Y el usuario presione "Buscar publicaciones"
Y el sistema verifique que se ha ingresado texto válido en el campo de búsqueda
Entonces el sistema mostrará una lista de publicaciones que tienen contenido que coincida con el texto ingresado

Example: INPUT
    |usuario| |Concierto en Miraflores| |boton| |buscar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |buscar| |Lista de resultados|

Scenario: Busqueda sin resultados

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> ingrese el texto en el campo de búsqueda
Y el <usuario> presione el <boton> buscar
Y el sistema verifique que se ha ingresado texto válido en el campo de búsqueda
Y el sistema no encuentre resultados que coincidan
Entonces el sistema mostrará un mensaje diciendo que no encontró resultados

Example: INPUT
    |usuario| |Audicion en Barranco| |boton| |buscar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |buscar| |Sin resultados|

Scenario: Cancelar busqueda

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> presione el <boton> para retornar
Entonces el sistema limpiará el campo de búsqueda
Y el sistema retornará a la pantalla anterior

Example: INPUT
    |usuario| |Festival de musica 2023| |boton| |retornar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |busqueda cancelada| 