concatenar([], L, L).
concatenar([A|L1],L2,[A|L]):- concatenar(L1, L2, L).

adyacentes(E1, E2, [E1,E2|_]).
adyacentes(E1, E2, [_|XS]) :-
    adyacentes(E1, E2, XS).

miembro_concatenar(_,[]) :- false.
miembro_concatenar(E,[A|L]) :- concatenar([E],L,[A|L]).
miembro_concatenar(E,[_|L]) :- miembro_concatenar(E,L).

adyacentes_concatenar(_,_,[]) :- false.
adyacentes_concatenar(E1,E2,[A1,A2|L]) :- concatenar([E1,E2],L,[A1,A2|L]).
adyacentes_concatenar(E1,E2,[_|L]) :- adyacentes_concatenar(E1,E2,L).

ultimo_concatenar(_,[]) :- false.
ultimo_concatenar(E,[A|L]) :- concatenar([A],[E],[A|L]).
ultimo_concatenar(E,[_|L]) :- ultimo_concatenar(E,L).

palindromo(L):- girar(L,Q), L==Q.

girar([],[]).
girar([A|L], Q) :-  girar(L,P),concatenar(P,[A],Q).

prefijo([],_).
prefijo([A|L],[A|L2]) :- prefijo(L,L2).

sublista(L,S) :-
    concatenar(_,L2,L),
    concatenar(S,_,L2).

eliminar_elemento([],_,[]).
eliminar_elemento([A|L],E,[A|L2]) :-
    A \== E,
    eliminar_elemento(L,E,L2).
eliminar_elemento([A|L],E,L2) :-
    A == E,
    eliminar_elemento(L,E,L2).

eliminar_prim_aparicion([],_,[]).
eliminar_prim_aparicion([A|L],E,[A|L2]) :-
    A \== E,
    eliminar_elemento(L,E,L2).
eliminar_prim_aparicion([A|L],E,L) :-
    A == E.

%Bubble sort
bubble_sort(List,Sorted) :- bubble_sortAux(List,[],Sorted).

bubble_sortAux([],A,A).
bubble_sortAux([H|T],A,S) :-
    bubble(H,T,N,M),
    bubble_sortAux(N,[M|A],S).

bubble(X,[],[],X).
bubble(X,[Y|T],[Y|N],M) :- X > Y ,bubble(X,T,N,M).
bubble(X,[Y|T],[X|N],M) :- X =< Y ,bubble(Y,T,N,M).

%Merge sort
merge_sort([],[]).
merge_sort([X],[X]).
merge_sort(L,S):-
    L=[_,_|_],
    divide(L,L1,L2),
    merge_sort(L1,S1),
    merge_sort(L2,S2),
    merge(S1,S2,S).

divide(L,A,B) :- divideAux(L,L,A,B).

divideAux([],R,[],R).
divideAux([_],R,[],R).
divideAux([_,_|T],[X|L],[X|L1],R) :- divideAux(T,L,L1,R).

