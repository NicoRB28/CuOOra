behavior
puntajeRespuestasHechas: unUsuario
	| respPregUser respUserPU respTotales|
	respTotales := self respuestasUsuario: unUsuario.
	(respTotales isEmpty) ifTrue: [ ^0 ].
	respPregUser := (self preguntasDeUsuario: unUsuario)
		flatCollect: [ :p | p misRespuestas ].
	respUserPU := respPregUser select: [ :e | e meCreo: unUsuario ].
	^ (respTotales  size - respUserPU size) * 50