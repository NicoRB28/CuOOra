tests
testCrearUsuariocontraseña
	usuario1 := sistema crearUsuario: 'usuario1' contraseña: '111'.
	self assert: usuario1 miNombre equals: 'usuario1'.
	self assert: usuario1 contraseña equals: '111'.
	self assert: (sistema usuarios) size equals: 1.