accessing
respuestasUsuario: unUsuario
	|respuestasT|
	respuestasT := preguntas flatCollect: [ :p | p misRespuestas ].
	^ (respuestasT select: [ :r | r meCreo: unUsuario])