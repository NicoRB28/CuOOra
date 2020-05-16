accessing
respuestasUsuario: unUsuario
	^ (preguntas flatCollect: [ :p | p misRespuestas ])
		select: [ :r | r meCreo: unUsuario ]