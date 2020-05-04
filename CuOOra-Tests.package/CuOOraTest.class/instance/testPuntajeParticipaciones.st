as yet unclassified
testPuntajeParticipaciones
	|like like2 dislike dislike2 pregunta3|
	usuario1 := sistema crearUsuario: 'Juan' contraseña: '112358'.
	usuario2 := sistema crearUsuario: 'Ana' contraseña: '1357'.
	pregunta1 := sistema crearPregunta: 'Me recomiendan libros de terror?' descripcion: 'cuentos o novelas' topico: topico1  usuario: usuario1.
	respuesta1 := sistema crearRespuesta: 'quiero leer algo corto' usuario: usuario1 pregunta: pregunta1.
	pregunta3 := sistema crearPregunta: 'Mejor libro de harry potter?' descripcion: 'solo por el libro, no la peli'  topico: topico1 usuario: usuario2.
	like := Calificacion likeConUsuario: usuario2.
	pregunta1 registrarLike: like.
	like2 := Calificacion likeConUsuario: usuario1.
	pregunta1 registrarLike: like2.
	dislike := Calificacion dislikeConUsuario: usuario1. 
	respuesta1 registrarDisLike: dislike.
	dislike2 := Calificacion dislikeConUsuario: usuario2.
	pregunta3 registrarDisLike: dislike2.
	
	self assert: (sistema puntajeParticipaciones: usuario1) equals: (pregunta1 miCalificacionTotal + respuesta1 miCalificacionTotal).
	self assert: (sistema puntajeParticipaciones: usuario2) equals: pregunta3 miCalificacionTotal.