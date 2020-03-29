as yet unclassified
testyaTengoLikeDe
	usuario likePregunta: preguntaLibro.
	
	self assert: (preguntaLibro yaTengoLikeDe: usuario) equals: true.
	self assert: (preguntaPelicula  yaTengoLikeDe: usuario) equals: false.