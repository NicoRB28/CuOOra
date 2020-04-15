tests
testBorrarPregunta
	|pregunta3 |
	usuario1 := sistema crearUsuario: 'User' contraseña: '111'.
	pregunta3 := sistema
		crearPregunta: 'que hacer hoy?'
		descripcion: 'planes'
		topico: topico1
		usuario: usuario2.
	respuesta1 := sistema
		crearRespuesta: 'ademas de testear'
		usuario: usuario2
		pregunta: pregunta3.
	sistema crearRespuesta: 'estudiar' usuario: usuario1 pregunta: pregunta3.
	usuario1 likePregunta: pregunta3.
	usuario1 dislikeRespuesta: respuesta1.
	sistema borrarPregunta: pregunta3.
	self assert: (sistema preguntas includes: pregunta2) equals: true.
	self assert: (sistema preguntas includes: pregunta3) equals: false.
	self assert: (sistema respuestas includes: respuesta1) equals: false.
	self assert: (sistema puntajeUsuario: usuario1) equals: 0