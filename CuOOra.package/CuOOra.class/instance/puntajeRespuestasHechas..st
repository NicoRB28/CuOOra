behavior
puntajeRespuestasHechas: unUsuario
	| respPregUser respUserPU respTotales|
	respTotales := self respuestasUsuario: unUsuario.
	respPregUser := (self preguntasDeUsuario: unUsuario)
		flatCollect: [ :p | p misRespuestas ].
	respUserPU := respPregUser select: [ :e | e meCreo: unUsuario ].
	^ (respTotales  size - respUserPU size) * 50