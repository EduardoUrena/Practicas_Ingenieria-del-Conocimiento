;;Autor: Eduardo Ureña Toledano - 100329937

;;regla para llenar una jarra
(defrule llenar-jarras
?jarra <- (jarra (capacidad ?c) (litros ?l))
(test (< ?l ?c))
=>
(modify ?jarra (litros ?c))
)

;;regla para verter una jarra en otra
(defrule verter-jarras
?jarra1 <- (jarra (litros ?l1))
?jarra2 <- (jarra (litros ?l2) (capacidad ?c2))
(test (neq ?jarra1 ?jarra2))
(test (> (+ ?l1 ?l2) ?c2))
=>
(modify ?jarra1 (litros (- ?l1 (- ?c2 ?l2))))
(modify ?jarra2 (litros ?c2))
)

;;regla para vaciar una jarra
(defrule vaciar-jarras
?jarra <- (jarra (litros ?l))
(test (> ?l 0))
=>
(modify ?jarra (litros 0))
)

;;regla para volcar una jarra en la otra
(defrule volcar-jarra
?jarra1 <- (jarra (litros ?l1))
?jarra2 <- (jarra (litros ?l2) (capacidad ?c2))
(test (neq ?jarra1 ?jarra2))
(test (<= (+ ?l1 ?l2) ?c2))
=>
(modify ?jarra1 (litros 0))
(modify ?jarra2 (litros (+ ?l1 ?l2)))
)

;;regla para comprobar que la jarra de capacidad 4 tiene 2 litros e imprimir un mensaje de error
(defrule acabar
(declare (salience 1000))
?jarra <- (jarra (capacidad 4) (litros 2))
=>
(printout t "Lo he conseguido, la jarra de capacidad 4 tiene 2 litros" crlf)
(halt)
)

;;En este caso, al ejecutar 100 ciclos no se llega a la solucion.
;;pero al usar la estrategia de control random durante esos 100 ciclos, si se acaba llegando a la solucion (2 litros en la jarra de capacidad 4).
