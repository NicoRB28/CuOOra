tests
testConstructor
	
	|pregunta |
	
	pregunta := Pregunta conTitulo: '¿que pelicula recomiendan?' 
	descripcion: 'estoy en cuarentena y quiero ver algooooo'
	topico: topico usuario: usuario.

	self assert:(pregunta titulo  ) equals: '¿que pelicula recomiendan?' .
	self assert: (pregunta descripcion ) equals: 'estoy en cuarentena y quiero ver algooooo'.
	self assert: (pregunta meCreo: usuario) equals: true.
	self assert:((pregunta topicos)size ) equals:1.
	self assert: ((pregunta misRespuestas)size ) equals: 0.
	