:- dynamic mensaje/4,
	cont/1.
buzon :- write(>), read(Comando), resolver_comando(Comando).

resolver_comando(nuevo):-
        retract(cont(Numero)),!,
	write('Escibe tu nombre:'),
	read(Nombre),
	write('Escibe tu mensaje:'),
	read(Mensaje),
	X is Numero + 1,
	assert(cont(X)),
	assert(mensaje(X,Nombre,Mensaje,true)),
	buzon.
resolver_comando(nuevo):-
    assert(cont(0)),
    resolver_comando(nuevo).
resolver_comando(listar_todos) :-
    findall([X,Nombre],mensaje(X,Nombre,_,_),L),
    listar(L),
    buzon.
resolver_comando(listar_nuevos):-
    findall([X,Nombre],mensaje(X,Nombre,_,true),L),
    listar(L),
    buzon.
resolver_comando(leer(X)) :-
    mensaje(X,_,Mensaje,_),
    cambiarEstado(X),
    write(Mensaje),
    buzon.
resolver_comando(borrar(X)) :-
    retract(mensaje(X,_,_,_)),
    findall(mensaje(Y,Nombre,Mensaje,Bool),mensaje(Y,Nombre,Mensaje,Bool),L),
    actualizar(L,X),
    retract(cont(Num)),
    Numero is Num-1,
    assert(cont(Numero)),
    buzon.
resolver_comando(adios).

%Hace write de todos los elementos de la lista.
%(in)
listar([]).
listar([[X,Y]|L]) :-
    cambiarEstado(X),
    write(X+'. '+Y+'\n'),
    listar(L).

% Cambia el estado que referencia si el mensaje es nuevo o antiguo.
% (in)
cambiarEstado(X) :-
    retract(mensaje(X,Nombre,Mensaje,true)), !,
    assert(mensaje(X,Nombre,Mensaje,false)).
cambiarEstado(_).


%Actualiza los numeros de los mensajes mayores que X.
%(in,in)
actualizar([],_).
actualizar([mensaje(Y,_,_,_)|L],X) :-
    Y < X ,! ,
    actualizar(L,X).
actualizar([mensaje(Y,Nombre,Mensaje,Bool)|L],X) :-
    retract(mensaje(Y,_,_,_)),
    assert(mensaje(X,Nombre,Mensaje,Bool)),
    Num is X+1,
    actualizar(L,Num).
