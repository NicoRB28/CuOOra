deleting
BorrarPregunta: unaPregunta
	(preguntas includes: unaPregunta)
		ifTrue: [ | rtas |
			rtas := self obtenerRespuestas: unaPregunta.
			rtas removeAll.
			preguntas remove: unaPregunta ]