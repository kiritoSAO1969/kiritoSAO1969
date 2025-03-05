;FUNCION MEMBER (BUSQUEDA DE UN ELEMENTO EN UNA LISTA, USA EQ POR DEFAULT Y DEVUELVE UNA LISTA APARTIR DEL ELEMENTO ENCONTRADO)
(member 'X '(A X B X C)) ; Verifica si el elemento 'X está en la lista '(A X B X C), devuelve la lista a partir de 'X hasta el final
(print (member 'X '(A X B X C))) ; Imprime el resultado de la verificación; resultado: (X B C)
(member 'X '(A (X) B)) ; Verifica si 'X está en la lista anidada '(A (X) B)
(print (member 'X '(A (X) B))) ; Imprime el resultado de la verificación con lista anidada; resultado: (X)
(defparameter L '((A B) (C D))) ; Define un parámetro L que es una lista de listas
(print (member '(C D) L)) ; Imprime el resultado de buscar '(C D) en L; resultado: NIL

;MODIFICACION FUNCION DE COMPARACION EN MEMBER, SE DEBE DE COLOCAR :TEST Y LUEGO LA FUNCION DE COMPARACION O OPERADOR CON EL QUE SE HARA
;LA COMPARACION

(defparameter L '((A B) (C D))) 
(member '(C D) L :test #'equal) ; Busca '(C D) en L usando 'equal' para comparación
(print (member '(C D) L :test #'equal)) ; Imprime el resultado de la búsqueda con comparación igual; resultado: ((C D))
(member 2.0 '(1 2 3)) ; Busca el número 2.0 en la lista '(1 2 3)
(print (member 2.0 '(1 2 3))) ; Imprime el resultado de la búsqueda; resultado: NIL porque 2.0 no es igual a 2 en simbolo
(member 2.0 '(1 2 3) :test #'=) ; Busca el número 2.0 usando '=' como test
(print (member 2.0 '(1 2 3) :test #'=)) ; Imprime el resultado de la búsqueda con test '='; resultado: (2 3)
(member 2.0 '(1 2 3) :test #'<) ; Busca el número 2.0 usando '<' como test
(print (member 2.0 '(1 2 3) :test #'<)) ; Imprime el resultado de la búsqueda con test '<'; resultado: (3) pues buca un valor que sea mayor a 2


;FUNCIONES DE ATOMOS Y COMPARACIONES
;ATOMOS: Simbolos (T y NIL, etc) y numeros, T
;Listas: Listas, NIL es una lista vacia
(progn
    (defparameter N (+ 1 3))
    (defparameter S 'lisp)
    (defparameter L '(1 es un numero))) ; Define variables en un solo parentesis

;ATOM (CHECA SI EL ARGUMENTO ES UN ATOMO)
(print N) ; Imprime el valor de N; resultado: 4
(atom N) ; Verifica si N es un átomo
(print (atom N)) ; Imprime el resultado de la verificación; resultado: T
(atom S) ; Verifica si S es un átomo
(print (atom S)) ; Imprime el resultado de la verificación; resultado: T
(atom T) ; Verifica si T es un átomo
(print (atom T)) ; Imprime el resultado de la verificación; resultado: T
(atom ()) ; Verifica si la lista vacía es un átomo
(print (atom ())) ; Imprime el resultado de la verificación; resultado: T
(atom L) ; Verifica si L es un átomo
(print (atom L)) ; Imprime el resultado de la verificación; resultado: NIL

;CONSP (CHECA SI EL ARGUMENTO ES UNA LISTA NO VACIA)
(consp L) ; Verifica si L es una lista no vacia
(print (consp L)) ; Imprime el resultado de la verificación; resultado: T
(consp ()) ; Verifica si el resultado de L es una lista no vacia
(print (consp ())) ; Imprime el resultado de la verificación; resultado: NIL

;LISTP (VERIFICA SI EL ARGUMENTO ES UNA LISTA, NO IMPORTA SI VACIA)
(listp NIL) ; Verifica si NIL es una lista
(print (listp NIL)) ; Imprime el resultado de la verificación; resultado: T
(listp L) ; Verifica si L es una lista
(print (listp L)) ; Imprime el resultado de la verificación; resultado: T

;SYMBOLP (VERIFICA QUE ARGUMENTO SEA UN SIMBOLO)
(symbolp N) ; Verifica si N es un símbolo
(print (symbolp N)) ; Imprime el resultado de la verificación; resultado: NIL
(symbolp L) ; Verifica si L es un símbolo
(print (symbolp L)) ; Imprime el resultado de la verificación; resultado: NIL
(symbolp S) ; Verifica si S es un símbolo
(print (symbolp S)) ; Imprime el resultado de la verificación; resultado: T
(symbolp T) ; Verifica si T es un símbolo
(print (symbolp T)) ; Imprime el resultado de la verificación; resultado: T
(symbolp NIL) ; Verifica si NIL es un símbolo
(print (symbolp NIL)) ; Imprime el resultado de la verificación; resultado: T

;NUMBER (CHECA SI EL ARGUMENTO ES UN NUMERO)
(numberp N) ; Verifica si N es un número
(print (numberp N)) ; Imprime el resultado de la verificación; resultado: T
(numberp (car L)) ; Verifica si el primer elemento de L es un número
(print (numberp (car L))) ; Imprime el resultado de la verificación; resultado: T


;USO DE IF Y COND
; IF es una estructura condicional básica en Lisp
; Su sintaxis basica es : (if condición luego-que-verdadero luego-que-falso)
(print (if NIL 1 2))  ; EN UNA ESTRUCTURA IF, en este caso NIL es falso, por lo que se ejecuta la segunda rama → Imprime 2

; en el siguiente caso la sintaxis cambia a: (if (condición) (luego-que-verdadero) (luego-que-falso))
(IF (= (setq A 3) 4) 1 0) ; Se asigna A = 3 y se compara con 4. Como 3 ≠ 4, el resultado es 0.
(print (if (= (setq A 3) 4) 1 0)) ; Imprime 0


(IF (= A 3) 1 0); Ahora A ya vale 3, se compara con 3, lo cual es verdadero, entonces devuelve 1.
(print (if (= A 3) 1 0)) ; Imprime 1

; Si A fuera 4, sumaría 2 a A, pero A = 3, así que no hay segunda rama para el caso del verdadero siendo que devuelve NIL.
(IF (= A 4) (+ A 2))
(print (if (= A 4) (+ A 2))) ; Como la condición es falsa, imprime NIL

; Se intenta dividir A entre 4. Si la división es válida, resta 2 a A.
; Pero (/ A 4) devuelve un número distinto de NIL, lo que es verdadero en Lisp, así que se ejecuta (- A 2).
(IF (/ A 4) (- A 2))
(print (if (/ A 4) (- A 2))) ; Imprime 1 (3 - 2)

; Ejemplo: Función que calcula el valor absoluto usando IF.
(defun absoluto (n) (IF (< n 0) (- n) n))

; Prueba con número positivo
(absoluto 8)
(print (absoluto 8)) ; Imprime 8 porque 8 no es negativo

; Prueba con número negativo
(absoluto -8)
(print (absoluto -8)) ; Imprime 8 porque -8 es negativo, así que devuelve -(-8) = 8


; DEFINICIÓN DE COND Y SU USO
; COND es una estructura condicional que permite evaluar múltiples condiciones de forma secuencial.
; Funciona como una serie de "SI - ENTONCES", donde cada condición se evalúa en orden.
; Cuando una condición se cumple, se ejecuta su respectiva expresión y las demás se ignoran.


; Ahora usamos COND para definir la función absoluto de otra manera.
(defun absoluto (n)
    (cond ((> n 0) n)  ; Si n > 0, devuelve n
          ((= n 0) 0)  ; Si n = 0, devuelve 0
          ((< n 0) (- n)))) ; Si n < 0, devuelve -n

; Prueba con valores positivos y negativos
(absoluto 6)
(print (absoluto 6))  ; Imprime 6
(absoluto -6)
(print (absoluto -6)) ; Imprime 6
(absoluto 0)
(print (absoluto 0))  ; Imprime 0


; Función para clasificar calificaciones usando COND.
(defun calif (n)
    (cond ((< n 6) 'Reprobado)    ; Si es menor que 6, está reprobado
          ((< n 7) 'Aprobado)     ; Si es menor que 7, está aprobado
          ((< n 9) 'Notable)      ; Si es menor que 9, es notable
          ((<= n 10) 'Sobresaliente) ; Si es menor o igual a 10, es sobresaliente
          (T 'Errror)))           ; Cualquier otro caso es un error

; Pruebas de calificaciones
(calif 6.2)  ; Debería imprimir 'Aprobado'
(print (calif 6.2))  ; Imprime Aprobado
(calif 9.6)  ; Debería imprimir 'Sobresaliente'
(print (calif 9.6))  ; Imprime Sobresaliente
(calif 12)   ; No está en el rango esperado, debería imprimir 'Errror'
(print (calif 12))  ; Imprime Error

; -----------------------------------------------
; FUNCIÓN PARA IDENTIFICAR EL TIPO DE UN ELEMENTO
(defun tipo-de (s)
    (cond ((consp s) 'Lista-no-vacia)  ; Si es una lista no vacia, es una lista no vacía
          ((NULL s) 'Atomo-NIL)        ; Si es NIL, se considera un átomo especial
          ((numberp s) 'Numero)        ; Si es un número, devuelve 'Numero'
          (T 'Simbolo)))               ; En cualquier otro caso, se asume que es un símbolo

; Pruebas de tipo
(tipo-de '(A B))    ; Imprime 'Lista-no-vacia'
(print (tipo-de '(A B)))  ; Imprime Lista-no-vacia
(tipo-de ())        ; Imprime 'Atomo-NIL'
(print (tipo-de ()))  ; Imprime Atomo-NIL
(tipo-de 5)        ; Imprime 'Numero'
(print (tipo-de 5))  ; Imprime Numero
(tipo-de 'Vamonos) ; Imprime 'Simbolo'
(print (tipo-de 'Vamonos))  ; Imprime Simbolo
