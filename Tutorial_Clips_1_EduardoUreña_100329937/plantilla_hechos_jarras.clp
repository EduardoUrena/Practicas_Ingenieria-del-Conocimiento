;;Autor: Eduardo Ureña Toledano - 100329937

;;Define la plantilla para la jarra
(deftemplate jarra
(slot litros
(type INTEGER))
(slot capacidad
(type INTEGER)))

;;hechos
(deffacts jarras
(jarra (litros 0)(capacidad 3))
(jarra (litros 0)(capacidad 4)))