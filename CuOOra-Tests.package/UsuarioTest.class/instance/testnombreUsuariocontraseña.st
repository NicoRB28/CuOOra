tests
testnombreUsuariocontraseña
	| usr |
	usr := Usuario new.
	usr nombreUsuario: 'Apu' contraseña: 'Kwik-E-Market'.
	self assert: usr miNombre equals: 'Apu'.
	self assert: usr contraseña equals: 'Kwik-E-Market'