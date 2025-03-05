(setq x 1)          ;INICIALIZACION DE UN SOLO VALOR
(let ((x 2) (y 3))  ;INICIALIZACION DE VALORES TEMPORALES Y REALIZACION DE OPERACION
    (+ x y))

(setq dos 2)       ;INICIALIZACION DE VALOR LLAMADO DOS
(defun dos() 
    3)        ;DECLARACION DE FUNCION QUE DEVUELVE EL VALOR DE 3, LAS FUNCIONES DEVUELVEN SU ULTIMA LINEA
(+ dos (dos)) ;LLAMADA DE LA FUNCION, primero se pasa como parametro el valor de dos y despues la funcion dos

(setq A 3)   ;DECLARACION DE VALOR LLAMADO A
(quote A)    ;DEVUELVE EL SIMBOLO DE A, el nombre, EL TEXCO COMO TAL NO DEVUELVE EL VALOR QUE TIENE ALMACENADO
'A           ;LA COMILLA SIMPLE HACE LO MISMO QUE QUOTE, ES UN SINONIMO

(setq hombre 'socrates)  ;DECLARACION DE VARIABLE LLAMADO HOMBRE ASIGNANDOLE EL SIMBOLO DE SOCRATES

(setq socrates 1)   ;ASIGNACION DE VARIABLE SOCRATE

(setq mortal hombre) ;ASIGNACION MORTAL EL VALOR DE HOMBRE

(set 'hombre 'platon)   ;SET ASIGNA UN VALOR CORRESPONDIENTE, SIENDO QUE EL VALOR O LA EVALUACION DE UN DATO SERA ASIGNADO EN ESTE}
                        ;CASO PLATON A HOMBRE, PRACTICAMENTE ACCEDE A LOS VALORES Y LOS CAMBIA

(set hombre 'socrates)  ;ASGINA EL VALOR DE PLATON COMO SOCRATES PUES ES LO QUE TIENE ALMACENADO HOMBRE

;-------------------------------------------------------------------------------------------------------------------------------------

;(1 dos 3 cuatro)    ;No. de elementos 4, segundo elemento "DOS"
;(socrates (- 43 1)) ;No. de elemntos 2, segundo elemento "(- 43 1)"
;((x 1) (y 2) (z 3)) ;No. de elementos 3, segundo elemento "(y 2)""
;(- (* 2 (+ a 3))) ;No. de elementos 2, segundo elemento "(* 2 (+ a 3))"
;(((1)))  ;No. de elementos 1, segundo elemento NO TIENE
;(defun suma (x y) (+ x y)) ;No. de elementos 4, segundo elemento "(SUMA)"
;() ;No. de elemento 0

;--------------------------------------------------------------------------------------------------------------------------------

;(quote (A B C))  ;DEVUELVE LA LISTA
;('(A B C)) ;DEVUELVE LA LISTA
;('(+ 2 3)) ;DEVUELVE LA LISTA, NO HACE LAS OPERACIONES

;CAR DEVUELVE UN VALOR
;CDR DEVUELVE UNA LISTA

(car '(a b c))  ;DEVUELVE EL PRIMER ELEMENTO DE LA LISTA
(car '((D E) F (G H))) ;DEVUELVE (D E) OSEA EL PRIMER ELEMENTO DE LA LISTA
(setq L '(10 20))  ;DECLARACION DE LISTA
(car L) ;DEVUELVE PRIMER ELEMENTO QUE ES 10
(car (Setq M '(+ 1 2))) ;DEVUELVE (+)
(car '(A B C))   ;DEVUELVE EL VALOR DE A
(cdr '((d ((E F))) G (H I))) ;DEVUELVE EL RESTO DEL ELEMENTO DESPUES DEL PRIMER ELEMENTO OSEA G (H I)
(cdr L)     ;DEVUELVE RESTO DEL ELEMENTO DE LISTA L
(cdr M)     ;DEVUELVE RESTO DEL ELEMENTO DE LISTA M
(car (cdr M)) ;DEVUELVE EL PRIMER ELEMENTO DEL RESTO DE LA LISTA M
(car (cdr (cdr M))) ;DEVUELVE EL PRIMER ELEMENTO DEL RESTO DEL RESTO DE LA LISTA M
(cdr (car (cdr (car '((D (E F)) G (H I)))))) ;DEVUELVE EL RESTO DEL PRIMER ELEMENTO DEL RESTO DEL PRIMER ELEMENTO DE LA LISTA DADA