as yet unclassified
testpuntajeRespuestasHechas
	|respuesta3 usuario3|
	usuario1:= sistema crearUsuario: 'Juan' contraseña: 'BokitaElMasGrande'. 
	usuario3:= sistema crearUsuario: 'Pepi' contraseña: 'Pepito12'. 
	pregunta1 := sistema crearPregunta: 'Me recomiendan libros de terror?' descripcion: 'cuentos o novelas' topico: topico1  usuario: usuario3. 
	respuesta1 := sistema crearRespuesta: 'quiero leer algo corto' usuario: usuario3 pregunta: pregunta1.
	respuesta3 := sistema crearRespuesta: 'Se me ocurre Somnifobia' usuario: usuario1  pregunta: pregunta1.
	self assert: (sistema puntajeRespuestasHechas: usuario1) equals: 50.
	self assert: (sistema puntajeRespuestasHechas: usuario3) equals: 0.
