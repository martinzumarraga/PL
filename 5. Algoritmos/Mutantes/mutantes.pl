animal(osa).
animal(araña).
animal(toro).
animal(perro).
animal(sapo).
animal(potro).
animal(rana).

mutantes(T) :-
    animal(X),
    name(X,L),
    mutante(L,[X],Q),
    name(T,Q).

proma(T):- animal(T).

mutante(L,L2,T):-
    animal(Y),
    not(repetido(Y,L2)),
    name(Y,L3),
    colectar(L,L3,K), !,
    concatenar(L,K,L4),
    mutante(L4,[Y|L2],T).
mutante(T,[_|L],T):- L\=[].

%Mira si un elemento X existe en la lista L.
%(in,in)
repetido(X, [X|_]).
repetido(X, [_|L]):-
          repetido(X, L).

%Concatena dos listas.
%(in,in,out)
concatenar([], List, List).
concatenar([Head|Tail], List, [Head|Rest]) :-
    concatenar(Tail, List, Rest).

% Si la lista L y L2 tienen parte del final de L y parte del principio de
% L2 en común se devuelve la parte sobrante de la lista L2.
%(in,in,out)
colectar(L,L2,Res) :-
    cogerFinal(L,L3,X),
    buscar(X,L2,0,Pos),
    Comienzo is Pos-1,
    empezarColecta(L3,L2,Comienzo),
    cogerResto(L2,Pos,Res).

% Coge el ultimo valor de la lista L, tambien devuelve el sobrante de la
% lista.
% (in,out,out)
cogerFinal([X|L],[],X) :- L == [].
cogerFinal([Y|L],[Y|X],Res) :- cogerFinal(L,X,Res).

% Busca la primera aparición del valor X en la lista L y devuelve la
% posición.
% (in,in,in,out)
buscar(_,[],_,_) :- !,fail.
buscar(X,[X|_],Cont,Pos):-
    Pos is Cont+1, !.
buscar(X, [_|L],Cont,Pos) :-
    Cont2 is Cont+1,
    buscar(X,L,Cont2,Pos).

% Mira que el valor de la posición Count y menores(hasta 1) de la lista
% L2 sea igual al valor de las ultimas posiciones de L.
% (in,in,in)
empezarColecta(_,_,0):-!.
empezarColecta(L,L2,Count):-
    cogerFinal(L,L3,X),
    cogerPosicion(L2,Count,Y),
    X==Y,
    Count2 is Count-1,
    empezarColecta(L3,L2,Count2).

%Coge de la lista L el valor de la posicion Count.
%(in,in,out)
cogerPosicion([],_,_):- !,fail.
cogerPosicion([X|_],1,X) :- !.
cogerPosicion([_|L],Count,X) :-
    Count2 is Count-1,
    cogerPosicion(L,Count2,X).

%Coje de la lista L las pasiciones a partir de la posición Count.
%(in,in,out)
cogerResto(L,0,L).
cogerResto([_|L],Count,Res) :-
    Count2 is Count-1,
    cogerResto(L,Count2,Res).

