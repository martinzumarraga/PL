es_un(ave, animal).
es_un(mamifero, animal).
es_un(flamenco, ave).
es_un(albatros, ave).
es_un(ballena, mamifero).
es_un(tigre, mamifero).

atributo(flamenco, patas, largas).
atributo(flamenco, vive_en, marisma).
atributo(albatros, come, peces).
atributo(ballena, come, plancton).
atributo(ballena, vive_en, mar).
atributo(tigre, come, carne).
atributo(ave, pone, huevos).
atributo(ave, tiene, plumas).
atributo(ave, vuela, bien).
atributo(mamifero, tiene, piel).
atributo(mamifero, da, leche).
atributo(animal, puede, respirar).

mostrarAtributos(X,Y,Z):- atributo(X,Y,Z).
mostrarAtributos(X,Y,Z):- heredar(X,Y,Z).

heredar(X,Y,Z):-  es_un(X,K),mostrarAtributos(K,Y,Z).
