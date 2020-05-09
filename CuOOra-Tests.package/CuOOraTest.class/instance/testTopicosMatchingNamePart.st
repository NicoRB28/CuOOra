tests
testTopicosMatchingNamePart
	

	
	sistema agregarTopico: topico1.
	sistema agregarTopico: topico2.

	self assert: ((sistema topicosMatchingNamePart: 'Libros')size) equals:1.
	self assert: ((sistema topicosMatchingNamePart: 'Libros')includes:topico2) equals:true.
	self assert: ((sistema topicosMatchingNamePart: 'Libros,Automoviles,Arte')size) equals:1.
	self assert: ((sistema topicosMatchingNamePart: 'Libros,Automoviles,Arte')includes:topico2) equals:true.
	self assert: ((sistema topicosMatchingNamePart: 'Dibujo,Ciencia')size) equals:0.
	self assert: ((sistema topicosMatchingNamePart: 'Dibujo,Ciencia,peliculas,libros')size) equals:2.
	self assert: ((sistema topicosMatchingNamePart: 'Dibujo,Ciencia,peliculas,libros')includes:topico1) equals:true.
	self assert: ((sistema topicosMatchingNamePart: 'Dibujo,Ciencia,peliculas,libros')includes:topico2) equals:true.
	