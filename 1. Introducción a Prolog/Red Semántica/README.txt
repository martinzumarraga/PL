ENUNCIADO

Un m�todo de representaci�n del conocimiento, basado en modelos de psicolog�a cognitiva son las redes sem�nticas. 
Las redes sem�nticas son grafos orientados que proporcionan una representaci�n declarativa de objetos, propiedades 
y relaciones. Los nodos se utilizan para representar objetos o propiedades. Los arcos representan relaciones entre 
nodos del tipo, es_un, es_parte_de, etc. El mecanismo de inferencia b�sico en las redes sem�nticas es la herencia de 
propiedades.

a) Representar en Prolog la red sem�ntica de la figura. Se sugiere emplear un predicado binario por cada relaci�n. Por ejemplo: es_un(mamifero, animal). Para las propiedades se sugiere que se emplee el predicado atributo(Objeto, Atributo, Valor). Por ejemplo: atributo(albatros, come, peces), atributo(mamifero, da, leche).

b) Incluir las reglas necesarias para que todo objeto herede los atributos y las propiedades de todas las clases a las que pertenece.

c) Emplear Prolog para hacer consultas sobre la informaci�n almacenada en la red sem�ntica. 