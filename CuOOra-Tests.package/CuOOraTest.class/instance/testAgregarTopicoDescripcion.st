tests
testAgregarTopicoDescripcion

	|cuoora topico |
	
	cuoora := CuOOra new.
	topico := cuoora agregarTopico: 'Libros' descripcion: 'temas relacionados a libros'.
	
	self assert: ((cuoora topicosDelSistema) includes: topico).