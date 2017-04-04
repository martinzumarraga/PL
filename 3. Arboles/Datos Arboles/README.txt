ENUNCIADO

Estas preguntas sirven para repasar conceptos vistos en clase.

2.1. Partiendo del siguiente procedimiento PROLOG, proc: 
1. proc([X|Y], L):- proc(Y, R), concatenar(R, [X], L). 
2. proc([ ], [ ]). 
a) �Existe recursi�n a izquierdas? �Porqu�? Procura contestar observando �nicamente el programa. 
b) Ahora desarrolla el �rbol de llamadas que se genera con la pregunta ?proc([1, 2, 3], X). �Qu� sucede?

2.2. Dado el siguiente programa: 
1. fact(N, Y):- M is N-1, fact(M, Z), Y is Z*N. 
2. fact(0, 1). 
a) Desarrolla el �rbol de llamadas para la pregunta ?fact(5,M).�Qu� sucede? 
b) �C�mo podr�as solucionar ese problema? 
c) �Es suficiente con cambiar de orden las reglas 1 y 2? �qu� pasa si se pide m�s de una soluci�n?

2.3. Desarrollo de �rboles de llamadas. En cada paso del desarrollo del �rbol se indicar� claramente, 
el unificador m�s general, con el valor de cada variable en la unificaci�n. Se procurar� reutilizar 
resultados de sub�rboles desarrollados para la pregunta (con el objetivo de no reescribir informaci�n conocida).

2.3.1. Dado el siguiente programa PROLOG an�nimo, 
1. anonimo(X, [ ], Y, [ ]). 
2. anonimo(X, [X| Z], Y, [Y| N]) :- anonimo(X, Z, Y, N). 
3. anonimo(X, [Y| Z], T, [Y| V]) :- anonimo(X, Z, T, V).
a) Desarrolla el �rbol generado por PROLOG, s�lo la parte correspondiente a la primera soluci�n, al realizar 
la siguiente pregunta: ?anonimo(a, [b, a, c, a], f, X). 
b) �Cu�les son las respuestas de PROLOG a la pregunta? 
c) Considerando �nicamente la primera respuesta como v�lida, �Qu� hace el predicado an�nimo?
2.3.2. Dado el siguiente programa: 
1. anonimo(X, [ ], X). 
2. anonimo(X, [Y| U], Z) :- member(Y,X), anonimo(X, U, Z). 
3. anonimo(X, [Y| U], [Y| Z]):- anonimo(X, U, Z).
a) Desarrolla el �rbol completo que generar�a PROLOG para la siguiente pregunta mostrando claramente todas 
las posibles soluciones: ?anonimo([1, 3, 2], [2, 3], R). (Nota: Evita desarrollar sub�rboles ya generados; 
utiliza simplemente sus soluciones)
b) Suponiendo la primera soluci�n como v�lida, �qu� hace este programa? 
c) �Qu� comportamiento muestra este programa, recursivo o iterativo? �Por qu�?

2.3.3. Dado el siguiente programa:
1. anonimo([], []).
2. anonimo([X| Y], R) :- anonimo(Y, M), anon(X, M, R). 
3. anon(X, [], [X]). 
4. anon(X, [Y| Z], [X,Y| Z]):- X =< Y. 
5. anon(X, [Y| U], [Y| Z]) :- X>Y, anon(X, U, Z).
a) Desarrolla el �rbol completo que generar�a PROLOG para la siguiente pregunta mostrando claramente todas 
las posibles soluciones: ?anonimo([3, 2, 1], R).
b) �Qu� hace el programa consider�ndolo en llamadas en modo (in, out)?.

