tests
testRegistrarRespuesta

	|pregunta  rtaRegistrada rtaNoRegistrada|
	
	rtaRegistrada := Respuesta conTexto: 'no se' yUsuario: usuario.
	rtaNoRegistrada := Respuesta conTexto: 'porque si' yUsuario: usuario2.
	
	pregunta := Pregunta conTitulo: '¿donde comprar en tiempos de pandemia?' descripcion:'confirmada la nueva pelicula de tarantino'  topico: topico  usuario: 	usuario.
	
	pregunta registrarRespuesta: rtaRegistrada .
	
	self assert: (pregunta misRespuestas includes: rtaRegistrada ) equals: true.
	self deny: (pregunta misRespuestas includes:rtaNoRegistrada ) equals: true. 
	
	
	