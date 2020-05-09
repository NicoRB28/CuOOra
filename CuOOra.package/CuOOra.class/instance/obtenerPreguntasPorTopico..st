behavior
obtenerPreguntasPorTopico: unTopico

	
	^ preguntas select: [ :each | each tengoTopico: unTopico ]