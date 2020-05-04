as yet unclassified
testregistrarLike
	|like like2 dislike|
	like := Calificacion likeConUsuario: usuario.
	dislike := Calificacion dislikeConUsuario: usuario. 
	like2 := Calificacion likeConUsuario: usuario2.
	
	preguntaLibro registrarLike: like2.
	preguntaLibro registrarDisLike: dislike.
	preguntaLibro registrarLike: like.  
	
	self assert: preguntaLibro miCalificacionTotal equals: 2.
	self assert: preguntaPelicula miCalificacionTotal equals: 0.