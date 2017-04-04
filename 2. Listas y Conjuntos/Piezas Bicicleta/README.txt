ENUNCIADO

El código que sigue (en azul) corresponde a un programa Prolog que se encuentra en el fichero piezasbici.pl

% Piezas de una bicicleta

piezabasica(llanta).
piezabasica(cuadro_trasero).
piezabasica(piñones).
piezabasica(tuerca).
piezabasica(radios).
piezabasica(manillar).
piezabasica(tornillo).
piezabasica(horquilla).

ensamblaje(bici, unir([rueda, rueda, cuadro])).
ensamblaje(rueda, unir([radios, llanta, plato])).
ensamblaje(cuadro, unir([cuadro_trasero, cuadro_delantero])).
ensamblaje(cuadro_delantero, unir([horquilla, manillar, tornillo, tuerca])).
ensamblaje(plato, unir([piñones, eje])).
ensamblaje(eje, unir([tornillo, tuerca])).

piezasde(X, [X]):- piezabasica(X). 
piezasde(X, P):-  ensamblaje(X, unir(Subpiezas)), listapiezasde(Subpiezas, P).

listapiezasde([ ], [ ]). 
listapiezasde([P|Resto], Total):- piezasde(P, Piezascabeza), listapiezasde(Resto, Piezasresto),  
concatenar(Piezascabeza, Piezasresto, Total).


% predicado auxiliar concatenar/3
concatenar([], R, R). 
concatenar([X|RL], R, [X|S]):- concatenar(RL, R, S).

Después de copiarlo al directorio de trabajo y cargarlo en el intérprete:

a) Formula las siguientes preguntas.

¿Cuáles son las piezas de una rueda?

¿Cuáles son las piezas de un cuadro?

¿Cuáles son las piezas de una bici?

b) La lista construida por piezasde no contiene información de la cantidad de piezas necesarias, 
de forma que pueden aparecer piezas duplicadas en la lista. Haz una versión mejorada de este programa 
para solventar estas deficiencias. Por ejemplo, diseñaremos ensamblaje de forma que indique los 
distintos componentes necesarios y sus cantidades, a través de una estructura como 
componente(nombre_componente, cantidad_componente). Así podemos expresar la información de los 
ensamblajes de la siguiente manera:

ensamblaje(bici, unir([componente(rueda, 2), componente(cuadro, 1)])).
ensamblaje(rueda, unir([componente(radios, 5), componente(llanta, 1), componente(plato, 1)])).
ensamblaje(cuadro, unir([componente(cuadro_trasero, 1), componente(cuadro_delantero, 1)])).
ensamblaje(cuadro_delantero, unir([componente(horquilla, 1), componente(manillar, 1),componente(tornillo, 3), 
componente(tuerca, 3) ])).
ensamblaje(plato, unir([componente(piñones, 2), componente(eje, 1)])).
ensamblaje(eje, unir([componente(tornillo, 4), componente(tuerca, 4)])).

Cambia de forma adecuada piezasde y/o listapiezasde para que se obtenga la lista de piezas básicas 
con su cantidad asociada y sin repeticiones.