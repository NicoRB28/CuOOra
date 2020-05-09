initialization
testAgregarPregunta

	sistema agregarPregunta: pregunta1.
	
	self assert: ((sistema preguntas)includes: pregunta1) equals: true.