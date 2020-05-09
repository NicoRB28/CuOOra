tests
testBorrarPregunta


	
	pregunta1	registrarRespuesta: respuesta1.
	pregunta2 registrarRespuesta: respuesta2.
	
	pregunta1 registrarLike: (Calificacion likeConUsuario: usuario1).
	pregunta1 registrarLike:(Calificacion likeConUsuario:usuario2).
	
	pregunta2 registrarDisLike: (Calificacion dislikeConUsuario: usuario1).

	respuesta1 registrarDisLike: (Calificacion likeConUsuario: usuario2).
	
	sistema agregarPregunta: pregunta1.
	sistema agregarPregunta: pregunta2.
	sistema borrarPregunta: pregunta1.
	
	self assert: (sistema preguntas includes: pregunta2) equals: true.
	self assert: (sistema preguntas includes: pregunta1) equals: false.
	self assert: ((sistema obtenerRespuestas: usuario2)includes: respuesta1) equals: false.