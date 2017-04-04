lista([]).
lista([_|_]).

es_conjunto(C) :- lista(C).

pertenece(X,[X|_]).
pertenece(X,[_|Y]) :- pertenece(X,Y).

union([],C,C).
union([A|X],C2,C) :-
    pertenece(A,C2),
    union(X,C2,C).
union([A|X],C2,[A|Z]) :- union(X,C2,Z).

interseccion([],_,[]).
interseccion([A|X],C2,[A|Z]) :-
    pertenece(A,C2),
    interseccion(X,C2,Z).
interseccion([_|X],C2,C) :- interseccion(X,C2,C).

cardinal([], []).
cardinal([A|X], C) :-
          pertenece(A, X),
          cardinal(X, C).
cardinal([A|X], [A|Y]) :-
          cardinal(X, Y).
