(define (problem problema-4.1)
(:domain bbc)
(:objects
	emp1 emp2 - empresa
	f1 - caracteristica
	a1 b1 d2 e2 - tema
	a11 a12 a13 a14 a15 b11 b12 d21 d22 d23 d24 d25 e21 e22 - aspecto
)
(:init
	(tienetema emp1 a1)
	(tienetema emp1 b1)
	(legalaspecto a1 a11 emp1)
	(legalaspecto a1 a12 emp1)
	(legalaspecto a1 a13 emp1)
	(legalaspecto a1 a14 emp1)
	(legalaspecto a1 a15 emp1)
	(legalaspecto b1 b11 emp1)
	(legalaspecto b1 b12 emp1)
	(=(balance emp1)0)
	(=(puntuacionen a1 emp1)0)
	(=(puntuacionen b1 emp1)0)
	(=(umbral emp1)100)

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

	(=(coste a1)9)
	(=(coste b1)3)
	(=(coste d2)7)
	(=(coste e2)4)
	(=(costetotal)0)
	(=(pesopositivo a1)18)
	(=(pesopositivo b1)6)
	(=(pesopositivo d2)14)
	(=(pesopositivo e2)8)
)

(:goal (and (>(balance emp1)(umbral emp1)) (>(balance emp2)(umbral emp2))))

(:metric minimize (costetotal))
)

