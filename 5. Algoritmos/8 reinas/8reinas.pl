situar_reinas(T) :-
    situar([],1,1,T).

situar(T,1,9,T).
situar(X,Columna,Fila,T) :-
    noSeCruza(X,Columna,Fila),
    Fila2 is Fila+1,
    situar([[Columna,Fila]|X],1,Fila2,T).
situar(X,Columna,Fila,T) :-
    Columna2 is Columna+1,
    Columna2<9,
    situar(X,Columna2,Fila,T).
situar(_,Columna,_,_) :-
    Columna2 is Columna+1,
    Columna2>8,
    fail.

noSeCruza([],_,_).
noSeCruza([[X,_]|_],X,_):- !,fail.
noSeCruza([[X,Y]|_],X2,Y2) :-
    XAux is X-X2,
    YAux is XAux+Y,
    YAux==Y2,
    !,fail.
noSeCruza([[X,Y]|_],X2,Y2) :-
    XAux is X2-X,
    YAux is XAux+Y,
    YAux==Y2,
    !,fail.
noSeCruza([_|X],X2,Y) :- noSeCruza(X,X2,Y).
