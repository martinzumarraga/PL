%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Piezas de una bicicleta  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



piezabasica(llanta).
piezabasica(cuadro_trasero).
piezabasica(piñones).
piezabasica(tuerca).
piezabasica(radios).
piezabasica(manillar).
piezabasica(tornillo).
piezabasica(horquilla).


%ensamblaje(bici, unir([rueda, rueda, cuadro])).
%ensamblaje(rueda, unir([radios, llanta, plato])).
%ensamblaje(cuadro, unir([cuadro_trasero, cuadro_delantero])).
% ensamblaje(cuadro_delantero, unir([horquilla,
% manillar,tornillo,tuerca])).
%ensamblaje(plato, unir([piñones, eje])).
%ensamblaje(eje, unir([tornillo, tuerca])).
%ensamblaje(bici, unir([componente(rueda, 2), componente(cuadro, 1)])).

ensamblaje(bici, unir([componente(rueda, 2), componente(cuadro, 1)])).
ensamblaje(rueda, unir([componente(radios, 5), componente(llanta, 1), componente(plato, 2)])).
ensamblaje(cuadro, unir([componente(cuadro_trasero, 1), componente(cuadro_delantero, 1)])).
ensamblaje(cuadro_delantero, unir([componente(horquilla, 1), componente(manillar, 1),componente(tornillo, 3), componente(tuerca, 3) ])).
ensamblaje(plato, unir([componente(piñones, 2), componente(eje, 1)])).
ensamblaje(eje, unir([componente(tornillo, 4), componente(tuerca, 4)])).

piezasde(X, [X]):- piezabasica(X).

piezasde(X, P):-
	ensamblaje(X, unir(Subpiezas)),
	listapiezasde(Subpiezas,1, P).

% Se crea piezasdeaux para que el usuario continue insertando la misma
% cantidad de imputs.
piezasde(X,Cantidad, [[X,Cantidad]]):- piezabasica(X).
piezasde(X,Multi,P) :-
        ensamblaje(X, unir(Subpiezas)),
	listapiezasde(Subpiezas,Multi, P).

%Hay repeticiones
listapiezasde([],_, []).
listapiezasde([componente(X,P)|Resto],Multi, Total):-
        R is P*Multi,
	piezasde(X,R,PiezasCabeza),
	listapiezasde(Resto,Multi, Piezasresto),
        buscar(PiezasCabeza,Piezasresto,Total).

buscar([],L,L).
buscar([A|L],L1,Total):-
    sumar(A,L1,Resultado),
    buscar(L,Resultado,Total).

sumar(A,[],[A]).
sumar([A,B],[[A,C]|Resto],[[A,Q]|Resto]) :- Q is B + C.
sumar(A,[A1|Resto],[A1|Resultado]) :- sumar(A,Resto,Resultado).

%sumar([],LAux,_,LAux).
%sumar([[A|J]|L1],[[A|K]|_],LAux,[[A,Q]|L3]) :-
%    Q is J + K,
%    sumar(L1,LAux,[],L3).
%sumar([A|L1],[],LAux,[A|L3]) :- sumar(L1,LAux,LAux,L3).
%sumar(L1,[Q|_],LAux,L3) :- sumar(L1,LAux,[Q|LAux],L3).

% Predicado auxiliar concatenar
concatenar([], R, R).
concatenar([X|RL], R, [X|S]):- concatenar(RL, R, S).

%%%%%%%%% PRUEBAS %%%%%%%%%%%%%%%%%%%%%

prueba1(X):-
	piezasde(X, L), print(L).

prueba2(X,L):-
	piezasde(X, L).

