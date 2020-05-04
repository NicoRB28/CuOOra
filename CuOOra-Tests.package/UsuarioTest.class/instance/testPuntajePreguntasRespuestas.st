as yet unclassified
testPuntajePreguntasRespuestas
	|preguntas respuestas|
	preguntas := OrderedCollection new.
	preguntas add: pregunta.
	respuestas := OrderedCollection new.
	respuestas add: respuesta.
	
	self assert: (usuario puntajePreguntas: preguntas Respuestas: respuestas ) equals: (pregunta miCalificacionTotal  + respuesta miCalificacionTotal )