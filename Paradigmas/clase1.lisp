(print (* 3 5))
(print (* 2 3 4))
(print (/ 20 5))
;(print / 0.5)

(print ( + (/ (* 2.0 (- 4.0 1.0) 6.0) 18.0) (* (- 8.0 6.0) 7.0)))

;(print (+)) ;IMPRIME 0
(print (+ 3))  ;IMPRIME 3
(print (+ 3 7 8))
(print (- 123 7 5))
(print (abs 3)) ;DEVUELVE EL VALOR ABSOLUTO
(print (abs -3.6))

(print (*)) ;IMPRIME 1,
(print (* 3))
(print (* 3 7 5))
(print (/ 3 7))
;(print (/ 2))  ;DIVIDE 1 ENTRE 2
(print (mod 7 2))   ;DEVUELVE EL RESIDUO DE LA DIVISION
(print (max 3))
(print (max 1 2 3 4 5 6 1))
(print (max -2.3 7 0))
(print (min 3))
(print (min 1 2 3 4 5 3))
(print (min -2.3 7 0))


(setq precio 80)
(setq IVA 16)

(defvar precio 80)
(defvar IVA 16)

(/ (* precio IVA 0.01) 100)
(defvar x (* 2 5))
(print (+ 1 2 x 3))
( setq x 1 y 2 z (+ x y)
)
(print (+ x y z))

(setq x 3)
(incf x)
(print x)

(decf x)
(print x)


(defun cubo (n) (* n n n))
(cubo z)
(print (cubo 3))


(defun cuadrado (x) (* x x))
(defun media (x y) (/ (+ x y) 2))
(defun med-cuad (x y) (MEDIA (cuadrado x) (cuadrado y)))

(print (cuadrado 3))
(print (med-cuad 2 4))
(print (media 4 8))