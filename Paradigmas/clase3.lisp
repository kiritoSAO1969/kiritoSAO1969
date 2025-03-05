;CREACION DE LISTAS CON CONS
(cons 'A '(B C D))  ;Construye la lista cuyo primer car es A y CDR es B C D
(print (cons 'A '(B C D)))  ;Imprime la lista
(cons '(A B) '(C D)) ;Construye la lista cuyo car es (A B) y CDR es C D, como el car es A B lo coloca en formato lista
(print (cons '(A B) '(C D))) ;Imprime la lista
(cons 'JB (cons 0 (cons 0 (cons 7 nil)))) ;Construye lista pero nil no se considera entonces soloes hasta 7
(print (cons 'JB (cons 0 (cons 0 (cons 7 nil))))) ;Imprime la lista
(cons (car '(A B)) (cdr '(B C))) ;Construye una lista con primer elemento el car de la lista es A y cdr es C
(print (cons (car '(A B)) (cdr '(B C)))) ;Imprime la lista

;CREACION DE LISTAS CON LIST
(defparameter L (cons (- 5 3) '(Es un numero))) ;Define variable en tipo lista donde el car es 2 y el cdr es Es un numero
(print L) ;Imprime la lista
(cons '7+ L) ;Crea una lista con elementos como 7+ como car y L como cdr
(print (cons '7+ L)) ;Imprime la lista
(list 'A 'B 'C) ;Crea una lista tomando el orden en que se colocaron los elementos es decir A B C
(print (list 'A 'B 'C)); Imprime la lista
(list 'A 1 'B 2) ;Crea una lista tomando el orden en que se colocaron los elementos es decir A 1 B 2
(print (list 'A 1 'B 2)) ;Imprime la lista
(setq L (list 'El 'Numero 3)); Crea una variable asignandole una lista con los elementos El numero
(print L)
(list (car L) 'Digito (caddr L)) ;Crea una lista con el car de L que es El, Digito, 3
(print (list (car L) 'Digito (caddr L))) ;Imprime la lista
(list '* (+ 2 3) '(/ x z)) ;Crea una lista con los elementos los elementos en parentesis los coloca directamente asi
(print (list '* (+ 2 3) '(/ x z))) ;Imprime la lista

;CONCATENACION DE LISTAS CON APPEND
(append '(A B) '(C D)) ;Concatena dos lista en el orden en que se colocan
(print (append '(A B) '(C D))) ;Imprime la lista
(append (list '* (+ 2 3)) '(4 5)) ;Concatena en la lista creada con list y la lista creada con append es decir * 5 4 5, esto sucede
                                    ;porque appen saca los elementos de las listas y los une en una sola
(print (append (list '* (+ 2 3)) '(4 5))) ;Imprime
(append nil '(A B)) ;Concatena una lista vacia con A B
(print (append nil '(A B))) ;Imprime la lista
(append '(A B) nil) ;Concatena una lista con una lista vacia
(print (append '(A B) nil)) ;Imprime la lista

;RESUMEN
(cons '(A B) '(C D)) ;Creacion de listas con car como lista y cdr como lista, el car siempre se coloca en parentesis si son mas de dos elementos
(print (cons '(A B) '(C D))) ;Imprime la lista ((A B) C D)
(list '(A B) '(C D))   ;Creacion de lista toma los elementos como tal es decir los parentesi igual
(print (list '(A B) '(C D))) ;Imprime la lista  ((A B) (C D))
(append '(A B) '(C D)) ;Conctenacion de listas sacando los elementos y los junta en una
(print (append '(A B) '(C D))) ;Imprime la lista (A B C D)

;OPERACIONES DE PUSH Y POP
(setq L '(Y Z)) ;Creacion de una lista
(print L) ;Imprime la lista
(push 'x L) ;Añade un elemento al inicio de la lista
(print L) ;Imprime la lista con ya el elemento X añadido
(setq A '(X Y Z)) ;Creacion de una lista
(pop A) ;Saca el primer elemento de la lista, si se imprime me indica el elemento de la lista
(print A) ;Imprime la lista ya sin el elemento

;OPERADORES DE COMPARACION
(= 10 (+ 3 7))
(print (= 10 (+ 3 7))) ;Imprime el resultado de la operacion que es true pues comparara 10==10
(= 2 2.0 (+ 1 1))
(print (= 2 2.0 (+ 1 1))) ;Imprime el resultado de la operacion que es true pues compara 2=2.0=2, ni importan los tipos de datos
(= 1 2 3)
(print (= 1 2 3)) ;Imprime el resultado de la operacion que es false que es la operacion 1=2=3
(= 1 2 1)
(print (= 1 2 1)) ;Imprime el resultado de la operacion que es false que es la operacion 1=2=1
(/= 10 (+ 3 7))
(print (/= 10 (+ 3 7))) ;Imprime el resultado de la operacion que es false pues compara 10!=10
(/= 2 2.0 (+ 1 1))
(print (/= 2 2.0 (+ 1 1))) ;Imprime el resultado de la operacion que es false pues compara 2!=2.0=2
(/= 1 2 3)
(print (/= 1 2 3)) ;Imprime el resultado de la operacion que es true pues compara 1!=2!=3
(/= 1 2 1)
(print (/= 1 2 1)) ;Imprime el resultado de la operacion que es false pues compara 1!=2!=1
(>= 4 3 3 2)
(print (>= 4 3 3 2)) ;Imprime el resultado de la operacion que es true pues compara 4>=3>=3>=>2
(>= 4 3 3 5)
(print (>= 4 3 3 5)) ;Imprime el resultado de la operacion que es false pues compara 4>=3>=3>=>5
(> 4 3 2 1)
(print (> 4 3 2 1)) ;Imprime el resultado de la operacion que es true pues compara 4>3>2>1
(> 4 3 3 2)
(print (> 4 3 3 2)) ;Imprime el resultado de la operacion que es false pues compara 4>3>3>2
(<= 2 3 3 4)
(print (<= 2 3 3 4)) ;Imprime el resultado de la operacion que es true pues compara 2<=3<=3<=4
(<= 5 3 3 4)
(print (<= 5 3 3 4)) ;Imprime el resultado de la operacion que es false pues compara 5<=3<=3<=4
(< 1 2 3 4)
(print (< 1 2 3 4)) ;Imprime el resultado de la operacion que es true pues compara 1<2<3<4
(< 1 3 3 4)
(print (< 1 3 3 4)) ;Imprime el resultado de la operacion que es false pues compara 1<3<3<4

;FUNCIONES DE COMPARACION
(zerop 5)
(print (zerop 5)) ;Imprime el resultado de la operacion que es false pues compara 5=0
(zerop 0)
(print (zerop 0)) ;Imprime el resultado de la operacion que es true pues compara 0=0
(plusp 3)
(print (plusp 3)) ;Imprime el resultado de la operacion que es true pues compara 3>0
(plusp -3)
(print (plusp -3)) ;Imprime el resultado de la operacion que es false pues compara -3>0
(minusp 8)
(print (minusp 8)) ;Imprime el resultado de la operacion que es true pues compara 8<0
(minusp -8)
(print (minusp -8)) ;Imprime el resultado de la operacion que es false pues compara -8<0
(evenp 4)
(print (evenp 4)) ;Imprime el resultado de la operacion que es true pues compara si 4 es par
(evenp 3)
(print (evenp 3)) ;Imprime el resultado de la operacion que es false pues compara si 3 es par
(oddp 4)
(print (oddp 4)) ;Imprime el resultado de la operacion que es false pues compara si 4 es impar
(oddp 3)
(print (oddp 3)) ;Imprime el resultado de la operacion que es true pues compara si 3 es impar

;FUNCIONES DE EQ (COMPARACION DE SIMBOLOS) Y EQUAL (COMPARACION DE CONTENIDO) 
;NOTA SI NO SE COMPARAN SIMBOLOS EN EQ SIEMPRE DEVOLVERA FALSE OSEA NIL

(eq 'lisp 'lisp)
(print (eq 'lisp 'lisp)) ;Imprime el resultado de la operacion que es true pues compara 'lisp='lisp
(eq 'lisp 'lisa)
(print (eq 'lisp 'lisa)) ;Imprime el resultado de la operacion que es false pues compara 'lisp!='lisa
(eq (car '(A B C)) 'A)
(print (eq (car '(A B C)) 'A)) ;Imprime el resultado de la operacion que es true pues compara (car '(A B C))='A si es el mismo sibolo
(eq 3 3.0)
(print (eq 3 3.0)) ;Imprime el resultado de la operacion que es false pues compara 3 es mismo simbolo que 3.0
(eq (cons 'A '(B C)) (cons 'A '(B C))) ;Imprime el resultado de la operacion que es false pues compara direcciones de memoria
(print (eq (cons 'A '(B C)) (cons 'A '(B C)))) ; Imprime el resultado de la operacion que es false pues compara direcciones de memoria, aparte si son listas false
(equal (cons 'A '(B C)) '(A B C)) ;Imprime el resultado de la operacion que es tue pues compara si se tiene el mismo contenidop
(print (equal (cons 'A '(B C)) '(A B C))) ;Imprime el resultado de la operacion que es true pues compara si se tiene el mismo contenido
(equal (+ 2 3) 5) ;Imprime el resultado de la operacion que es true pues compara si se tiene el mismo contenido