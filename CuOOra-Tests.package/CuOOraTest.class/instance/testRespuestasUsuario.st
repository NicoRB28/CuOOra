tests
testRespuestasUsuario

	sistema agregarUsuario: usuario1.
	
	sistema agregarPregunta: pregunta1.
	pregunta1 registrarRespuesta: respuesta1.
	pregunta1 registrarRespuesta: respuesta2.
	



	self assert: (sistema respuestasUsuario: usuario1)size equals: 1.
	self assert: ((sistema respuestasUsuario: usuario2) includes: respuesta1)equals:true.
	self deny: ( (sistema respuestasUsuario: usuario2) includes: respuesta2 )equals:true.
	self assert: ((sistema respuestasUsuario: usuario1) includes: respuesta2)equals:true.
	self deny: ( (sistema respuestasUsuario: usuario1) includes: respuesta1 )equals:true.