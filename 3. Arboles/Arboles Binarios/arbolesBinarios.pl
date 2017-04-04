nodo(N) :- integer(N).

es_arbol(vacio).
es_arbol(ar(IZD,Raiz,DCH)):- nodo(Raiz), es_arbol(IZD), es_arbol(DCH).

es_abb(ar(IZD,Raiz,DCH)) :-
    es_abbI(IZD,Raiz),
    es_abbD(DCH,Raiz).

% De entrada un arbol y un elemento. De esta manera se decide si el
% elemento del arbol es mayor que el elemento introducido.
% (in,in)
es_abbD(ar(vacio,Raiz,vacio),Comp) :- Raiz >= Comp, !.
es_abbD(ar(vacio,Raiz,DCH),Comp) :-
    es_abbD(DCH, Raiz),
    Raiz >= Comp, !.
es_abbD(ar(IZD,Raiz,vacio),Comp) :-
    es_abbI(IZD, Raiz),
    Raiz >= Comp, !.
es_abbD(ar(IZD,Raiz,DCH),Comp) :-
     es_abbD(DCH, Raiz),
     es_abbI(IZD, Raiz),
     Raiz >= Comp.

% De entrada un arbol y un elemento. De esta manera se decide si el
% elemento del arbol es menor que el elemento introducido.
% (in,in)
es_abbI(ar(vacio,Raiz,vacio),Comp) :- Raiz =< Comp, !.
es_abbI(ar(vacio,Raiz,DCH),Comp) :-
    es_abbD(DCH, Raiz),
    Raiz =< Comp, !.
es_abbI(ar(IZD,Raiz,vacio),Comp) :-
    es_abbI(IZD, Raiz),
    Raiz =< Comp, !.
es_abbI(ar(IZD,Raiz,DCH),Comp) :-
     es_abbD(DCH, Raiz),
     es_abbI(IZD, Raiz),
     Raiz =< Comp.

insertar(ar(vacio,Raiz,vacio),Comp,ar(ar(vacio,Comp,vacio),Raiz,vacio)) :- Comp =<Raiz, !.
insertar(ar(vacio,Raiz,vacio),Comp,ar(vacio,Raiz,ar(vacio,Comp,vacio))) :- !.
insertar(ar(vacio,Raiz,DCH),Comp,ar(ar(vacio,Comp,vacio),Raiz,DCH)) :- Comp =<Raiz, !.
insertar(ar(vacio,Raiz,DCH),Comp,ar(vacio,Raiz,ar(vacio,Comp,Res))) :-
    !,
    insertar(DCH,Comp, Res).
insertar(ar(IZD,Raiz,vacio),Comp,ar(Res,Raiz,vacio)) :-
    Comp =<Raiz, !,
    insertar(IZD,Comp,Res).
insertar(ar(IZD,Raiz,vacio),Comp,ar(IZD,Raiz,ar(vacio,Comp,vacio))) :- !.
insertar(ar(IZD,Raiz,DCH),Comp,ar(Res,Raiz,DCH)) :-
    Comp =< Raiz,
    insertar(IZD,Comp,Res).
insertar(ar(IZD,Raiz,DCH),Comp,ar(IZD,Raiz,Res)) :-
    insertar(DCH,Comp,Res).

% De entrada dos erboles. De salida el primer arbol introducido en el
% segundo.
% (in,in,out)
insertar2(ar(vacio,X,vacio),A,Res) :- insertar(A,X,Res),!.
insertar2(ar(IZD,X,vacio),A,Res) :-
    insertar(A,X,Res2),
    insertar2(IZD,Res2,Res),!.
insertar2(ar(vacio,X,DCH),A,Res) :-
    insertar(A,X,Res2),
    insertar2(DCH,Res2,Res),!.
insertar2(ar(IZD,X,DCH),A,Res) :-
    insertar(A,X,Res2),
    insertar2(IZD,Res2,Res3),
    insertar2(DCH,Res3,Res).


borrar(ar(vacio,Raiz,vacio),Raiz,vacio) :- !.
borrar(ar(vacio,Raiz,vacio),_,ar(vacio,Raiz,vacio)) :- !.
borrar(ar(IZD,Raiz,vacio),Raiz,IZD) :- !.
borrar(ar(IZD,Raiz,vacio),Comp,ar(Res,Raiz,vacio)) :- !, borrar(IZD,Comp,Res).
borrar(ar(vacio,Raiz,DCH),Raiz,DCH) :- !.
borrar(ar(vacio,Raiz,DCH),Comp,ar(vacio,Raiz,Res)) :- !,
       borrar(DCH,Comp,Res).
borrar(ar(IZD,Raiz,DCH),Raiz,Res):- insertar2(IZD,DCH,Res),!.
borrar(ar(IZD,Raiz,DCH),Comp,ar(Res1,Raiz,Res2)) :-
    borrar(IZD,Comp,Res1),
    borrar(DCH,Comp,Res2).

busca(A,B):- busca(A,B,Res),Res.

% De entrada un arbol y un elemento, y de salida un booleano referente de que el elemento esta en el arbol.
% (in,in,out)
busca(ar(_,Raiz,_),Raiz,true) :- !.
busca(ar(IZD,_,vacio),Comp,Res):- !, busca(IZD,Comp,Res).
busca(ar(vacio,_,DCH), Comp,Res) :- !, busca(DCH,Comp,Res).
busca(ar(IZD,_,DCH),Comp,true):-
    busca(IZD,Comp,Res1),
    busca(DCH,Comp,Res2),
    member(true,[Res1,Res2]),!.
busca(_,_,false).

crear_abb([], vacio).
crear_abb([X|L], Res) :- crear_abb(L,ar(vacio,X,vacio),Res).

% De entrada una lista y un arbol, t de salida un arbol con los
% elementos de la lista insertados en el arbol
%(in,in,out)
crear_abb([],A,A):-!.
crear_abb([X|L],A,Res) :-
    insertar(A,X,Res2),
    crear_abb(L,Res2,Res),!.
