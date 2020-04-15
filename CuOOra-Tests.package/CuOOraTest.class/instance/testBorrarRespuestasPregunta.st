tests
testBorrarRespuestasPregunta
	respuesta1:=	sistema crearRespuesta: 'No lo conozco' usuario: usuario2  pregunta: pregunta2.
	
	sistema borrarRespuestasPregunta: pregunta2.
	
	self assert: ((pregunta2 misRespuestas) includes: respuesta1) equals: false.
	self assert: ((sistema respuestas) includes: respuesta1) equals: false.