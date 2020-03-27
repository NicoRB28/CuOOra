behavior
obtenerPreguntasRelevantes: unUsuario
	^ preguntas select: [ :each | unUsuario esRelevante: each ]