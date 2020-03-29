as yet unclassified
testregistrarLike
	| dislike like like2 |
	like := Calificacion conUsuario: usuario.
	dislike := Calificacion conUsuario: usuario.
	like2 := Calificacion conUsuario: usuario2.
	
	rta2 registrarDisLike: dislike.
	rta2 registrarLike: like.
	rta2 registrarLike: like2.
	
	self assert: rta2 misLikesTotales equals: 2.
	self assert: rta misLikesTotales equals: 0.
	self assert: rta2 misDislikesTotales equals: 0