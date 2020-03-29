tests
testRegistrarTopicoparaUsuario
	
	usuario1 := sistema crearUsuario: 'Pepi' contraseña: '222'.
	sistema RegistrarTopico: topico1 paraUsuario: usuario1.  
	
	self assert: (usuario1 misTopicos includes: topico1 ) equals: true.