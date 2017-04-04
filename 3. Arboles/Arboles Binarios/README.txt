ENUNCIADO

Implementa los siguientes predicados sobre árboles:

Considerando la definición de un árbol binario como se indica a continuación: 

1. es_arbol(vacio). 
2. es_arbol( ar(IZD,Raiz,DCH)):- nodo(Raiz), es_arbol(IZD), es_arbol(DCH). 
define los siguientes predicados.

1.1. frontera(A, F); F es la frontera del árbol A. La frontera de un árbol se definirá como 
la lista de sus nodos hoja (de izquierda a derecha).

1.2. fronteras_iguales(A1, A2); Comprobará si las fronteras de los árboles A1 y A2 son iguales 
(vistas como conjuntos, no como listas)

1.3. inorden (A, L); Obtiene en L el recorrido en inorden del árbol A. De forma similar define 
preorden (A, L) y postorden (A, L).

1.4. Operaciones sobre árboles binarios de búsqueda:

1.4.1 es_abb(A); Decide si el dato A es un árbol binario de búsqueda.

1.4.2. insertar(A, N, Anuevo); Da el árbol Anuevo, como resultado de insertar el nodo N en el árbol A.

1.4.3. borrar(A, N, Anuevo); Da el árbol Anuevo como resultado de borrar el nodo N del árbol A. Se debe 
tener en cuenta que hay que reestructurar el árbol.

1.4.4. busca(A, N); Decide si el nodo N está en el árbol A.

1.4.5. crear_abb(L, A); Crea un árbol binario de búsqueda A a partir de los elementos de una lista L.