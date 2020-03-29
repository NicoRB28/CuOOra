as yet unclassified
testmisLikesTotales
	|like like2 |
	like := Calificacion conUsuario: usuario.
	like2 := Calificacion conUsuario: usuario2.
	
	preguntaLibro registrarLike: like.
	preguntaLibro registrarLike: like2.
	
	self assert: preguntaLibro misLikesTotales equals: 2.
	self assert: preguntaPelicula misLikesTotales equals: 0.