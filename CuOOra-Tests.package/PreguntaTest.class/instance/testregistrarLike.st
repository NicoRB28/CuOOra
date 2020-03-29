as yet unclassified
testregistrarLike
	|like like2 dislike|
	like := Calificacion conUsuario: usuario.
	dislike := Calificacion conUsuario: usuario. 
	like2 := Calificacion conUsuario: usuario2.
	
	preguntaLibro registrarLike: like2.
	preguntaLibro registrarDisLike: dislike.
	preguntaLibro registrarLike: like.  
	
	self assert: preguntaLibro miCalificacionTotal equals: 2.
	self assert: preguntaPelicula miCalificacionTotal equals: 0.