tests
testBorrarPregunta
	|dislike like pregunta3 |
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
	
	like := Calificacion likeConUsuario: usuario1.
	pregunta3 registrarLike: like.
	dislike := Calificacion dislikeConUsuario: usuario1.
	respuesta1 registrarDisLike: dislike.
	sistema borrarPregunta: pregunta3.
	self assert: (sistema preguntas includes: pregunta2) equals: true.
	self assert: (sistema preguntas includes: pregunta3) equals: false.
	self assert: (sistema puntajeUsuario: usuario1) equals: 0