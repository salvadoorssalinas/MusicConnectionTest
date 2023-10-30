Feature: Busqueda de usuarios
    Como usuario
    quiero buscar a otros usuarios segun su nombre, rol, genero o instrumento musical
    para conectar con alguien que cumpla mis preferencias

Scenario: Busqueda exitosa de usuarios por nombre

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> ingrese el nombre en el campo de búsqueda
Y el <usuario> presione el <boton> buscar
Y el sistema verifique que se ha ingresado texto válido en el campo de búsqueda
Entonces el sistema mostrará una lista de usuarios que coincidan con el nombre ingresado

Example: INPUT
    |usuario| |Samara| |boton| |buscar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |buscar| |Lista de usuarios por busqueda|

Scenario: Busqueda exitosa de usuarios por rol musical

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> ingrese el rol musical en el campo de búsqueda
Y el <usuario> presione el <boton> buscar
Y el sistema verifique que se ha ingresado texto válido en el campo de búsqueda
Entonces el sistema mostrará una lista de usuarios que coincidan con el rol musical ingresado

Example: INPUT
    |usuario| |Baterista| |boton| |buscar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |buscar| |Lista de usuarios por busqueda|

Scenario: Busqueda exitosa de usuarios por general musical

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> ingrese el género musical en el campo de búsqueda
Y el <usuario> presione el <boton> buscar
Y el sistema verifique que se ha ingresado texto válido en el campo de búsqueda
Entonces el sistema mostrará una lista de usuarios que coincidan con el género musical ingresado

Example: INPUT
    |usuario| |Rock| |boton| |buscar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |buscar| |Lista de usuarios por busqueda|

Scenario: Busqueda sin resultados

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> ingrese el texto en el campo de búsqueda
Y el <usuario> presione el <boton> buscar
Y el sistema verifique que se ha ingresado texto válido en el campo de búsqueda
Y el sistema no encuentre resultados que coincidan
Entonces el sistema mostrará un mensaje diciendo que no encontró resultados

Example: INPUT
    |usuario| |Balada| |boton| |buscar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |buscar| |No hay resultados a su busqueda|

Scenario: Cancelar busqueda

Dado que el <usuario> se encuentra en la sección de búsqueda
Cuando el <usuario> presione el botón para retornar
Entonces el sistema limpiará el campo de búsqueda
Y el sistema retornará a la pantalla anterior

Example: INPUT
    |usuario| |Baterista| |boton| |retornar| 

Example: OUTPUT
    |usuario| |seccion| |busqueda| |Campo de texto| |boton| |retornar| |Pantalla de inicio|