as yet unclassified
testCrearPreguntaDescripcionTopicoUsuario
	pregunta1 := sistema crearPregunta: 'que hacer hoy?' descripcion: 'planes' topico: topico1 usuario: usuario2. 
	
	self assert: pregunta1 titulo equals: 'que hacer hoy?'.
	self assert: pregunta1 descripcion equals: 'planes'.
	self assert: pregunta1 topicos equals: topico1. 
	self assert: (sistema preguntas includes: pregunta1 )