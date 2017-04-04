ENUNCIADO

Supongamos que la Hacienda Foral y la Hacienda Estatal deciden tener una �nica base de deudores uniendo las 
bases de datos que ambas poseen.

La Hacienda Foral mantiene un hecho en la base, por cada persona deudora, con los siguentes datos: DNI, nombre, 
direcci�n y deuda (expresada en euros), tal como el que sigue:

d_foral( dni(13000999), nombre('Pepe Gonzalez'), direccion('Palm 1,Donosti'), deuda(2000))

De la misma manera la Hacienda Estatal mantiene una base de deudores con hechos de parecido formato: 

d_estatal(dni(13000999), nombre('Pepe Gonzalez'),direccion('Palm 1,Donosti'), deuda(3000))

Puede haber un deudor que pertenezca a ambas bases de hechos; como en el caso de 'Pepe Gonzalez'.

Se pide realizar las siguientes operaciones y mostrar el resultado adecuadamente mediante un fichero Prolog de pruebas:

a) Borrar las dos bases de deudores creando una nueva base de datos como uni�n de las anteriores. Adem�s, 
si un deudor pertenec�a a las dos bases de datos aparecer� una �nica vez en la nueva base con una deuda 
igual a la suma de las deudas.
Por ejemplo, el deudor 'Pepe Gonzalez' que pertenec�a a las dos bases de datos aparecer� en la nueva representado 
por el hecho:

deudor(dni(13000999), nombre('Pepe Gonzalez'),direccion('Palm 1, Donosti'), deuda(5000))

b) Decir cu�l es la cantidad de dinero total que deben los deudores

c) Dar el n�mero de deudores que deben m�s de 2000 euros.

d) Dar el nombre de los dos deudores de la nueva base que deben m�s dinero.

Y finalmente (este apartado es optativo):

e) Borrar los elementos de la base actual y crear una nueva base de forma que exista un hecho distinto 
para cada deudor que diga que posici�n ocupa entre los deudores atendiendo a su deuda con hacienda. 

Explicaci�n del apartado e):

Supongamos que el deudor 'Pepe Gonz�lez' es el que m�s debe. Se borrar� el hecho actual:

deudor(dni(13000999), nombre('Pepe Gonzalez'),direccion('Palm 1, Donosti'), deuda(5000))

y se crear� el siguiente hecho:

deudor1(dni(13000999), nombre('Pepe Gonzalez'),direccion('Palm 1, Donosti'), deuda(5000))

Si ocupase el lugar 9 en la lista de deudores se crear�a el hecho:


deudor9(dni(13000999), nombre('Pepe Gonzalez'),direccion('Palm 1, Donosti'), deuda(5000))


NOTA: para realizar esta �ltima tarea se recomienda usar el predicado "=.." y el predicado gensym, 
ambos predefinidos. El predicado gensym tiene aridad 2. El primer par�metro es un �tomo que se usa como 
ra�z y el segundo par�metro es el resultado. �ste predicado genera nombres a�adiendo enteros sucesivos a la ra�z. 
Ejemplo:
? gensym(deudor, X).
X = deudor1
? gensym(deudor, X).
X = deudor2
? gensym(deudor, X).
X = deudor3


