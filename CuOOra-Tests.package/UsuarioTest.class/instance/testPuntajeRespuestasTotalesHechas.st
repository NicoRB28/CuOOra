tests
testPuntajeRespuestasTotalesHechas
	|respuestasTotales respuestasPropias resp|
	respuestasTotales := OrderedCollection new.
	respuestasTotales add: respuesta.
	
	respuestasPropias := OrderedCollection new.
	self assert: (usuario puntajeRespuestasTotales: respuestasTotales Hechas: respuestasPropias ) equals: (respuesta puntaje).
	
	resp := Respuesta conTexto: 'me respondo' yUsuario: usuario.
	respuestasPropias add: resp.
	respuestasTotales add: resp.
	
	self assert: (usuario puntajeRespuestasTotales: respuestasTotales Hechas: respuestasPropias ) equals: (respuesta puntaje)