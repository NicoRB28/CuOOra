as yet unclassified
testyaTengoDisLikeDe
	
	preguntaLibro registrarDisLike: (Calificacion dislikeConUsuario: usuario ).
	
	self assert: (preguntaLibro yaTengoDisLikeDe: usuario) equals: true.
	self assert: (preguntaPelicula  yaTengoDisLikeDe: usuario) equals: false.