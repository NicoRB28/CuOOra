tests
testTengoTopico
	
	
	self assert: (preguntaLibro tengoTopico:topicoPreguntaLibro  ) equals: true.
	self deny: (preguntaLibro tengoTopico: topicoPreguntaPelicula ) equals: true.
	self assert: (preguntaPelicula tengoTopico: topicoPreguntaPelicula ) equals: true.