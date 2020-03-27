behavior
RegistrarTopico: unTopico paraUsuario: unUsuario
	(self existeUsuario: unUsuario)
		ifTrue: [ unUsuario registrarTopico: unTopico ]