ENUNCIADO

Construye un programa Prolog que realice la gestión interactiva del buzón de mensajes que se detalla a continuación.
Los mensajes se componen de tres campos:
- número del mensaje. Cada mensaje posee un número distinto que se le asigna según el orden de llegada.
- nombre del remitente: un string con el nombre.
- cuerpo del mensaje: texto de contenido del mensaje. Es un string.

Para trabajar con este gestor de buzón se realizará la llamada ?buzon. , entonces el programa Prolog hará aparecer 
la marca ">", esperará la llegada de un comando y resolverá tal comando. Por ejemplo:

buzon :- write(>), read(Comando), resolver_comando(Comando).

Se pueden solicitar los siguientes comandos:

(a) nuevo: para dejar un mensaje nuevo. Por cada mensaje nuevo se pedirá el nombre y cuerpo y se le asignará 
el número que le corresponda. Ejemplo, supongamos que ya hay en el buzón dos mensajes, el nuevo mensaje se 
guardará con el número 3.
Forma de funcionar de este comando:

> nuevo
Escribe tu nombre: 
'Juan'
Escribe tu mensaje: 
'hola, quedamos a las ocho en el bar'

(b) listar_todos: para listar todos los mensajes que hay en el buzón en orden numérico. Se lista una línea 
por mensaje que dice el número y el remitente. Ejemplo:

> listar_todos
1 Andres
2 Pepa
3 Juan

(c) listar_nuevos: para listar los mensajes nuevos (que todavía no se han leido) en orden numérico. Por ejemplo, 
si el único mensaje nuevo es el de Juan:

> listar_nuevos
3 Juan

(d) leer(X): mostrará el cuerpo del mensaje nº X y se dará por leído, ya no constará más como nuevo. Ejemplo:

> leer(3)
hola, quedamos a las ocho en el bar.
> listar-nuevos
>

(e) borrar(X): borrará el mensaje con número X. Además se deberán renumerar todos los mensajes con número mayor que X.

> borrar(1)
> listar-todos
1 Pepa
2 Juan

(f) adios: se acaba la sesión con el buzón. Los mensajes quedan en la base de cláusulas de Prolog hasta la próxima 
sesión del buzón.

> adios