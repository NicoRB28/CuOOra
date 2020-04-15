tests
testBorrarCalificacionPregunta
	usuario1 := sistema crearUsuario: 'user1' contraseña: '123'.
	usuario1 dislikePregunta: pregunta2.
	usuario2 likePregunta: pregunta2.
	sistema borrarCalificacionPregunta: pregunta2.
	
	self assert: pregunta2 misLikesTotales equals: 0.
	self assert: pregunta2 misDislikesTotales equals: 0