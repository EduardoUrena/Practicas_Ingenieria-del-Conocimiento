;;Autor: Eduardo Ureña Toledano - 100329937

;;Clase con los atributos que tiene que tener un animal y sus posibles valores.
(defclass ANIMAL (is-a INITIAL-OBJECT)
(slot nombre)
(slot piel
(type SYMBOL)
(allowed-values pelo plumas))
(slot vuela
(type SYMBOL)
(allowed-values si no))
(slot razona
(type SYMBOL)
(allowed-values si no))
)

;Clase con los atributos con valores por defecto que tiene que tener un mamifero.
(defclass MAMIFERO (is-a ANIMAL)
(slot piel
(source composite)
(default pelo))
(slot vuela
(source composite)
(default no))
(slot razona
(source composite)
(default no))
)

;;Clase con los atributos con valores por defecto que tiene que tener un ave.
(defclass AVE (is-a ANIMAL)
(slot piel
(source composite)
(default plumas))
(slot vuela
(source composite)
(default si))
(slot razona
(source composite)
(default no))
)

;Clase con los atributos con valores por defecto diferentes a mamifero que tiene que tener un hombre.
(defclass HOMBRE (is-a MAMIFERO)
(slot razona
(source composite)
(default si))
)

;Clase con los atributos con valores por defecto diferentes a ave que tiene que tener un albatros, que como se puede ver no hay ninguno.
(defclass ALBATROS (is-a AVE)
)

;Clase con los atributos con valores por defecto diferentes a ave que tiene que tener un pinguino.
(defclass PINGUINO (is-a AVE)
(slot vuela
(source composite)
(default no))
)

;;Creacion de las instancias de hombre, albatros y pinguino que se piden en el enunciado.
(definstances estado_inicial_animales
(of HOMBRE (nombre Pepe))
(of ALBATROS (nombre Alf))
(of PINGUINO (nombre Chilly))
)
	