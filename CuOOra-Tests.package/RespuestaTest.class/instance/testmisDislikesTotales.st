as yet unclassified
testmisDislikesTotales
	|dislike dislike2 |
	dislike := Calificacion dislikeConUsuario: usuario.
	dislike2 := Calificacion dislikeConUsuario: usuario2.
	
	rta2 registrarDisLike: dislike.
	rta2 registrarDisLike: dislike2.
	
	self assert: rta2 misDislikesTotales equals: 2.
	self assert: rta misDislikesTotales equals: 0.