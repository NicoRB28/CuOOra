tests
testBorrarPregunta
	| user r1 pregunta3 |
	user := sistema crearUsuario: 'User' contraseña: '111'.
	pregunta3 := sistema
		crearPregunta: 'que hacer hoy?'
		descripcion: 'planes'
		topico: topico1
		usuario: usuario2.
	r1 := sistema
		crearRespuesta: 'ademas de testear'
		usuario: usuario2
		pregunta: pregunta3.
	sistema crearRespuesta: 'estudiar' usuario: user pregunta: pregunta3.
	user likePregunta: pregunta3.
	user dislikeRespuesta: r1.
	sistema borrarPregunta: pregunta3.
	self assert: (sistema preguntas includes: pregunta2) equals: true.
	self assert: (sistema preguntas includes: pregunta3) equals: false.
	self assert: (sistema respuestas includes: r1) equals: false.
	self assert: (sistema puntajeUsuario: user) equals: 0