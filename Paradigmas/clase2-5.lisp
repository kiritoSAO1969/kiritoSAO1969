(defun secondList (lista)
    (car (cdr lista))
)  ; Toma el segundo elemento de la lista

(secondList '(1 2 3 4 5))  ; Llamada correcta


(setq m'(A (B C) D E))  ;Declaracion de lista
(cadr m)    ;Devuelve segundo elemento lista  --Otra forma de llamar a CAR es FIRST
(caddr m)   ;Devuelve el tercer elemento de la lista --Otra forma de llamar a CDR es REST

(nth 0 m)   ;Devuelve un elemento especifico de la lista --Los elementos de las listas empiezan desde 0
(nth 2 m)   ;Devuelve el segundo elemento de la lista
(nth 8 m)   ;Devuelve el elemento fuera de la lista --Devuelve NIL si el elemento no existe
(nthcdr 0 m) ;Devuelve una lista a partir del elemento en el que indiquemos, en este caso desde el inicio
(nthcdr 8 m)    ;Devuelve una lista vacia --Devuelve una lista vacia si el elemento no existe
(last m)    ;Devuelve el ultimo elemento de la lista pero en formato lista
(length m)  ;Devuelve el largo (cantidad de elementos) de la lista

(setq l'(defun suma (x y) (+ x y))) ;Iniciaslizacion de lista que tiene simbolos de funcion
(nth 2 l)   ;Devuelve el tercer valor de la lista
(nthcdr 2 l)    ;Devuelve desde el tercer al ultimo elemento de la lista
(last l)    ;Devuelve el ultimo elemento de la lista
(length l)  ;Devuelve el largo de la lista

(setq n '(+ 2 3)) ;Crea lista
(Setq n (+ 2 3)) ;Cambia el valor de la lista




(setq lista2 '(agua papel dinero tierra))
(print (nth 2 lista2))

(setq lista2 '((agua papel) dinero tierra))
(print (nth 1 lista2))

(setq lista2 '((agua papel) (dinero tierra)))
(print (first (nth 1 lista2)))

(defun ultiList (lista)
    (car (last lista))
)

(setq lista2 '(agua (papel dinero) tierra))
(print (ultilist (nth 1 lista2)))

(setq lista2 '((agua papel) ((dinero) tierra)))
(print (caar (nth 1 lista2)))
