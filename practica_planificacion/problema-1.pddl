(define (problem problema-1)
(:domain bbc)
(:objects
	emp1 - empresa
	f1 - caracteristica
	c2 d3 - tema
	c21 c22 c23 c24 c25 d31 d32 d33 d34 d35 - aspecto
)
(:init
	(tienetema emp1 c2)
	(tienetema emp1 d3)
	(legalaspecto c2 c21 emp1)
	(legalaspecto c2 c22 emp1)
	(legalaspecto c2 c23 emp1)
	(legalaspecto c2 c24 emp1)
	(legalaspecto c2 c25 emp1)
	(legalaspecto d3 d31 emp1)
	(legalaspecto d3 d32 emp1)
	(legalaspecto d3 d33 emp1)
	(legalaspecto d3 d34 emp1)
	(legalaspecto d3 d35 emp1)
	(=(balance emp1)0)
	(=(costetotal)0)
	(=(puntuacionen c2 emp1)0)
	(=(puntuacionen d3 emp1)0)
	(=(coste c2)5)
	(=(coste d3)9)
	(=(umbral emp1)130)
	(=(pesopositivo c2)10)
	(=(pesopositivo d3)18)
)

(:goal (and(>(balance emp1)(umbral emp1))))

(:metric minimize (costetotal))
)

