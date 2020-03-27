creating
crearRespuesta: unTexto usuario: unUsuario pregunta: unaPregunta
	(preguntas includes: unaPregunta)
		ifTrue: [ | rta |
			rta := Respuesta conTexto: unTexto yUsuario: unUsuario.
			respuestas add: rta.
			unaPregunta registrarRespuesta: rta.
			^ rta ]