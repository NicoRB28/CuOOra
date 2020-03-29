as yet unclassified
testpuntajePreguntasHechas
	| pregunta3 |
	usuario1 := sistema crearUsuario: 'usuario1' contraseña: '111'.
	pregunta3 := sistema
		crearPregunta: 'que puedo leer?'
		descripcion: 'cualquier genero'
		topico: topico1
		usuario: usuario1.
	pregunta1 := sistema
		crearPregunta: 'qué les pareció el final de harry potter?'
		descripcion: 'lo odiaron tanto como yo?'
		topico: topico1
		usuario: usuario1.
	self assert: (sistema puntajePreguntasHechas: usuario1) equals: 40