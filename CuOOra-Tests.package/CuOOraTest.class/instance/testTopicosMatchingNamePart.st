tests
testTopicosMatchingNamePart
	
	|libros peliculas|
	
	sistema agregarTopico: 'Libros' descripcion: 'libros'.
	sistema agregarTopico: 'Peliculas' descripcion: 'peliculas'.

	self assert: ((sistema topicosMatchingNamePart: 'Libros')size) equals:1.
	self assert: ((sistema topicosMatchingNamePart: 'Libros,Automoviles,Arte')size) equals:1.
	self assert: ((sistema topicosMatchingNamePart: 'Dibujo,Ciencia')size) equals:0.
	self assert: ((sistema topicosMatchingNamePart: 'Dibujo,Ciencia,peliculas,libros')size) equals:2.