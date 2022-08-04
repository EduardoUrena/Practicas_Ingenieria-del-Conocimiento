(define (problem problema-4.2)
(:domain bbc)
(:objects
	emp1 - empresa
	f1 - caracteristica
	a1 b1 - tema
	a11 a12 a13 a14 a15 b11 b12 - aspecto
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

	(=(coste a1)9)
	(=(coste b1)3)
	(=(costetotal)0)
	(=(pesopositivo a1)18)
	(=(pesopositivo b1)6)
)

(:goal (and (>(balance emp1)(umbral emp1))))

(:metric minimize (costetotal))
)

