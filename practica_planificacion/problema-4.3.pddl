(define (problem problema-4.3)
(:domain bbc)
(:objects
	emp2 - empresa
	f1 - caracteristica
	d2 e2 - tema
	d21 d22 d23 d24 d25 e21 e22 - aspecto
)
(:init
	(tienetema emp2 d2)
	(tienetema emp2 e2)
	(legalaspecto d2 d21 emp2)
	(legalaspecto d2 d22 emp2)
	(legalaspecto d2 d23 emp2)
	(legalaspecto d2 d24 emp2)
	(legalaspecto d2 d25 emp2)
	(legalaspecto e2 e21 emp2)
	(legalaspecto e2 e22 emp2)
	(=(balance emp2)0)
	(=(puntuacionen d2 emp2)0)
	(=(puntuacionen e2 emp2)0)
	(=(umbral emp2)80)

	(=(coste d2)7)
	(=(coste e2)4)
	(=(costetotal)0)
	(=(pesopositivo d2)14)
	(=(pesopositivo e2)8)
)

(:goal (and (>(balance emp2)(umbral emp2))))

(:metric minimize (costetotal))
)

