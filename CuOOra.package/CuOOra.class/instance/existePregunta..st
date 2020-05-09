accessing
existePregunta: unaPregunta
	^ preguntas anySatisfy: [ :preg | preg == unaPregunta ]