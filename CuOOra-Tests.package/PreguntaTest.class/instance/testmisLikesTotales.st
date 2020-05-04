as yet unclassified
testmisLikesTotales
	|like like2 |
	like := Calificacion likeConUsuario: usuario.
	like2 := Calificacion likeConUsuario: usuario2.
	
	preguntaLibro registrarLike: like.
	preguntaLibro registrarLike: like2.
	
	self assert: preguntaLibro misLikesTotales equals: 2.
	self assert: preguntaPelicula misLikesTotales equals: 0.