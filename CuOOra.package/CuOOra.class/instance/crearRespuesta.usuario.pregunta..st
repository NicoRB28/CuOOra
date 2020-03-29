creating
crearRespuesta: unTexto usuario: unUsuario pregunta: unaPregunta
	|rta|
	rta := Respuesta conTexto: unTexto yUsuario: unUsuario.
	(preguntas includes: unaPregunta)
		ifTrue: [ 
			respuestas add: rta.
			unaPregunta registrarRespuesta: rta.
			].
		^ rta 