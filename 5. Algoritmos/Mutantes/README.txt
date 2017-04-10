ENUNCIADO

Dada la base de conocimiento de animales siguiente

animal(toro).
animal(perro).
animal(sapo).
animal(potro).
animal(rana).
animal(osa).
animal(araña).

escribe un programa Prolog que combine palabras, siempre y cuando el comienzo de una de ellas corresponda con el final de la otra (esto es, una o varias letras comunes). Por ejemplo: las palabras "sapo" y "potro" se podrían combinar dando lugar a "sapotro". 
Nota: un mismo animal no puede aparecer varias veces en la misma palabra. Por ejemplo la palabra "osaposa" que nace como combinación de osa-sapo-osa no debe construirse. 

Algunos ejemplos de palabras que pueden construirse con la base de animales presentada serían:

torosapotro que viene de toro-osa-sapo-potro
torosaraña que viene de toro-osa-araña
perrosaraña que viene de perro-osa-araña
sapotrosaraña que viene de sapo-potro-osa-araña
saposaraña que viene de sapo-osa-araña