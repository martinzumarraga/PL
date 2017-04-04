ENUNCIADO

Un método de representación del conocimiento, basado en modelos de psicología cognitiva son las redes semánticas. 
Las redes semánticas son grafos orientados que proporcionan una representación declarativa de objetos, propiedades 
y relaciones. Los nodos se utilizan para representar objetos o propiedades. Los arcos representan relaciones entre 
nodos del tipo, es_un, es_parte_de, etc. El mecanismo de inferencia básico en las redes semánticas es la herencia de 
propiedades.

a) Representar en Prolog la red semántica de la figura. Se sugiere emplear un predicado binario por cada relación. Por ejemplo: es_un(mamifero, animal). Para las propiedades se sugiere que se emplee el predicado atributo(Objeto, Atributo, Valor). Por ejemplo: atributo(albatros, come, peces), atributo(mamifero, da, leche).

b) Incluir las reglas necesarias para que todo objeto herede los atributos y las propiedades de todas las clases a las que pertenece.

c) Emplear Prolog para hacer consultas sobre la información almacenada en la red semántica. 