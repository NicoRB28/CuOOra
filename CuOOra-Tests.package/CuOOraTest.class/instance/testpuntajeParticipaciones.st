as yet unclassified
testpuntajeParticipaciones
	|pregunta3|
	usuario1 := sistema crearUsuario: 'Juan' contraseña: '112358'.
	usuario2 := sistema crearUsuario: 'Ana' contraseña: '1357'.
	pregunta1 := sistema crearPregunta: 'Me recomiendan libros de terror?' descripcion: 'cuentos o novelas' topico: topico1  usuario: usuario1.
	respuesta1 := sistema crearRespuesta: 'quiero leer algo corto' usuario: usuario1 pregunta: pregunta1.
	pregunta3 := sistema crearPregunta: 'Mejor libro de harry potter?' descripcion: 'solo por el libro, no la peli'  topico: topico1 usuario: usuario2.
	
	usuario2 likePregunta: pregunta1.
	usuario1 likePregunta: pregunta1.
	usuario2 dislikeRespuesta: respuesta1.
	usuario1 dislikePregunta: pregunta3.
	
	self assert: (sistema puntajeParticipaciones: usuario1) equals: 1.
	self assert: (sistema puntajeParticipaciones: usuario2) equals: -1.