tests
testTengoTopico
	self assert: (preguntaLibro tengoTopico: topicoL) equals: true.
	self deny: (preguntaLibro tengoTopico: topico) equals: true.
	self assert: (preguntaPelicula tengoTopico: topico) equals: true