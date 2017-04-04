ENUNCIADO

Implementa los siguientes predicados sobre listas:

1.1. es_lista_vacia(L); L es una lista vacía.

1.2. listas_iguales(L1, L2); L1 y L2 son dos listas iguales.

1.3. concatenar(L1, L2, L); L es la lista resultante de concatenar las listas L1 y L2.

1.4. miembro(E, L); el elemento E es miembro de la lista L.

1.5. adyacentes(E1, E2, L); Los elementos E1 y E2 pertenecen a la lista L y además está E2 inmediatamente después de E1.

1.6. último(E, L); E es el último elemento de la lista L.

1.7. Definir los predicados 1.4., 1.5, y 1.6. utilizando el predicado concatenar(L1, L2, L);

1.8. palíndromo(L); comprueba si L es palíndromo. Una lista es palíndromo si es la misma en ambos sentidos.

1.9. longitud(L, N); N es la longitud de la lista L.

1.10. prefijo(L, P); P es una lista con los primeros elementos, prefijo, de la lista L.

1.11. sufijo(L, S); S es una lista con los últimos elementos, sufijo, de la lista L.

1.12. sublista(L, S); S es una sublista de L. Ej: S=[2,3,6] es sublista [1,2,3,6,9,7] pero S no es sublista de [1,2,3,5,6,9].

1.13. máximo(L, M); M es el máximo de una lista L no vacía de enteros positivos.

1.14. añadir_por_delante(L, E, R); R es la lista resultado de añadir el elemento E por delante a la lista L.

1.15. añadir_por_detrás(L, E, R); R es la lista resultado de añadir el elemento E por detrás a la lista L.

1.16. eliminar_elemento(L, E, R); R es la lista resultado de eliminar todas las apariciones del elemento E en la lista L.

1.17. eliminar_prim_aparición(L, E, R); R es la lista resultado de eliminar la primera aparición del elemento E en la lista L.

1.18. duplicar_lista(L, R); R es la lista L duplicada. Ej: para L=[1, 2, 3], R=[1, 2, 3, 1, 2, 3].

1.19. duplicar_elementos(L, R); R es la lista formada a partir de L, donde sus elementos se han duplicado. Ej: para L=[1, 2, 3], R=[ 1, 1, 2, 2, 3, 3].

1.20. lista_elem_repetidos(L, R); R es la lista de los elementos repetidos de L. Ej: para L=[1,3,5,1,6,1,3,7], R=[1,3].

1.21. elem_pos_par(L, P); P es la lista de los elementos que aparecen en posición par en L.

1.22. elem_pos_impar(L, I); I es la lista de elementos que aparecen en posición impar en L.

1.23. impar_par(L, I, P); I es la lista de los elementos que aparecen en posición impar en L y P los de posición par.

1.24. O es la lista L ordenada. Utiliza diferentes métodos de ordenación, como bubblesort(L, O), mergesort(L, O), quicksort(L, O), etc.