:- dynamic d_estatal/4,
    d_foral/4,
    deudor/4.

borrar :-
    findall(DNI,d_foral(dni(DNI),_,_,_),Foral),
    findall(DNI2,d_estatal(dni(DNI2),_,_,_),Estatal),
    unirForal(Foral),
    unirEstatal(Estatal).

unirForal([]) :-!.
unirForal([DNI|L]) :-
    retract(d_foral(dni(DNI),Nombre,Direccion,Deuda)),
    assert(deudor(dni(DNI),Nombre,Direccion,Deuda)),
    unirForal(L).

unirEstatal([]):-!.
unirEstatal([DNI|L]) :-
    retract(deudor(dni(DNI),Nombre,Direccion,deuda(Deuda))), !,
    retract(d_estatal(dni(DNI),_,_,deuda(Deuda2))),
    DeudaTotal is Deuda+Deuda2,
    assert(deudor(dni(DNI),Nombre,Direccion,deuda(DeudaTotal))),
    unirEstatal(L).
unirEstatal([DNI|L]) :-
    retract(d_estatal(dni(DNI),Nombre,Direccion,Deuda)),
    assert(deudor(dni(DNI),Nombre,Direccion,Deuda)),
    unirEstatal(L).

deudaTotal:-
    findall(Deuda,deudor(_,_,_,deuda(Deuda)),ListaDeuda),
    sumar(ListaDeuda,DeudaTotal),
    write(DeudaTotal).

%Suma todos los numeros de una lista
%(in,out)
sumar([],0).
sumar([Deuda|L],DeudaTotal) :-
    sumar(L,Result),
    DeudaTotal is Deuda+Result.


deudaMayor :-
     findall(Deuda,deudor(_,_,_,deuda(Deuda)),ListaDeuda),
     contar(ListaDeuda,Result),
     write(Result).

%Cuenta cuantos elementos de una lista son mayores o iguales que 2000
%(in,out)
contar([],0) :- !.
contar([Deuda|L],Result):-
    Deuda >= 2000, !,
    contar(L,Res),
    Result is Res+1.
contar([_|L],Result) :- contar(L,Result).

mayoresDeudores :-
    findall([Nombre,Deuda],deudor(_,nombre(Nombre),_,deuda(Deuda)),ListaDeuda),
    calcularDeudores(ListaDeuda,[['Nadie',0],['Nadie',0]],Result),
    write(Result).

%Calcula los mayores deudores de una lista.
%(in,in,out)
calcularDeudores([],Result,Result):-!.
calcularDeudores([[Nombre,Deuda]|L],[[_,X],[Nom2,X2]],Result):-
    X =< X2,
    Deuda > X, !,
    calcularDeudores(L,[[Nombre,Deuda],[Nom2,X2]],Result).
calcularDeudores([[Nombre,Deuda]|L],[[Nom,X],[_,X2]],Result):-
    X2 < X,
    Deuda > X2, !,
    calcularDeudores(L,[[Nom,X],[Nombre,Deuda]],Result).
calcularDeudores([_|L],X,Result) :- calcularDeudores(L,X,Result).
