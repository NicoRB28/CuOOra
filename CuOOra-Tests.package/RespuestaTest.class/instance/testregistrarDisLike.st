as yet unclassified
testregistrarDisLike
	| dislike like dislike2 |
	like := Calificacion likeConUsuario: usuario.
	dislike := Calificacion dislikeConUsuario: usuario.
	dislike2 := Calificacion dislikeConUsuario: usuario2.
	rta2 registrarLike: like.
	rta2 registrarDisLike: dislike2.
	rta2 registrarDisLike: dislike.
	self assert: rta2 misDislikesTotales equals: 2.
	self assert: rta misDislikesTotales equals: 0.
	self assert: rta2 misLikesTotales equals: 0