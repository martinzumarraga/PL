ENUNCIADO

El c�digo que sigue (en azul) corresponde a un programa Prolog que se encuentra en el fichero piezasbici.pl

% Piezas de una bicicleta

piezabasica(llanta).
piezabasica(cuadro_trasero).
piezabasica(pi�ones).
piezabasica(tuerca).
piezabasica(radios).
piezabasica(manillar).
piezabasica(tornillo).
piezabasica(horquilla).

ensamblaje(bici, unir([rueda, rueda, cuadro])).
ensamblaje(rueda, unir([radios, llanta, plato])).
ensamblaje(cuadro, unir([cuadro_trasero, cuadro_delantero])).
ensamblaje(cuadro_delantero, unir([horquilla, manillar, tornillo, tuerca])).
ensamblaje(plato, unir([pi�ones, eje])).
ensamblaje(eje, unir([tornillo, tuerca])).

piezasde(X, [X]):- piezabasica(X). 
piezasde(X, P):-  ensamblaje(X, unir(Subpiezas)), listapiezasde(Subpiezas, P).

listapiezasde([ ], [ ]). 
listapiezasde([P|Resto], Total):- piezasde(P, Piezascabeza), listapiezasde(Resto, Piezasresto),  
concatenar(Piezascabeza, Piezasresto, Total).


% predicado auxiliar concatenar/3
concatenar([], R, R). 
concatenar([X|RL], R, [X|S]):- concatenar(RL, R, S).

Despu�s de copiarlo al directorio de trabajo y cargarlo en el int�rprete:

a) Formula las siguientes preguntas.

�Cu�les son las piezas de una rueda?

�Cu�les son las piezas de un cuadro?

�Cu�les son las piezas de una bici?

b) La lista construida por piezasde no contiene informaci�n de la cantidad de piezas necesarias, 
de forma que pueden aparecer piezas duplicadas en la lista. Haz una versi�n mejorada de este programa 
para solventar estas deficiencias. Por ejemplo, dise�aremos ensamblaje de forma que indique los 
distintos componentes necesarios y sus cantidades, a trav�s de una estructura como 
componente(nombre_componente, cantidad_componente). As� podemos expresar la informaci�n de los 
ensamblajes de la siguiente manera:

ensamblaje(bici, unir([componente(rueda, 2), componente(cuadro, 1)])).
ensamblaje(rueda, unir([componente(radios, 5), componente(llanta, 1), componente(plato, 1)])).
ensamblaje(cuadro, unir([componente(cuadro_trasero, 1), componente(cuadro_delantero, 1)])).
ensamblaje(cuadro_delantero, unir([componente(horquilla, 1), componente(manillar, 1),componente(tornillo, 3), 
componente(tuerca, 3) ])).
ensamblaje(plato, unir([componente(pi�ones, 2), componente(eje, 1)])).
ensamblaje(eje, unir([componente(tornillo, 4), componente(tuerca, 4)])).

Cambia de forma adecuada piezasde y/o listapiezasde para que se obtenga la lista de piezas b�sicas 
con su cantidad asociada y sin repeticiones.