as yet unclassified
testpreguntasDeUsuario
	| pregunta3 |
	usuario1 := sistema crearUsuario: 'usuario1' contraseña: '111'.
	pregunta3 := sistema
		crearPregunta: 'que puedo leer?'
		descripcion: 'cualquier genero'
		topico: topico1
		usuario: usuario1.
	self
		assert: ((sistema preguntasDeUsuario: usuario1) includes: pregunta3)
		equals: true.
	self deny: ((sistema preguntasDeUsuario: usuario1) includes: pregunta2)
		equals: true.