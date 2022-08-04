;;Autor: Eduardo Ureña Toledano - 100329937

;;Regla para imprimir el nombre de las instancias de PINGUINO. 
(defrule imprimir_pinguinos
?pinguino <- (object (is-a PINGUINO) (nombre ?n))
=>
(printout t ?n crlf)
(unmake-instance ?pinguino)
)
