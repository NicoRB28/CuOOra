as yet unclassified
testregistrarDisLike
	| dislike like dislike2 |
	like := Calificacion likeConUsuario: usuario.
	dislike := Calificacion dislikeConUsuario: usuario.
	dislike2 := Calificacion dislikeConUsuario: usuario2.
	preguntaLibro registrarLike: like.
	preguntaLibro registrarDisLike: dislike2.
	preguntaLibro registrarDisLike: dislike.
	self assert: preguntaLibro misDislikesTotales equals: 2.
	self assert: preguntaPelicula misDislikesTotales equals: 0.
	self assert: preguntaLibro misLikesTotales equals: 0