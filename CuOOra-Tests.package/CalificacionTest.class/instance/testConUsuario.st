tests
testConUsuario
	calificacion conUsuario: 'Pepe'.
	self assert: calificacion miCreadorEs equals: 'Pepe'