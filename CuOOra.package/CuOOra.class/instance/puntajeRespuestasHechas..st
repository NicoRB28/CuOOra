behavior
puntajeRespuestasHechas: unUsuario
	| respPregUser respUserPU |
	respPregUser := (self preguntasDeUsuario: unUsuario)
		flatCollect: [ :p | p misRespuestas ].
	respUserPU := respPregUser select: [ :e | e meCreo: unUsuario ].
	^ (respPregUser size - respUserPU size) * 50