as yet unclassified
testmisDislikesTotales
	|dislike dislike2 |
	dislike := Calificacion conUsuario: usuario.
	dislike2 := Calificacion conUsuario: usuario2.
	
	preguntaLibro registrarDisLike: dislike.
	preguntaLibro registrarDisLike: dislike2.
	
	self assert: preguntaLibro misDislikesTotales equals: 2.
	self assert: preguntaPelicula misDislikesTotales equals: 0.