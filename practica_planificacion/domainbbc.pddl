(define (domain bbc)
  (:requirements :strips :typing :negative-preconditions :equality :fluents) 
  (:types plan empresa tema caracteristica aspecto nivel peso coste - object)
  (:constants verymuch much medium little vlittle - nivel)  

(:predicates (tienetema ?emp -empresa ?tma -tema)
	(tienecarac ?emp -empresa ?carac -caracteristica)
	(tieneaspecto ?tma -tema ?asp -aspecto ?emp -empresa)
	(legalaspecto ?tma -tema ?asp -aspecto ?emp -empresa)
	(tienenivel ?tma -tema ?nvl -nivel ?emp -empresa)
	(alcanzado ?tma -tema ?nvl -nivel ?emp -empresa)
)

(:functions (balance ?emp - empresa)
(puntuacionen ?tma - tema ?emp - empresa)
(coste ?tma - tema)
(costetotal)
(umbral ?emp - empresa)
(pesonegativo ?carac - caracteristica)
(pesopositivo ?tma - tema)

)

(:action EMPEZAR-TEMA
:parameters   	(?tma - tema ?emp - empresa ?asp - aspecto)
:precondition  	(and (tienetema ?emp ?tma) (not (alcanzado ?tma vlittle ?emp)) (legalaspecto ?tma ?asp ?emp))
:effect         (and (tieneaspecto ?tma ?asp ?emp) (alcanzado ?tma vlittle ?emp) (tienenivel ?tma vlittle ?emp) 
		(increase(costetotal) (coste ?tma)) (increase (puntuacionen ?tma ?emp) (pesopositivo ?tma))))

(:action ANADIR-ASPECTO-SEGUNDO
:parameters	(?tma - tema ?emp - empresa ?asp - aspecto)
:precondition	(and (tienenivel ?tma vlittle ?emp) (not (alcanzado ?tma little ?emp)) (legalaspecto ?tma ?asp ?emp) 
		(not (tieneaspecto ?tma ?asp ?emp)))
:effect		(and (tieneaspecto ?tma ?asp ?emp) (not (tienenivel ?tma vlittle ?emp)) (tienenivel ?tma little ?emp) 
		(alcanzado ?tma little ?emp) (increase(costetotal) 1) (increase (puntuacionen ?tma ?emp) (pesopositivo ?tma))))

(:action ANADIR-ASPECTO-TERCERO
:parameters	(?tma - tema ?emp - empresa ?asp - aspecto)
:precondition	(and (tienenivel ?tma little ?emp) (not (alcanzado ?tma medium ?emp)) (legalaspecto ?tma ?asp ?emp) 
		(not (tieneaspecto ?tma ?asp ?emp)))
:effect		(and (tieneaspecto ?tma ?asp ?emp) (not (tienenivel ?tma little ?emp)) (tienenivel ?tma medium ?emp) 
		(alcanzado ?tma medium ?emp) (increase(costetotal) 1) (increase (puntuacionen ?tma ?emp) (pesopositivo ?tma))))

(:action ANADIR-ASPECTO-CUARTO
:parameters	(?tma - tema ?emp - empresa ?asp - aspecto)
:precondition	(and (tienenivel ?tma medium ?emp) (not (alcanzado ?tma much ?emp)) (legalaspecto ?tma ?asp ?emp) 
		(not (tieneaspecto ?tma ?asp ?emp)))
:effect		(and (tieneaspecto ?tma ?asp ?emp) (not (tienenivel ?tma medium ?emp)) (tienenivel ?tma much ?emp) (alcanzado ?tma much ?emp) 
		(increase(costetotal) 1) (increase (puntuacionen ?tma ?emp) (pesopositivo ?tma))))

(:action ANADIR-ASPECTO-QUINTO
:parameters	(?tma - tema ?emp - empresa ?asp - aspecto)
:precondition	(and (tienenivel ?tma much ?emp) (not (alcanzado ?tma verymuch ?emp)) (legalaspecto ?tma ?asp ?emp) 
		(not (tieneaspecto ?tma ?asp ?emp)))
:effect		(and (tieneaspecto ?tma ?asp ?emp) (not (tienenivel ?tma much ?emp)) (tienenivel ?tma verymuch ?emp) 
		(alcanzado ?tma verymuch ?emp) (increase(costetotal) 1) (increase (puntuacionen ?tma ?emp) (pesopositivo ?tma))))

(:action INCREMENTAR-BALANCE
:parameters   	(?emp -empresa ?tma -tema ?nvl -nivel)
:precondition  	(and (tienetema ?emp ?tma) (tienenivel ?tma ?nvl ?emp)) 
:effect         (and (increase (balance ?emp) (puntuacionen ?tma ?emp)) (not (tienenivel ?tma ?nvl ?emp))))

(:action DECREMENTAR-BALANCE
:parameters   	(?carac -caracteristica ?emp -empresa )
:precondition	(and (tienecarac ?emp ?carac ))
:effect         (and (decrease (balance ?emp) (pesonegativo ?carac)) (not(tienecarac ?emp ?carac))))


)
