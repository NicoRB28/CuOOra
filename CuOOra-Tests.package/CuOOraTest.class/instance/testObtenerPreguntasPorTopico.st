as yet unclassified
testObtenerPreguntasPorTopico

	sistema agregarPregunta: pregunta1.
	
	
	self assert: ((sistema obtenerPreguntasPorTopico: topico1 )includes:pregunta1) equals: true.
	self assert:((sistema obtenerPreguntasPorTopico: topico1 )size) equals:1.
	self assert:((sistema obtenerPreguntasPorTopico: topico2)size)equals:0.
	self deny:((sistema obtenerPreguntasPorTopico: topico1)includes:pregunta2)equals:true.