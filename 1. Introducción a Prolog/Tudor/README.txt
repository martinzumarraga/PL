ENUNCIADO

Crear el fichero tudor.pl e incluir en él los predicados que definen por extensión todas las relaciones familiares directas, padre(Padre, Hijo) y madre(Madre, Hijo) del árbol genealógico de la familia Tudor.

a) Cargar el fichero tudor.pl en el intérprete, y comprobar que los hechos introducidos son correctos.

b) Añadir al fichero tudor.pl reglas que definan, a partir de los predicados anteriores, las siguientes relaciones de parentesco entre los miembros de la familia Tudor:

	- Definir la relación progenitor, utilizando las relaciones padre y madre. Cargar de nuevo el fichero y comprobar que las nuevas relaciones están bien definidas.

	- Definir recursivamente la relación antepasado. Probar definiciones alternativas de esta relación cambiando el orden de los predicados. Comprobar cómo afecta el comportamiento del programa el orden usado en las distintas definiciones de antepasado. Definir la relación descendente.

	- Definir nuevas relaciones (como hermano, hermana, abuelo, abuela, nieto, nieta, etc) añadiendo predicados (por ejemplo mujer, hombre) y reglas necesarias.