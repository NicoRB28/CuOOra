behavior
puntajeRespuestasHechas: unUsuario
	| respAPregUser respUserAPregUser respTotales|
	
	respTotales := self respuestasUsuario: unUsuario.
	(respTotales isEmpty) ifTrue: [ ^0 ].
	
	respAPregUser := (self preguntasDeUsuario: unUsuario) flatCollect: [ :p | p misRespuestas ].
	
	respUserAPregUser := respAPregUser select: [ :e | e meCreo: unUsuario ].
	
	^( (respTotales sumNumbers: [ :resp | resp puntaje ]) - (respUserAPregUser sumNumbers: [:respuesta | respuesta puntaje]) )
	