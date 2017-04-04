%
% Fichero datosArboles
% 
% Para probar operaciones, os serán útiles los siguientes árboles.
% Por ejemplo, para probar la frontera del árbol A en dato1(A), 
% no hay más que preguntar: 
%
%    ?- dato1(A), frontera(A,F).
% 
% Similarmente con las demás operaciones: inorden, buscar, insertar, ...
% Podeis poner más ejemplos de la misma forma. Sólo los dos
% últimos árboles (en dato4 y dato5) son arboles binarios de búsqueda.


dato1(ar(ar(ar(vacio, 3, vacio), 2, ar(vacio, 4, vacio)), 3, ar(ar(vacio, 6, vacio), 1, vacio))).

%% Graficamente el dato1 es:
%%              3
%%	      /	   \
%% 	     2	    1
%%	    / \	   / \
%% 	   3  4   6   -
%%


dato2(ar(ar(ar(vacio, 3, vacio), 4, ar(vacio, 4, vacio)), 2, ar(ar(vacio, 3, vacio), 1, ar(vacio, 6, vacio)))).

%% Graficamente el dato2 es:
%%	        2
%%	      /	   \
%% 	     4	    1
%%	    / \	   / \
%% 	   3  4   3   6
%%


dato3(ar(ar(ar(vacio, 2, vacio), 3, ar(vacio, 7, vacio)), 5, ar(ar(vacio, 8, vacio), 9, ar(vacio, 10, vacio)))).

%% Graficamente el dato3 es:
%%               5
%%	      /	   \
%% 	     3	    9
%%	    / \	   / \
%% 	   2  7   8  10
%%


dato4(ar(ar(ar(vacio, 1, vacio), 2, ar(vacio, 4, vacio)), 8, ar(ar(vacio, 9, vacio), 10, ar(vacio, 20, vacio)))).

%% Graficamente el dato4 es:
%%              8
%%	      /	   \
%% 	     2	   10
%%	    / \	   / \
%% 	   1  4   9  20
%%      

dato5(ar(ar(ar(vacio, 1, vacio), 2, ar(ar(vacio,3,vacio), 4, vacio)), 8, ar(ar(vacio, 9, vacio), 10, ar(vacio, 20, vacio)))).

%% Graficamente el dato5 es:
%%              8
%%	      /	   \
%% 	     2	   10
%%	    / \	   / \
%% 	   1  4	  9  20
%%            /\
%%	     3 -
%%
