as yet unclassified
testyaTengoDisLikeDe
	usuario dislikePregunta: preguntaLibro.
	
	self assert: (preguntaLibro yaTengoDisLikeDe: usuario) equals: true.
	self assert: (preguntaPelicula  yaTengoDisLikeDe: usuario) equals: false.