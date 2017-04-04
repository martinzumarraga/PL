ruta(york, bristol).
ruta(york, leeds).
ruta(coventry, york).
ruta(oxford, bristol).
ruta(bristol, coventry).
ruta(bristol,york).
ruta(york,coventry).
ruta(coventry, leeds).
ruta(leeds, oxford).
ruta(oxford, leeds).
ruta(oxford, coventry).

circuito_hamiltoniano(Init,T) :-
    findall(Init2,ruta(Init2,_),L),
    count(L,[],Count),
    CountAux is Count-1,
    calcularCircuito([Init],Init,CountAux,T).

calcularCircuito(T,Init,0,[Fin|T]):- ruta(Init,Fin),ultimoIgual(T,Fin), !.
calcularCircuito(L,Init,Count,T):-
    ruta(Init,Fin),
    not(repetido(Fin,L)),
    Count2 is Count-1,
    calcularCircuito([Fin|L],Fin,Count2,T).

count([],_,0):-!.
count([X|L1],L2,Count2):-
    not(repetido(X,L2)), !,
    count(L1,[X|L2],Count),
    Count2 is Count+1.
count([_|L1],L2,L):- count(L1,L2,L).

repetido(X, [X|_]).
repetido(X, [_|L]):-
          repetido(X, L).

ultimoIgual([X|L],X) :- L==[],!.
ultimoIgual([_|L],_) :- L==[],!,fail.
ultimoIgual([X|_],X) :- fail.
ultimoIgual([_|L],X) :- ultimoIgual(L,X).
