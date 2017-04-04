ENUNCIADO

Implementa los siguientes predicados sobre �rboles:

Considerando la definici�n de un �rbol binario como se indica a continuaci�n: 

1. es_arbol(vacio). 
2. es_arbol( ar(IZD,Raiz,DCH)):- nodo(Raiz), es_arbol(IZD), es_arbol(DCH). 
define los siguientes predicados.

1.1. frontera(A, F); F es la frontera del �rbol A. La frontera de un �rbol se definir� como 
la lista de sus nodos hoja (de izquierda a derecha).

1.2. fronteras_iguales(A1, A2); Comprobar� si las fronteras de los �rboles A1 y A2 son iguales 
(vistas como conjuntos, no como listas)

1.3. inorden (A, L); Obtiene en L el recorrido en inorden del �rbol A. De forma similar define 
preorden (A, L) y postorden (A, L).

1.4. Operaciones sobre �rboles binarios de b�squeda:

1.4.1 es_abb(A); Decide si el dato A es un �rbol binario de b�squeda.

1.4.2. insertar(A, N, Anuevo); Da el �rbol Anuevo, como resultado de insertar el nodo N en el �rbol A.

1.4.3. borrar(A, N, Anuevo); Da el �rbol Anuevo como resultado de borrar el nodo N del �rbol A. Se debe 
tener en cuenta que hay que reestructurar el �rbol.

1.4.4. busca(A, N); Decide si el nodo N est� en el �rbol A.

1.4.5. crear_abb(L, A); Crea un �rbol binario de b�squeda A a partir de los elementos de una lista L.