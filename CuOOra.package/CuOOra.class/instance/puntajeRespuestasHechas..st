behavior
puntajeRespuestasHechas: unUsuario
	| respAPregUser respUserAPregUser respTotales |
	respTotales := self respuestasUsuario: unUsuario.
	respAPregUser := (self preguntasDeUsuario: unUsuario) flatCollect: [ :p | p misRespuestas ].
	respUserAPregUser := respAPregUser select: [ :e | e meCreo: unUsuario ].
	
	^ unUsuario puntajeRespuestasTotales: respTotales Hechas: respUserAPregUser