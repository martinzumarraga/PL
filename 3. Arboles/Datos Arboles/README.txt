ENUNCIADO

Estas preguntas sirven para repasar conceptos vistos en clase.

2.1. Partiendo del siguiente procedimiento PROLOG, proc: 
1. proc([X|Y], L):- proc(Y, R), concatenar(R, [X], L). 
2. proc([ ], [ ]). 
a) ¿Existe recursión a izquierdas? ¿Porqué? Procura contestar observando únicamente el programa. 
b) Ahora desarrolla el árbol de llamadas que se genera con la pregunta ?proc([1, 2, 3], X). ¿Qué sucede?

2.2. Dado el siguiente programa: 
1. fact(N, Y):- M is N-1, fact(M, Z), Y is Z*N. 
2. fact(0, 1). 
a) Desarrolla el árbol de llamadas para la pregunta ?fact(5,M).¿Qué sucede? 
b) ¿Cómo podrías solucionar ese problema? 
c) ¿Es suficiente con cambiar de orden las reglas 1 y 2? ¿qué pasa si se pide más de una solución?

2.3. Desarrollo de árboles de llamadas. En cada paso del desarrollo del árbol se indicará claramente, 
el unificador más general, con el valor de cada variable en la unificación. Se procurará reutilizar 
resultados de subárboles desarrollados para la pregunta (con el objetivo de no reescribir información conocida).

2.3.1. Dado el siguiente programa PROLOG anónimo, 
1. anonimo(X, [ ], Y, [ ]). 
2. anonimo(X, [X| Z], Y, [Y| N]) :- anonimo(X, Z, Y, N). 
3. anonimo(X, [Y| Z], T, [Y| V]) :- anonimo(X, Z, T, V).
a) Desarrolla el árbol generado por PROLOG, sólo la parte correspondiente a la primera solución, al realizar 
la siguiente pregunta: ?anonimo(a, [b, a, c, a], f, X). 
b) ¿Cuáles son las respuestas de PROLOG a la pregunta? 
c) Considerando únicamente la primera respuesta como válida, ¿Qué hace el predicado anónimo?
2.3.2. Dado el siguiente programa: 
1. anonimo(X, [ ], X). 
2. anonimo(X, [Y| U], Z) :- member(Y,X), anonimo(X, U, Z). 
3. anonimo(X, [Y| U], [Y| Z]):- anonimo(X, U, Z).
a) Desarrolla el árbol completo que generaría PROLOG para la siguiente pregunta mostrando claramente todas 
las posibles soluciones: ?anonimo([1, 3, 2], [2, 3], R). (Nota: Evita desarrollar subárboles ya generados; 
utiliza simplemente sus soluciones)
b) Suponiendo la primera solución como válida, ¿qué hace este programa? 
c) ¿Qué comportamiento muestra este programa, recursivo o iterativo? ¿Por qué?

2.3.3. Dado el siguiente programa:
1. anonimo([], []).
2. anonimo([X| Y], R) :- anonimo(Y, M), anon(X, M, R). 
3. anon(X, [], [X]). 
4. anon(X, [Y| Z], [X,Y| Z]):- X =< Y. 
5. anon(X, [Y| U], [Y| Z]) :- X>Y, anon(X, U, Z).
a) Desarrolla el árbol completo que generaría PROLOG para la siguiente pregunta mostrando claramente todas 
las posibles soluciones: ?anonimo([3, 2, 1], R).
b) ¿Qué hace el programa considerándolo en llamadas en modo (in, out)?.

