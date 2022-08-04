;;Autor: Eduardo Ureña Toledano - 100329937

;;regla para llenar la jarra de 4 litros de capacidad
(defrule llenar-jarras
?jarra1 <- (jarra (capacidad 3)(litros ?l1))
?jarra2 <- (jarra (capacidad 4)(litros ?l2))
(test(<= ?l1 1))
(jarra (litros 0) (capacidad 4))
=>
(modify ?jarra2 (litros(+ ?l2 4))))

;;regla para verter la jarra de 4 litros en la de 3 litros
(defrule verter-jarra
?jarra1 <- (jarra (capacidad 3)(litros ?l1))
?jarra2 <- (jarra (capacidad 4)(litros ?l2))
(test(<= ?l1 1))
(jarra (litros 4) (capacidad 4))
=>
(modify ?jarra1 (litros(+ ?l1 (- 3 ?l1))))
(modify ?jarra2 (litros(- ?l2 (- 3 ?l1)))))

;;regla para vaciar la jarra de 3 litros
(defrule vaciar-jarra
?jarra1 <- (jarra (capacidad 3)(litros ?l1))
(jarra (litros 3) (capacidad 3))
(jarra (litros 1) (capacidad 4))
=>
(modify ?jarra1 (litros(- ?l1 3)))) 

;;regla para volcar la jarra de 4 litros en la de 3 litros
(defrule volcar-jarra
?jarra1 <- (jarra (capacidad 3)(litros ?l1))
?jarra2 <- (jarra (capacidad 4)(litros ?l2))
(jarra (litros 0) (capacidad 3))
(jarra (litros 1) (capacidad 4))
=>
(modify ?jarra1 (litros(+ ?l1 1)))
(modify ?jarra2 (litros(- ?l2 1))))

;;regla para comprobar que la jarra de capacidad 4 tiene 2 litros e imprimir un mensaje de error
(defrule acabar
(declare (salience 1000))
?jarra1 <- (jarra (capacidad 3))
?jarra2 <- (jarra (capacidad 4))
(jarra (litros 2) (capacidad 4))
=>
(printout t "Lo he conseguido, la jarra de capacidad 4 tiene 2 litros" crlf)
(retract ?jarra1)
(retract ?jarra2))

;;(defrule estado-inicial
;;(declare (salience 3000))
;;=>
;;(set-strategy random))

;;En este caso tanto ejecutar 100 ciclos como usar la estrategia de control random no afectan a la solucion, 
;;ya que se realizan los mismos pasos mínimos para conseguir 2 litros en la jarra de capacidad 4.
