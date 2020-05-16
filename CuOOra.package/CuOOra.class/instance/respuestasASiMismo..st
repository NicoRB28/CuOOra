behavior
respuestasASiMismo: unUsuario
	^ ((self preguntasDeUsuario: unUsuario)
		flatCollect: [ :p | p misRespuestas ])
		select: [ :e | e meCreo: unUsuario ]