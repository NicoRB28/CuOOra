deleting
borrarPregunta: unaPregunta
	self borrarCalificacionPregunta: unaPregunta.
	self borrarRespuestasPregunta: unaPregunta.
	preguntas remove: unaPregunta