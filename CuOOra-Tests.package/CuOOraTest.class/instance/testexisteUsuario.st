as yet unclassified
testexisteUsuario

	usuario1 := sistema crearUsuario: 'pepi' contraseña: '111'.
	
	self assert: (sistema usuarios includes: usuario1) equals: true.
	self assert: (sistema usuarios includes: usuario2) equals: false.