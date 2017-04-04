hombre(enrique8).
hombre(enrique7).
hombre(arturo).
hombre(eduardo).

mujer(margarita).
mujer(maria).
mujer(isabel).
mujer(isabel_de_York).
mujer(ana).
mujer(catalina).
mujer(juana).

padre(enrique7,enrique8).
padre(enrique7,arturo).
padre(enrique7,margarita).
padre(enrique8,maria).
padre(enrique8,isabel).
padre(enrique8,eduardo).

madre(isabel_de_York,enrique8).
madre(isabel_de_York,arturo).
madre(isabel_de_York,margarita).
madre(catalina,maria).
madre(ana,isabel).
madre(juana,eduardo).

progenitor(X,Padre):- padre(Padre,X).
progenitor(X,Madre):- madre(Madre,X).

antepasado(X,Y):- progenitor(X,Y).
antepasado(X,Y):-
    progenitor(X,Z),
    antepasado(Z,Y).

descendente(X,Y):- progenitor(Y,X).
descendente(X,Y):-
    progenitor(Z,X),
    descendente(Z,Y).

hermano(X,Y):-
    padre(Padre,X), %Podria ser madre(Madre,X)
    progenitor(Y,Padre),
    hombre(Y),
    dif(X,Y).

hermana(X,Y):-
    padre(Padre,X), %Podria ser madre(Madre,X)
    progenitor(Y,Padre),
    mujer(Y),
    dif(X,Y).

abuelo(X,Y):-
    progenitor(X,Z),
    progenitor(Z,Y),
    hombre(Y).

abuela(X,Y):-
    progenitor(X,Z),
    progenitor(Z,Y),
    mujer(Y).

nieto(X,Y):-
    progenitor(Z,X),
    progenitor(Y,Z),
    hombre(Y).

nieta(X,Y):-
    progenitor(Z,X),
    progenitor(Y,Z),
    mujer(Y).


dif(X,Y):-
    X \= Y.
