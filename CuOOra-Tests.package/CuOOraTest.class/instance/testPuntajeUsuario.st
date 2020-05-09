tests
testPuntajeUsuario
	| like dislike usuario3 |
	usuario1 := Usuario nombreUsuario: 'Ana' contraseña: '111'.
	usuario3 := Usuario nombreUsuario: 'Pepe' contraseña: '222'.
	pregunta1 := Pregunta
		conTitulo: 'que puedo leer?'
		descripcion: 'cualquier genero'
		topico: (OrderedCollection with: topico1)
		usuario: usuario1.
	sistema agregarPregunta: pregunta1.
	respuesta1 := Respuesta
		conTexto: 'quiero algo corto'
		yUsuario: usuario1.
	pregunta1 registrarRespuesta: respuesta1.
	respuesta2 := Respuesta
		conTexto: 'Me muero por ir al cielo'
		yUsuario: usuario3.
	pregunta1 registrarRespuesta: respuesta2.
	like := Calificacion likeConUsuario: usuario3.
	pregunta1 registrarLike: like.
	respuesta1 registrarLike: like.
	dislike := Calificacion dislikeConUsuario: usuario1.
	respuesta2 registrarDisLike: dislike.
	self assert: (sistema puntajeUsuario: usuario1) equals: 22 .
	self assert: (sistema puntajeUsuario: usuario3) equals: 49