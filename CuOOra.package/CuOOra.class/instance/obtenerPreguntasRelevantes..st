behavior
obtenerPreguntasRelevantes: unUsuario
	^ (preguntas select: [ :each | unUsuario esRelevante: each ])
		asSortedCollection: [ :a :b | a creacion > b creacion ]