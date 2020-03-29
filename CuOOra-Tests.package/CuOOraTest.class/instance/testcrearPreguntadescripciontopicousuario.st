as yet unclassified
testcrearPreguntadescripciontopicousuario
	pregunta1 := sistema crearPregunta: 'que hacer hoy?' descripcion: 'planes' topico: topico1 usuario: usuario2. 
	
	self assert: pregunta1 titulo equals: 'que hacer hoy?'.
	self assert: pregunta1 descripcion equals: 'planes'.
	self assert: pregunta1 topicos equals: topico1. 
	self assert: sistema preguntas size equals: 1.