as yet unclassified
testPreguntasDeUsuario

	sistema agregarUsuario: usuario1.
	sistema agregarPregunta: pregunta1.
	self
		assert: ((sistema preguntasDeUsuario: usuario1) includes: pregunta1)
		equals: true.
	self deny: ((sistema preguntasDeUsuario: usuario1) includes: pregunta2)
		equals: true.