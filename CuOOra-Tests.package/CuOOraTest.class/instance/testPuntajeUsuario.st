tests
testPuntajeUsuario
	| usuario3 pregunta3 |
	usuario1 := sistema crearUsuario: 'Ana' contraseña: '111'.
	usuario3 := sistema crearUsuario: 'Pepe' contraseña: '222'.
	
	pregunta1 := sistema crearPregunta: 'que puedo leer?' descripcion: 'cualquier genero' topico: topico1 usuario: usuario1.
	respuesta1 := sistema crearRespuesta: 'quiero algo corto' usuario: usuario1 pregunta: pregunta1.
	respuesta2 := sistema crearRespuesta: 'Me muero por ir al cielo' usuario: usuario3 pregunta: pregunta1.
	
	usuario3 likePregunta: pregunta1.
	usuario3 likeRespuesta: respuesta1.
	usuario1 dislikeRespuesta: respuesta2.
	
	self assert: (sistema puntajeUsuario: usuario1) equals: 22.
	self assert: (sistema puntajeUsuario: usuario3) equals: 49.