accessing
preguntasDeUsuario: unUsuario
	^ preguntas select: [ :each | each meCreo: unUsuario ] 