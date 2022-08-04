(define (problem problema-3)
(:domain bbc)
(:objects
	emp1 - empresa
	f5 - caracteristica
	a1 b1 c1 - tema
	a11 a12 a13 a14 a15 b11 b12 b13 b14 b15 c11 c12 c13 c14 c15 - aspecto
)
(:init
	(tienetema emp1 a1)
	(tienetema emp1 b1)
	(tienetema emp1 c1)
	(tienecarac emp1 f5)
	(legalaspecto a1 a11 emp1)
	(legalaspecto a1 a12 emp1)
	(legalaspecto a1 a13 emp1)
	(legalaspecto a1 a14 emp1)
	(legalaspecto a1 a15 emp1)
	(legalaspecto b1 b11 emp1)
	(legalaspecto b1 b12 emp1)
	(legalaspecto b1 b13 emp1)
	(legalaspecto b1 b14 emp1)
	(legalaspecto b1 b15 emp1)
	(legalaspecto c1 c11 emp1)
	(legalaspecto c1 c12 emp1)
	(legalaspecto c1 c13 emp1)
	(legalaspecto c1 c14 emp1)
	(legalaspecto c1 c15 emp1)
	(=(balance emp1)0)
	(=(costetotal)0)
	(=(puntuacionen a1 emp1)0)
	(=(puntuacionen b1 emp1)0)
	(=(puntuacionen c1 emp1)0)
	(=(coste a1)9)
	(=(coste b1)3)
	(=(coste c1)9)
	(=(umbral emp1)100)
	(=(pesonegativo f5)100)
	(=(pesopositivo a1)18)
	(=(pesopositivo b1)6)
	(=(pesopositivo c1)18)
)

(:goal (and(>(balance emp1)(umbral emp1)) (forall (?carac - caracteristica)(not (tienecarac emp1 ?carac)))))

(:metric minimize (costetotal))
)

