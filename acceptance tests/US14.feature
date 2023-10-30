Feature: Busqueda de grupos
    Como usuario
    quiero buscar grupos segun su nombre o genero musical favorito
    para conocer grupos de interes

Scenario: Busqueda exitosa de grupos por nombre

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> ingrese el nombre en el campo de búsqueda
Y el <usuario> presione el <boton> buscar
Y el sistema verifique que se ha ingresado texto válido en el campo de búsqueda
Entonces el sistema mostrará una lista de grupos que coincidan con el nombre ingresado

Example: INPUT
    |usuario| |CarabaRock| |boton| |buscar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |buscar| |Lista de grupos|

Scenario: Busqueda exitosa de grupos por genero musical

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> ingrese el género musical en el campo de búsqueda
Y el <usuario> presione <boton> buscar
Y el sistema verifique que se ha ingresado texto válido en el campo de búsqueda
Entonces el sistema mostrará una lista de grupos que coincidan con el género musical ingresado

Example: INPUT
    |usuario| |Pop| |boton| |buscar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |buscar| |Lista de grupos|

Scenario: Busqueda sin resultados 

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> ingrese el texto en el campo de búsqueda
Y el <usuario> presione el <boton> buscar
Y el sistema verifique que se ha ingresado texto válido en el campo de búsqueda
Y el sistema no encuentre resultados que coincidan
Entonces el sistema mostrará un mensaje diciendo que no encontró resultados

Example: INPUT
    |usuario| |Cumbia| |boton| |buscar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |buscar| |Busqueda sin resultados|

Scenario: Cancelar busqueda

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> presione el botón para retornar
Entonces el sistema limpiará el campo de búsqueda
Y el sistema retornará a la pantalla anterior

Example: INPUT
    |usuario| |Cumbia| |boton| |retornar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |retornar| |Busqueda cancelada|