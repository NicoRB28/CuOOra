creating
crearPregunta: unTitulo descripcion: unaDescripcion topico: topics usuario: unUsuario
	| preg |
	preg := Pregunta 
		conTitulo: unTitulo 
		descripcion: unaDescripcion 
		topico: topics 
		usuario: unUsuario.
	preguntas add: preg.
	^ preg