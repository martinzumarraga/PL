ENUNCIADO

Construye un programa Prolog que realice la gesti�n interactiva del buz�n de mensajes que se detalla a continuaci�n.
Los mensajes se componen de tres campos:
- n�mero del mensaje. Cada mensaje posee un n�mero distinto que se le asigna seg�n el orden de llegada.
- nombre del remitente: un string con el nombre.
- cuerpo del mensaje: texto de contenido del mensaje. Es un string.

Para trabajar con este gestor de buz�n se realizar� la llamada ?buzon. , entonces el programa Prolog har� aparecer 
la marca ">", esperar� la llegada de un comando y resolver� tal comando. Por ejemplo:

buzon :- write(>), read(Comando), resolver_comando(Comando).

Se pueden solicitar los siguientes comandos:

(a) nuevo: para dejar un mensaje nuevo. Por cada mensaje nuevo se pedir� el nombre y cuerpo y se le asignar� 
el n�mero que le corresponda. Ejemplo, supongamos que ya hay en el buz�n dos mensajes, el nuevo mensaje se 
guardar� con el n�mero 3.
Forma de funcionar de este comando:

> nuevo
Escribe tu nombre: 
'Juan'
Escribe tu mensaje: 
'hola, quedamos a las ocho en el bar'

(b) listar_todos: para listar todos los mensajes que hay en el buz�n en orden num�rico. Se lista una l�nea 
por mensaje que dice el n�mero y el remitente. Ejemplo:

> listar_todos
1 Andres
2 Pepa
3 Juan

(c) listar_nuevos: para listar los mensajes nuevos (que todav�a no se han leido) en orden num�rico. Por ejemplo, 
si el �nico mensaje nuevo es el de Juan:

> listar_nuevos
3 Juan

(d) leer(X): mostrar� el cuerpo del mensaje n� X y se dar� por le�do, ya no constar� m�s como nuevo. Ejemplo:

> leer(3)
hola, quedamos a las ocho en el bar.
> listar-nuevos
>

(e) borrar(X): borrar� el mensaje con n�mero X. Adem�s se deber�n renumerar todos los mensajes con n�mero mayor que X.

> borrar(1)
> listar-todos
1 Pepa
2 Juan

(f) adios: se acaba la sesi�n con el buz�n. Los mensajes quedan en la base de cl�usulas de Prolog hasta la pr�xima 
sesi�n del buz�n.

> adios