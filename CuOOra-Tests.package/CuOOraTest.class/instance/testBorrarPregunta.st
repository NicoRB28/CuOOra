tests
testBorrarPregunta
	| pregunta3 |
	pregunta1 := sistema
		crearPregunta: 'que hacer hoy?'
		descripcion: 'planes'
		topico: topico1
		usuario: usuario2.
	pregunta3 := sistema
		crearPregunta: 'que puedo leer?'
		descripcion: 'cualquier genero'
		topico: topico1
		usuario: usuario2.
	sistema borrarPregunta: pregunta1.
	self assert: (sistema preguntas includes: pregunta3) equals: true.
	self assert: (sistema preguntas includes: pregunta1) equals: false