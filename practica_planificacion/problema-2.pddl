(define (problem problema-2)
(:domain bbc)
(:objects
	emp1 - empresa
	f1 - caracteristica
	c1 d2 e3 - tema
	c11 c12 c13 c14 c15 d21 d22 d23 d24 d25 e31 e32 - aspecto
)
(:init
	(tienetema emp1 c1)
	(tienetema emp1 d2)
	(tienetema emp1 e3)
	(legalaspecto c1 c11 emp1)
	(legalaspecto c1 c12 emp1)
	(legalaspecto c1 c13 emp1)
	(legalaspecto c1 c14 emp1)
	(legalaspecto c1 c15 emp1)
	(legalaspecto d2 d21 emp1)
	(legalaspecto d2 d22 emp1)
	(legalaspecto d2 d23 emp1)
	(legalaspecto d2 d24 emp1)
	(legalaspecto d2 d25 emp1)
	(legalaspecto e3 e31 emp1)
	(legalaspecto e3 e32 emp1)
	(=(balance emp1)0)
	(=(costetotal)0)
	(=(puntuacionen c1 emp1)0)
	(=(puntuacionen d2 emp1)0)
	(=(puntuacionen e3 emp1)0)
	(=(coste c1)9)
	(=(coste d2)7)
	(=(coste e3)7)
	(=(umbral emp1)150)
	(=(pesopositivo c1)18)
	(=(pesopositivo d2)14)
	(=(pesopositivo e3)14)
)

(:goal (and(>(balance emp1)(umbral emp1))))

(:metric minimize (costetotal))
)

