as yet unclassified
crearPregunta: unTitulo  descripcion: unaDescripcion topico: unTopico usuario: unUsuario 
	|preg|
	preg := Pregunta conTitulo: unTitulo descripcion: unaDescripcion topico: unTopico usuario: unUsuario.
	preguntas add: (preg).
	^preg.