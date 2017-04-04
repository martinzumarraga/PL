ENUNCIADO

Crear el fichero tudor.pl e incluir en �l los predicados que definen por extensi�n todas las relaciones familiares directas, padre(Padre, Hijo) y madre(Madre, Hijo) del �rbol geneal�gico de la familia Tudor.

a) Cargar el fichero tudor.pl en el int�rprete, y comprobar que los hechos introducidos son correctos.

b) A�adir al fichero tudor.pl reglas que definan, a partir de los predicados anteriores, las siguientes relaciones de parentesco entre los miembros de la familia Tudor:

	- Definir la relaci�n progenitor, utilizando las relaciones padre y madre. Cargar de nuevo el fichero y comprobar que las nuevas relaciones est�n bien definidas.

	- Definir recursivamente la relaci�n antepasado. Probar definiciones alternativas de esta relaci�n cambiando el orden de los predicados. Comprobar c�mo afecta el comportamiento del programa el orden usado en las distintas definiciones de antepasado. Definir la relaci�n descendente.

	- Definir nuevas relaciones (como hermano, hermana, abuelo, abuela, nieto, nieta, etc) a�adiendo predicados (por ejemplo mujer, hombre) y reglas necesarias.