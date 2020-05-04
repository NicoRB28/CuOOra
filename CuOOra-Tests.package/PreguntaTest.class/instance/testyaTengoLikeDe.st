as yet unclassified
testyaTengoLikeDe
	
	
	preguntaLibro registrarLike: (Calificacion likeConUsuario: usuario).
	
	self assert: (preguntaLibro yaTengoLikeDe: usuario) equals: true.
	self assert: (preguntaPelicula  yaTengoLikeDe: usuario) equals: false.