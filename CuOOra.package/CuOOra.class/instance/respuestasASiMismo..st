behavior
respuestasASiMismo: unUsuario
	| respAPregUser respUserAPregUser |
	respAPregUser := (self preguntasDeUsuario: unUsuario) flatCollect: [ :p | p misRespuestas ].
	respUserAPregUser := respAPregUser select: [ :e | e meCreo: unUsuario ].
	
	^ respUserAPregUser