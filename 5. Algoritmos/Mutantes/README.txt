ENUNCIADO

Dada la base de conocimiento de animales siguiente

animal(toro).
animal(perro).
animal(sapo).
animal(potro).
animal(rana).
animal(osa).
animal(ara�a).

escribe un programa Prolog que combine palabras, siempre y cuando el comienzo de una de ellas corresponda con el final de la otra (esto es, una o varias letras comunes). Por ejemplo: las palabras "sapo" y "potro" se podr�an combinar dando lugar a "sapotro". 
Nota: un mismo animal no puede aparecer varias veces en la misma palabra. Por ejemplo la palabra "osaposa" que nace como combinaci�n de osa-sapo-osa no debe construirse. 

Algunos ejemplos de palabras que pueden construirse con la base de animales presentada ser�an:

torosapotro que viene de toro-osa-sapo-potro
torosara�a que viene de toro-osa-ara�a
perrosara�a que viene de perro-osa-ara�a
sapotrosara�a que viene de sapo-potro-osa-ara�a
saposara�a que viene de sapo-osa-ara�a