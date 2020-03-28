tests
testEsMiCreador
	|usr cuOOra|
	cuOOra := CuOOra new.
	usr := cuOOra crearUsuario: 'Pepe' contraseña: '123'. 
	calificacion conUsuario: usr.
	self assert: (calificacion esMiCreador: usr) equals: true